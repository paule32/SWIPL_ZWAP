// ----------------------------------------------------------------------------
// File   : utils.cpp
// Author : Jens Kallup (c) 2023-07.01
// License: all rights reserved.
// ----------------------------------------------------------------------------
# include "..\common.h"

// ----------------------------------------------------------------------------
// @brief  convert lower case letters to upper case letters in a given string.
// @param  const std::string& input - The input string.
// @return std::string
// ----------------------------------------------------------------------------
std::string StringToUpperCase(const std::string& input) {
    std::string result = input;
    std::transform(result.begin(), result.end(), result.begin(), ::toupper);
    return result;
}

#include <vcl.h>
#include <stdio.h>

AnsiString
FormatString(
    const AnsiString& input,
    const AnsiString& value)
{
    AnsiString result;
    int i = 1;

    while (i <= input.Length()) {
        if (input[i] == '%' && i + 1 <= input.Length()) {
            if (input[i + 1] == 's') {
                result += value;
                i += 2;
            }
            else if (input[i + 1] == 'd') {
                result += value.ToInt();
                i += 2;
            }
            else if (input[i + 1] == '%') {
                result += '%';
                i += 2;
            }
            else {
                result += input[i];
                i++;
            }
        }
        else {
            result += input[i];
            i++;
        }
    }

    return result;
}
