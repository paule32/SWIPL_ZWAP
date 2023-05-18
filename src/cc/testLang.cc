// ---------------------------------------------------------------------
// File:   testLang.cc
// Author: (c) 2023 by Jens Kallup - paule32 - kallup non-profit
//         All rights reserved.
//
// This file would be used, to test the locale binary files for the
// output display messages, that are used in the application.
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
# include <string>

# define ENGLISH 1
# define GERMAN  2

int main(int argc, char **argv)
{
	int app_lang;

	// check argv - output file ?
	if (argc < 2) {
		fprintf(stderr,"no input file given !");
		fflush (stderr);
		return 1;
	}
	
	// open input binary file ....
	FILE *in = fopen(argv[1],"rb");
	if (!in) {
		fprintf(stderr,"can not open input file: %s", argv[1]);
		fflush (stderr);
		return 1;
	}

	// header
	uint32_t version;
	uint8_t  locaver;
	uint16_t numitem;
	
	fread( &version, 1, sizeof(uint32_t), in );
	fread( &locaver, 1, sizeof(uint8_t ), in );
	fread( &numitem, 1, sizeof(uint16_t), in );

	fprintf( stdout, "version: %d\n", version );
	fprintf( stdout, "locaver: %d\n", locaver );
	fprintf( stdout, "numitem: %d\n", numitem );
	
	// check version
	if (version != 20230409) {
		fprintf(stderr,"can not read binary locale.");
		fflush (stderr);
		fclose(in);
		return 1;
	}
	
	// check language
	if (locaver == ENGLISH) { app_lang = ENGLISH; } else
	if (locaver == GERMAN ) { app_lang = GERMAN;  } else {
		fprintf(stderr,"could not get locale language.");
		fflush (stderr);
		fclose(in);
		return 1;
	}

	// if no item found, then do nothing
	if (numitem < 1) {
		fprintf(stderr,"no items found.");
		fflush (stderr);
		fclose(in);
		return 1;
	}
	
	// items found, then read it in
	::std::vector< ::std::string > astr;

	uint16_t len = 0;

	for (uint16_t i = 0; i < numitem; i++) {
		fread( &len, 1, sizeof(uint16_t), in );

		char * buffer = new char[len+1];
		fread( buffer, 1, len, in );
		buffer[len] = '\0';

		fprintf(stdout,"--> %5d  %s\n", len, buffer);

		astr.push_back( buffer );
		delete buffer;
	}

	// no needed anymore
	fclose(in);	

	return 0;
}
