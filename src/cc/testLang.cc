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
	fread(&version, 1, sizeof(uint32_t), in);
	fread(&locaver, 1, sizeof(uint8_t ), in);
	
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
	uint32_t numitems;
	fread(&numitems, 1, sizeof(uint32_t), in);
	if (numitems < 1) {
		fprintf(stderr,"no items found.");
		fflush (stderr);
		fclose(in);
		return 1;
	}
	
	fprintf(stdout,"items: %d\n",numitems);
	
	int header_size  = sizeof( uint32_t );  // items
	    header_size += sizeof( uint32_t );  // version
		header_size += sizeof( uint8_t  );  // locaver
		
		header_size += numitems * sizeof( uint32_t );  // len
		header_size += numitems * sizeof( uint32_t );  // pos
		
	printf("header: %d  --  0x%x\n", header_size,header_size);
	
	// items found, then read it in
	::std::vector< uint32_t > apos;
	::std::vector< uint32_t > alen;

	char * buffer  = new char[256];
	char * puffer  = new char[256];

	int    pos = 0;
	int    len = 0;

	for (int i = 0; i < numitems; i++) {
		fread(&len, 1, sizeof(uint32_t), in);
		apos.push_back( len );
	}
	for (int i = 0; i < numitems; i++) {
		fread(&pos, 1, sizeof(uint32_t), in);
		alen.push_back( pos );
	}
	
	fseek(in, header_size, SEEK_SET);
	int poo = header_size;
	for (int i = 0; i < numitems; i++) {
		pos = alen.at( i );
		len = apos.at( i );
		
		fseek(in,poo,0);
		fread(buffer, 1, len, in);
		buffer[len] = 0x00;
		poo += len + 1;
		
		sprintf(puffer,"--> %s\n",buffer);
		fprintf(stdout,"--> %5d - 0x%06x  %s", len, poo, puffer);
	}
	
	delete buffer;
	delete puffer;
	
	// no needed anymore
	fclose(in);	
	return 0;
}
