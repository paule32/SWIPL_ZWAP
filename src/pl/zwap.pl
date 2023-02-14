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
	load_foreign_library(foreign(zwap)),
	say_hello("hollywood"),
	load_foreign_library(foreign(zwap)).

%% ---------------------------------------------------------------------------
%% main stream entry point ...
%% ---------------------------------------------------------------------------
main(Argv) :-
	zwap_init.
