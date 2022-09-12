# 💡FT_PRINTF
•This project is pretty straight forward. You will recode printf. You will mainly learn how to use variadic arguments.

•The prototype of ft_printf() is:

```C
int ft_printf(const char *, ...);
```

# ❗️REQUIREMENT 

You have to implement the following conversions:

• %c Prints a single character.

• %s Prints a string (as defined by the common C convention).

• %p The void * pointer argument has to be printed in hexadecimal format.

• %d Prints a decimal (base 10) number.

• %i Prints an integer in base 10.

• %u Prints an unsigned decimal (base 10) number.

• %x Prints a number in hexadecimal (base 16) lowercase format.

• %X Prints a number in hexadecimal (base 16) uppercase format.

• %% Prints a percent sign.

# 👨‍💻Usage


The function is written in C language and thus 
needs the gcc compiler and some standard C libraries to run.

1. Compiling the library

	To compile, clone the repository and run the following inside the folder:

```bash
$make
```

2. Using it in your code

	To use the library functions in your code, simply include its header:

```C
#include "ft_printf.h"
```

	and compile the libftprintf.a library with your files.
