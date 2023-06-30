//This header file implements a lexer class with the getToken function
# pragma once
#include "./token.h"
#include "./tokenKinds.h"

class Lexer{
	public:

	int numberOfLines = 0;				
	//implement input buffers to avoid a system call for every character
	char inputBuffer1[512];
	char inputBuffer2[512];

	token::Token getToken();			//gets the next token from the input stream; contains the 
										//buffer and file access logic
	
}
