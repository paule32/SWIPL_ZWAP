// -----------------------------------------------------------------------
// File:   SWIPL-ZWAPL prolog.h
//
// Author: Jens Kallup - paule32 <paule32.jk@gmail.com>
// Rights: (c) 2023 kallup non-profit.
// -----------------------------------------------------------------------
#define prama once

#ifdef __GNUC__
# include <iostream>
# include <ostream>
# include <cstdint>
# include <cinttypes>
#else
# include <iostream.h>
# include <ostream.h>
# include <cstdint.h>
# include <cinttypes.h>
#endif

# include <string>
# include <list>
# include <iterator>

int inline PL_succeed() { return 0; }
int inline PL_fail   () { return 1; }

# include <windows.h>
# include <SWI/SWI-Prolog.h>

struct Engine
{
	enum { running, halted } status;
	Engine();
	~Engine();
};

extern Engine the_engine;
