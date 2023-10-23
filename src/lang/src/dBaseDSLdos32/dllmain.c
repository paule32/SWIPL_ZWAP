// ----------------------------------------------------------------------------
// File   : dBaseDllMain.cc
// Author : Jens Kallup (c) 2023-07.01
// License: all rights reserved.
// ----------------------------------------------------------------------------
# include "../common.h"

static BOOL   dll_has_error      = FALSE;
static HANDLE dll_handle         = NULL;
static int    dll_thread_counter = 0;

// ----------------------------------------------------------------------------
// set signal handling (mainly used under *nix operating systems or CRT ...
// ----------------------------------------------------------------------------
void signal_handler(int signal_num)
{
	char attempt[] = "Attempt";
	
	if (signal_num == SIGUSR1) {
		MessageBoxA(0,"recieved SIGUSR1",attempt,0);
	}	else
    if (signal_num == SIGABRT) {
		MessageBoxA(0,"recieved SIGABRT",attempt,0);
    }   else
	if (signal_num == SIGILL) {
		MessageBoxA(0,"recieved SIGILL",attempt,0);
	}	else
    if (signal_num == SIGINT) {
		MessageBoxA(0,"recieved SIGINT",attempt,0);
    }   else
    if (signal_num == SIGSEGV) {
		MessageBoxA(0,"recieved SIGSEGV",attempt,0);
    }	else
	if (signal_num == SIGTERM) {
		MessageBoxA(0,"recieved SIGTERM",attempt,0);
	}
}

// ----------------------------------------------------------------------------
// this is the magic "atexit()" callback function, which handle out a crash on
// get the "dll_has_error" flag state ...
// ----------------------------------------------------------------------------
void goodbye(void)
{
	if (dll_has_error) {
		MessageBoxA(0,"a Exiter","Warning",0);
	}	else {
		WaitForSingleObject(dll_handle, INFINITE);
	}
}
static DWORD WINAPI dummy_worker(void *dummy)
{
	dll_thread_counter++;
	while (dll_has_error) {
		Sleep(320);
	}
	dll_thread_counter--;
	return 0;
}
int startThread(void)
{
	int     rc = atexit(&goodbye);
	dll_handle = CreateThread(NULL, 0, &dummy_worker, NULL, 0, NULL);

	// ---------------------------------------------
	// we set TRUE, if the .dll application attempts
	// a crash. We handle the crash with this flag,
	// and check it in the goodbye/atexit funcction:
	// ---------------------------------------------
	dll_has_error = FALSE;

	return rc;
}

int WINAPI DllEntryPoint(
    HINSTANCE hinst,
    unsigned long reason,
    void* lpReserved)
{
    char* path;
    switch (reason) {
        case DLL_PROCESS_ATTACH:
        {
			char error_string[] = "Error";
			char buffer[24]     = "can't catch ";
			int  length;
			int  rc;
			
			// ---------------------------------------------
			// first, we define a goodby "exit" function;
			// ---------------------------------------------
			if ((rc = startThread()) != 0) {
				MessageBoxA(0,"Error in atexit.","Error",0);
				return FALSE;
			}
			
			// ---------------------------------------------
			// native C does not know about TRY CATCH, so we
			// need to setup signal handler's ...
			// ---------------------------------------------
			if (signal(SIGUSR1,signal_handler) == SIG_ERR) {
				strcat(buffer,"SIGUSR1");
				MessageBoxA(0,buffer,error_string,0);
				return FALSE;
			}
			if (signal(SIGABRT,signal_handler) == SIG_ERR) {
				strcat(buffer,"SIGABRT");
				MessageBoxA(0,buffer,error_string,0);
				return FALSE;
			}
			if (signal(SIGILL,signal_handler) == SIG_ERR) {
				strcat(buffer,"SIGILL");
				MessageBoxA(0,buffer,error_string,0);
				return FALSE;
			}
			if (signal(SIGINT,signal_handler) == SIG_ERR) {
				strcat(buffer,"SIGINT");
				MessageBoxA(0,buffer,error_string,0);
				return FALSE;
			}
			if (signal(SIGSEGV,signal_handler) == SIG_ERR) {
				strcat(buffer,"SIGSEGV");
				MessageBoxA(0,buffer,error_string,0);
				return FALSE;
			}
			if (signal(SIGTERM,signal_handler) == SIG_ERR) {
				strcat(buffer,"SIGTERM");
				MessageBoxA(0,buffer,error_string,0);
				return FALSE;
			}

			// ---------------------------------------------
			// check parser.dll version:
			// ---------------------------------------------
			ptr_parser_dll_plugin = (struct parser_dll_plugin  *)
			malloc( sizeof(struct           parser_dll_plugin ));

				ptr_parser_dll_plugin->version  = DBASE__PLUGIN_VERSION;
			if (ptr_parser_dll_plugin->version != DBASE__PLUGIN_VERSION) {
				MessageBoxA(0,"invalid parser.dll version","Error",MB_OK);
				free( ptr_parser_dll_plugin );
				return FALSE;
			}
			
			// ---------------------------------------------
			// get .dll module path + module name...
			// ---------------------------------------------
			ptr_parser_dll_plugin->name = (char*)
			malloc( MAX_PATH );
			GetModuleFileNameA(
				hinst,
				ptr_parser_dll_plugin->name,
				MAX_PATH );
			
			// ---------------------------------------------
			// get .dll path only ...
			// ---------------------------------------------
            ptr_parser_dll_plugin->path = (char*)
			malloc( MAX_PATH );
            GetModuleFileNameA(
				hinst,
				ptr_parser_dll_plugin->path,
				MAX_PATH );
	  
			// ---------------------------------------------
			// strip .dll name:
			// ---------------------------------------------
			strcpy(
	        ptr_parser_dll_plugin->path,strrchr(
			ptr_parser_dll_plugin->path,'\\')) ;
			
	        length =
			ptr_parser_dll_plugin->name -
			ptr_parser_dll_plugin->path + 1;

			ptr_parser_dll_plugin->path[length] = '\0';
            
            data_text = (char*) malloc(4096000); strcpy(data_text,"");
            data_data = (char*) malloc(2048000); strcpy(data_data,"");
        }
        break;
        case DLL_PROCESS_DETACH:
        {
			// ---------------------------------------------
			// try to remove allocated memory on offical
			// position's:
			// ---------------------------------------------
            free ( ptr_parser_dll_plugin->path );
			free ( ptr_parser_dll_plugin->name );

			// ---------------------------------------------
			// after all is done, and the dll will be unload
			// and no crash was detected, then the flag here
			// is set tu FALSE (no error'sÄ ...
			// ---------------------------------------------
			dll_has_error = FALSE;
            free( data_text );
            free( data_data );
        }
        break;
    }
    return TRUE;
}
