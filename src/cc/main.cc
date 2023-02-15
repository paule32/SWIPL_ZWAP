// -----------------------------------------------------------------------
// File:   SWIPL-ZWAPL main.cc
//
// Author: Jens Kallup - paule32 <paule32.jk@gmail.com>
// Rights: (c) 2023 kallup non-profit.
//
// notice: each term: t0, t0 + 1, t0 + n, ...
// -----------------------------------------------------------------------
# include <iostream>
# include "prolog.h"

using namespace std;

#ifdef __WINDOWS__
HINSTANCE   zwap_mod_handle;      // external Delphi 7 32-Bit DLL

LPCSTR      inline get_zwap_name  () { return TEXT("zwapwin32vcl.dll");  }
HINSTANCE   inline get_zwap_handle() { return zwap_mod_handle; }
#else
void*       zwap_mod_handle;      // external Lazarus 32-Bit DLL

const char* inline get_zwap_name  () { return "zwap_laz.so";   }
void*       inline get_zwap_handle() { return zwap_mod_handle; }
#endif

typedef void (*__stdcall ref_show_message)(char*, char*);

typedef struct zwap_funcs {
	ref_show_message show_message;
}
zwap_funcs;
zwap_funcs zwap_func;

// -------------------------------------------------------------------
// @brief initialize the external vcl procedure's, and function's ...
// -------------------------------------------------------------------
static void
init_stuff(void)
{
	#ifdef __WINDOWS__
	zwap_func.show_message = (ref_show_message)GetProcAddress(get_zwap_handle(),"vcl_show_message");
	
	char* buffer = new char[100];
	sprintf(buffer,"addr: 0x%x",zwap_func.show_message);
	
	MessageBox(NULL,
	buffer, "Warning",
	MB_OK | MB_TASKMODAL);
	
	# else
	# define gui_func(name) dlsym(get_zwap_handle(),name)
	#endif
}

// -----------------------------------------------------------------------
// simply a test ...
// -----------------------------------------------------------------------
static foreign_t
pl_show_message(term_t a0, int arity, void *context)
{
	char *t_title;
	char *t_text;

	size_t len;

	if (PL_get_string(a0, &t_title, &len)) {
		if (PL_get_string(a0+1, &t_text, &len)) {
			zwap_func.show_message(t_title, t_text);
			return PL_succeed();
		}
	}
	return PL_fail();
}

// -----------------------------------------------------------------------
// @brief This function register the used predicate's that come with this
//        library. You have to use it unmangled (extern "C"). Because
//        SWIPL search for native C names: install_zwap(), then zwap().
// -----------------------------------------------------------------------
extern "C" install_t
install_zwapwin64()
{
	PL_register_foreign(
		"show_message",2,
		reinterpret_cast<void*>(pl_show_message),
		PL_FA_VARARGS);
}

// -----------------------------------------------------------------------
// @brief under newer Windows Operation Systems, the entry point for DLL
//        files is DllMain.
// -----------------------------------------------------------------------
#ifdef __WINDOWS__
BOOL WINAPI
DllMain(
	HINSTANCE hInstDLL,     // handle to DLL module
	DWORD     fwReason,     // reason for calling function
	LPVOID    lpReserved) { // reserved

	switch (fwReason) {
		case DLL_PROCESS_ATTACH:	// initialize once for each new process
			zwap_mod_handle = LoadLibrary(get_zwap_name());
			if (zwap_mod_handle == NULL) {
				char* buffer = new char[2048];
				sprintf(buffer,
				"could not open library:\n%s\nLoading aborted\n"
				"Windows Error: %d",
				get_zwap_name(), GetLastError());

				MessageBox(NULL,
				buffer, "Warning",
				MB_OK | MB_TASKMODAL);

				delete buffer;
				return FALSE;
			}
			init_stuff();
		break;
		case DLL_THREAD_ATTACH:		// do thread-specific initialization
		break;
		case DLL_THREAD_DETACH: 	// di thread-specific cleanup
		break;
		case DLL_PROCESS_DETACH:	// perform any necassary cleanu
			if (!FreeLibrary(get_zwap_handle())) {
				char* buffer = new char[2048];
				sprintf(buffer,
				"could not close library handle: 0x%x.\n(%s)\n"
				"Windows Error-Code: %d",
				get_zwap_handle(),
				get_zwap_name(),
				GetLastError());

				MessageBox(NULL,
				buffer, "Warning",
				MB_OK | MB_TASKMODAL);

				delete buffer;
				return FALSE;
			}
		break;
	}
	
	return TRUE;
}
#else
// -----------------------------------------------------------------------
// @brief library entry point / initialize stuff ...
// -----------------------------------------------------------------------
void __attribute__ ((constructor)) my_init(void)
{
	if (!(zwap_mod_handle = dlopen("zwap.so", RTLF_LAZY))) {
		fputs(dlerror(), stderr);
		exit(1);
	}
}

// -----------------------------------------------------------------------
// @brief library clean up stuff ...
// -----------------------------------------------------------------------
void __attribute__ ((destructor)) my_fini(void)
{
	dlclose(get_zwap_handle());
}
#endif
