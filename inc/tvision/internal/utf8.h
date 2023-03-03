#ifndef TVISION_UTF8_H
#define TVISION_UTF8_H

#include <internal/strings.h>

#include <array>
#include <stdint.h>
#include <string.h>

namespace tvision
{

inline constexpr uint Utf8BytesLeft(char first_byte) noexcept
{
    // https://en.wikipedia.org/wiki/UTF-8
    return (first_byte & 0b11100000) == 0b11000000 ? 1 : \
           (first_byte & 0b11110000) == 0b11100000 ? 2 : \
           (first_byte & 0b11111000) == 0b11110000 ? 3 : 0;
}

template<size_t N>
inline std::array<uint32_t, N> make_utf8int(const TStringView utf8[N]) noexcept
{
    std::array<uint32_t, N> result {};
    for (size_t i = 0; i < N; ++i)
        result[i] = string_as_int<uint32_t>(utf8[i]);
    return result;
}

inline constexpr uint32_t utf8To32(TStringView s) noexcept
{
    // Precondition: s is a valid UTF-8 sequence.
    switch (s.size()) {
        case 1:
            return s[0];
        case 2:
            return ((s[0] & 0b00011111) << 6)  |  (s[1] & 0b00111111);
        case 3:
            return ((s[0] & 0b00001111) << 12) | ((s[1] & 0b00111111) << 6)  |  (s[2] & 0b00111111);
        case 4:
            return ((s[0] & 0b00001111) << 18) | ((s[1] & 0b00111111) << 12) | ((s[2] & 0b00111111) << 6) | (s[3] & 0b00111111);
    }
    return 0;
}

inline size_t utf32To8(uint32_t u, char utf8[4]) noexcept
{
    union {
        uint8_t asChars[4] {0};
        uint32_t asInt;
    };
    if (u <= 0x007F) {
        memcpy(&utf8[0], &u, 4);
        return 1;
    } else if (u <= 0x07FF) {
        asChars[1] =  (u        & 0b00111111) | 0b10000000;
        asChars[0] = ((u >> 6)  & 0b00011111) | 0b11000000;
        memcpy(&utf8[0], asChars, 4);
        return 2;
    } else if (u <= 0xFFFF) {
        asChars[2] =  (u        & 0b00111111) | 0b10000000;
        asChars[1] = ((u >> 6)  & 0b00111111) | 0b10000000;
        asChars[0] = ((u >> 12) & 0b00001111) | 0b11100000;
        memcpy(&utf8[0], asChars, 4);
        return 3;
    } else {
        asChars[3] =  (u        & 0b00111111) | 0b10000000;
        asChars[2] = ((u >> 6)  & 0b00111111) | 0b10000000;
        asChars[1] = ((u >> 12) & 0b00111111) | 0b10000000;
        asChars[0] = ((u >> 18) & 0b00000111) | 0b11110000;
        memcpy(&utf8[0], asChars, 4);
        return 4;
    }
}

inline int utf32To16(uint32_t u32, uint16_t u16[2]) noexcept
{
    if (u32 <= 0xFFFF && (u32 < 0xD800 || 0xDFFF < u32))
    {
        u16[0] = uint16_t(u32);
        return 1;
    }
    else if (u32 < 0x10FFFF) // Two surrogates.
    {
        u16[0] = uint16_t(((u32 - 0x10000) >> 10) + 0xD800);
        u16[1] = uint16_t(((u32 - 0x10000) & 0x3FF) + 0xDC00);
        return 2;
    }
    return -1;
}

} // namespace tvision

#endif // TVISION_UTF8_H
