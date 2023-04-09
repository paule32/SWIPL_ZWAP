// ---------------------------------------------------------------------
// File:   createLang.cc
// Author: (c) 2023 by Jens Kallup - paule32 - kallup non-profit
//         All rights reserved.
//
// This file would be used, to create the locale binary files for the
// output display messages, that are used in the application.
//
// Format:  Each line in the locale.eng.txt stands for a message.
// Binary:  Each language has it's own locale.eng or locale.deu. It is
//          created, to minimaze the user data in the application
//          executable file.
//
// Command: # createLang.exe locale.eng.txt locale.eng  # for english
// Command: # createLang.exe locale.deu.txt locale.deu  # for german
// ---------------------------------------------------------------------

// ---------------------------------------------------------------------
// standard c header
// ---------------------------------------------------------------------
# include <stdio.h>
# include <stdlib.h>
# include <strings.h>

// ---------------------------------------------------------------------
// c++ header
// ---------------------------------------------------------------------
# include <iostream>
# include <string>
# include <sstream>
# include <vector>

int main(int argc, char **argv)
{
	// check argv - output file ?
	if (argc < 3) {
		fprintf(stderr,"no output, and input file given !");
		fflush (stderr);
		return 1;
	}
	
	// open input text file ....
	FILE *in = fopen(argv[1],"r");
	if (!in) {
		fprintf(stderr,"can not open input file: %s", argv[1]);
		fflush (stderr);
		return 1;
	}
	
	::std::vector< ::std::string > str_data;
	::std::string sid;
	char c;
	while ((c = fgetc(in)) != EOF) {
		if (c == '\n') {
			str_data.push_back(sid);
			sid = "";
			continue;
		}
		sid += c;
	}
	
	::std::cout << "lines: " << str_data.size() << ::std::endl;
	// not needed anymore
	fclose(in);
	
	// open output binary file ...
	FILE *out = fopen(argv[2],"wb");
	if (!out) {
		fprintf(stderr,"can not open output file: %s", argv[2]);
		fflush (stderr);
		return 1;
	}
	
	// header
	uint32_t version = 20230409;
	uint8_t  locaver = 1;
	fwrite(&version, 1, sizeof(uint32_t),out);
	fwrite(&locaver, 1, sizeof(uint8_t ),out);
	
	::std::vector< uint32_t > apos;
	
	for (auto &item: str_data) {
		apos.push_back( item.size() );
	}
	
	// number of items
	uint32_t numi = apos.size();
	fwrite(&numi, 1, sizeof(uint32_t), out);
	
	// position in file + header size
	int fpo = 0;
	for (int i = 0; i < apos.size(); ++i) {
		fpo += ftell(out);
		fpo += apos.at(i);
		fwrite( &fpo, 1, sizeof(uint32_t), out);
	}
	
	// data
	for (auto &item: str_data) {
		fwrite( item.c_str(), 1, item.size(), out);
	}

	fclose(out);
	return 0;
}
