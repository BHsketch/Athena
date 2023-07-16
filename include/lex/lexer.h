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

	char curChar = ' ';
	std::string lexemeBuffer = "";
	int numberOfLines = 0;				
	
	std::string fileName;
	std::unordered_map<std::string, std::shared_ptr<token::Token> > hashMap; 
										//Hash map to map lexemes to tokens

	char inputBuffer0[512] = {'\0'};
	char inputBuffer1[512] = {'\0'};
	char *inputBuffer[2] = { &(inputBuffer0[0]), &(inputBuffer1[0]) };
	bool curBuffer = 1;
	int bufferIndex = 511;
	int tokenLength;
										//implement input buffers to avoid a system call for every character
	//HELPER FUNCTIONS

	Lexer(std::string fileName);
	
	char readChar();

	std::shared_ptr<token::Token> getToken();			//gets the next token from the input stream; contains the 
	void spitToken();

	void reserveWordToken(int tag, std::string word);

	void reserveNumToken(int tag, std::string lexeme, double num);

	//TEST FUNCTION

	void printCodeAsTokens();
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
