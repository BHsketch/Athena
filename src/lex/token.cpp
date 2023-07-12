#include "../../include/lex/token.h"
#include "../../include/lex/tokenKinds.h"
#include <string>
#include <iostream>

token::Token::Token(int tag): tag(tag) {
	 //code to update a symbol table?
}

void token::Token::printToken(){}

token::NumToken::NumToken() : token::Token::Token(256), num(0) {}
																		//256 is the mapped value for a token kind of literal_num
token::NumToken::NumToken(int tag, double num) : token::Token::Token(tag), num(num) {}
void token::NumToken::printToken() 
{
	std::cout<<"\n< "<< tag << ", " << num << " >\n";	
}
																		//WordToken does not have an empty constructor because it could be either
																		//an identifier or a keyword. There is no way to know
token::WordToken::WordToken(int tag, std::string word) : token::Token::Token(tag), word(word) {} 
void token::WordToken::printToken()  
{
	std::cout<<"\n< "<< tag << ", " << word << " >\n";	
}


