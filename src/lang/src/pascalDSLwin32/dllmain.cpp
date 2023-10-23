// ----------------------------------------------------------------------------
// File   : pascalDllMain.cc
// Author : Jens Kallup (c) 2023-07.01
// License: all rights reserved.
// ----------------------------------------------------------------------------
# include "..\common.h"

BOOL   dll_has_error      = FALSE;
HANDLE dll_handle         = NULL;
int    dll_thread_counter = 0;

// ----------------------------------------------------------------------------
// set signal handling (mainly used under *nix operating systems or CRT ...
// ----------------------------------------------------------------------------
void signal_handler(int signal_num)
{
    char attempt[] = "Attempt";
    char * buffer  = (char*) malloc(512);

    if (signal_num == SIGUSR1) {
        std::sprintf( buffer, "%s\n%s",
        "recieved SIGUSR1",
        attempt);
    }	else
    if (signal_num == SIGABRT) {
        std::sprintf( buffer, "%s\n%s",
        "recieved SIGABRT",
        attempt);
    }   else
    if (signal_num == SIGILL) {
        std::sprintf( buffer, "%s\n%s",
        "recieved SIGILL",
        attempt);
    }	else
    if (signal_num == SIGINT) {
        std::sprintf( buffer, "%s\n%s",
        "recieved SIGINT",
        attempt);
    }   else
    if (signal_num == SIGSEGV) {
        std::sprintf( buffer, "%s\n%s",
        "recieved SIGSEGV",
        attempt);
    }	else
    if (signal_num == SIGTERM) {
        std::sprintf( buffer, "%s\n%s",
        "recieved SIGTERM",
        attempt);
    }
    yyerror( buffer );
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
            std::signal( SIGUSR1, signal_handler );
            std::signal( SIGABRT, signal_handler );
            std::signal( SIGILL , signal_handler );
            std::signal( SIGINT , signal_handler );
            std::signal( SIGSEGV, signal_handler );
            std::signal( SIGTERM, signal_handler );

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
            ptr_parser_dll_plugin->path = (char*) malloc( MAX_PATH );
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

            // ---------------------------------------------
            // tokenizer enum tokens
            // ---------------------------------------------
            globsl_tt_type[ tt_illegal       ] = "illegal";
            globsl_tt_type[ tt_root          ] = "root";

            globsl_tt_type[ tt_const_number  ] = "const number";
            globsl_tt_type[ tt_const_ident   ] = "const ident";
            globsl_tt_type[ tt_const_string  ] = "const string";

            globsl_tt_type[ tt_term          ] = "term";

            globsl_tt_type[ tt_expr_sub      ] = "expr sub";
            globsl_tt_type[ tt_expr_add      ] = "expr add";
            globsl_tt_type[ tt_expr_mul      ] = "expr mul";
            globsl_tt_type[ tt_expr_div      ] = "expr div";

            globsl_tt_type[ tt_term_sub      ] = "term sub";
            globsl_tt_type[ tt_term_add      ] = "term add";
            globsl_tt_type[ tt_term_mul      ] = "term mul";
            globsl_tt_type[ tt_term_div      ] = "term div";

            globsl_tt_type[ tt_factor        ] = "factor";

            globsl_tt_type[ tt_factor_number ] = "factor number"; // number   factor
            globsl_tt_type[ tt_factor_term   ] = "factor term";   // term
            globsl_tt_type[ tt_factor_neg    ] = "factor neg";    // negative factor
            globsl_tt_type[ tt_factor_paren  ] = "factor paren";  // factor in paren

            globsl_tt_type[ tt_factor_sub    ] = "factor sub";    // -
            globsl_tt_type[ tt_factor_add    ] = "factor add";    // +
            globsl_tt_type[ tt_factor_mul    ] = "factor mul";    // *
            globsl_tt_type[ tt_factor_div    ] = "factor div";    // /

            globsl_tt_type[ tt_ident_assign  ] = "ident assign";  // :=


            globsl_tt_type[ tt_end_of_list   ] = "end of list";

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

            rootNodes.clear();
            
            // ---------------------------------------------
            // after all is done, and the dll will be unload
            // and no crash was detected, then the flag here
            // is set tu FALSE (no error'sÄ ...
            // ---------------------------------------------
            dll_has_error = FALSE;
        }
        break;
    }
    return TRUE;
}

