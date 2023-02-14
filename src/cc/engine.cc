// -----------------------------------------------------------------------
// File:   SWIPL-ZWAPL engine.cc
//
// Author: Jens Kallup - paule32 <paule32.jk@gmail.com>
// Rights: (c) 2023 kallup non-profit.
// -----------------------------------------------------------------------
# include "prolog.h"

using namespace std;

Engine::Engine()
{
	char** argv;
	int    argc = 0;
	argv[argc] = new char[10];
	strcpy(argv[0],"haps");

	if (!PL_initialise(argc, const_cast<char**>(argv))) {
		cout << "fehler" << endl;
		status = halted;
		return;
	}
	cout << "ookkk" << endl;
	status = running;
}

Engine::~Engine()
{
	status = halted;
}