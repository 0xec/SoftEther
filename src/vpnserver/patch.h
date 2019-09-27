#pragma once
#if _MSC_VER>=1900
#include "stdio.h" 
_ACRTIMP_ALT FILE * __cdecl __acrt_iob_func(unsigned);
#ifdef __cplusplus 
extern "C"
#endif 
FILE* __cdecl __iob_func(unsigned i) {
	return __acrt_iob_func(i);
}

#pragma comment(lib, "legacy_stdio_definitions.lib") 

#endif /* _MSC_VER>=1900 */
