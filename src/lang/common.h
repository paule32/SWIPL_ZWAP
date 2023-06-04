#ifndef COMMON_H
#define COMMON_H 1

# include <stdio.h>
# include <string.h>
# include <math.h>
# include <io.h>
# include <sys/types.h>

# define YY_NO_UNISTD_H

#ifndef bool
typedef unsigned char bool;
# undef  false
# undef  true
# define true  0
# define false 1
#endif

extern bool yy_pascal_lex_main(void);

#endif
