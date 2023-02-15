%% ---------------------------------------------------------------------------
%% Part of Prolog zwap.
%%
%% Author:        Jens Kallup - paule32
%% E-mail:        paule32.jk@gmail.com
%% WWW:           http://
%% Copyright (c)  2005-2023, DIAKO West-Thueringen
%%                           kallup non-profit
%% All rights reserved.
%% ---------------------------------------------------------------------------

:- module(zwap,[
		zwap_init/0
   ]).

%% ---------------------------------------------------------------------------
%% Entry Point init. jump
%% ---------------------------------------------------------------------------
:- initialization(main, main).

zwap_init :-
	load_foreign_library(foreign(zwapwin64)).
	%%show_message("Title of Box", "This is the text information.").

%% ---------------------------------------------------------------------------
%% main stream entry point ...
%% ---------------------------------------------------------------------------
main(Argv) :-
	writeln(Argv),
	zwap_init.
