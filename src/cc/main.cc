// -----------------------------------------------------------------------
// File:   SWIPL-ZWAPL main.cc
//
// Author: Jens Kallup - paule32 <paule32.jk@gmail.com>
// Rights: (c) 2023 kallup non-profit.
// -----------------------------------------------------------------------
# include "prolog.h"

using namespace std;

// -----------------------------------------------------------------------
// simply a test ...
// -----------------------------------------------------------------------
static foreign_t
pl_say_hello(term_t to)
{
	char *a;
	size_t len = 4;

	if (PL_get_string(to,&a,&len)) {
		MessageBox(NULL, a, "DLL test",
		MB_OK | MB_TASKMODAL);
		return PL_succeed();
	}	return PL_fail();
}

// -----------------------------------------------------------------------
// @brief This function register the used predicate's that come with this
//        library. You have to use it unmangled (extern "C"). Because
//        SWIPL search for native C names: install_zwap(), then zwap().
// -----------------------------------------------------------------------
extern "C" install_t
install_zwap()
{
	PL_register_foreign(
		"say_hello",1,
		reinterpret_cast<void*>(pl_say_hello),
		0);
}

// -----------------------------------------------------------------------
// @brief under newer Windows Operation Systems, the entry point for DLL
//        files is DllMain.
// -----------------------------------------------------------------------
BOOL WINAPI
DllMain(
	HINSTANCE hInstDLL,     // handle to DLL module
	DWORD     fwReason,     // reason for calling function
	LPVOID    lpReserved) { // reserved

	switch (fwReason) {
		case DLL_PROCESS_ATTACH:	// initialize once for each new process
			MessageBox(NULL,
			"This is a alpha release\n"
			"not for productive use !",
			"Information",
			MB_OK | MB_TASKMODAL);
		break;
		case DLL_THREAD_ATTACH:		// do thread-specific initialization
		break;
		case DLL_THREAD_DETACH: 	// di thread-specific cleanup
		break;
		case DLL_PROCESS_DETACH:	// perform any necassary cleanu
		break;
	}
	
	return TRUE;
}
