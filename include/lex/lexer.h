//This header file implements a lexer class with the getToken function
# pragma once
#include "./token.h"
#include <string>
#include <unordered_map>			
#include <memory>

class Lexer{
	public:
	
	//DECLARING VARIABLES 

	token::TokenKind tokenKindObj;

	char curChar = '\0';
	int numberOfLines = 0;				
	
	std::string fileName;
	std::unordered_map<std::string, std::unique_ptr<token::Token> > hashMap; 
										//Hash map to map lexemes to tokens

	//char inputBuffer1[512];
	//char inputBuffer2[512];
										//implement input buffers to avoid a system call for every character
	//HELPER FUNCTIONS

	Lexer(std::string fileName);
	
	char readChar();

	token::Token getToken();			//gets the next token from the input stream; contains the 
										//buffer and file access logic
	void reserveWordToken(int tag, std::string word);
};


//pseudo code for lexing:
/*
create a hashmap

reserve keywords

GETTOKEN: 

read all whitespace characters and increment numOfLines if newline

if alphabet or underscore
	- see the rest of them
	- if char is invalid print error - identifiers cannot contain so and so characters
	- if already reserved
	   	  return that token
	- else 
		  add it as an identifier
		  return that token
	
else if it is a number 
	- consume each digit and do inter = inter*10 + peek
	- consume nextchar
	- if it is a decimal point 
		consume the rest of the characters and do decimal = decimal + 10^-i * peek
	- create and return a num token

else return the character itself (We don't have multi-character operands yet else
we would have to check for those first)
	
*/
