#include "../../include/lex/lexer.h"
#include <iostream>
#include <fstream>
#include <string>
#include <memory>

//CONSTRUCTOR
Lexer::Lexer(std::string fileName) : fileName(fileName){
	/*	
	tokenKindObj.id = 255;
	tokenKindObj.literal_num = 256;
	tokenKindObj.kw_bool = 257;
	tokenKindObj.kw_double = 258;
	tokenKindObj.bool_true = 259;
	tokenKindObj.bool_false = 260;
	*/														//initializing the integers that different token kinds map to

	reserveWordToken(tokenKindObj.kw_bool, "bool");
	reserveWordToken(tokenKindObj.kw_double, "double");
	reserveWordToken(tokenKindObj.bool_true, "true");
	reserveWordToken(tokenKindObj.bool_false, "false");
															//reserved keywords in the hashmap
};

//HELPER FUNCTIONS

char Lexer::readChar()
{
	static std::ifstream wiseFile(fileName);				//static so that each call continues from where the last call left off
	
	if(wiseFile.is_open()){
	
		if(wiseFile.get(curChar))
		{
			return curChar;
		}else{
			wiseFile.close();
			return '\0';
		}
	}

	return curChar;
}

void Lexer::reserveWordToken(int tag, std::string word)
{
	hashMap[word] = std::make_unique<token::WordToken>(tag, word);
															//map the lexeme to be reserved to it's token
}

//FUNCTION ACCESSED BY PARSER

token::Token Lexer::getToken()
{
	
}


int main()
{
	Lexer lexer("test.txt");
	
	while(lexer.readChar())
	{
		std::cout<<lexer.curChar;
	}

	(lexer.hashMap["bool"])->printToken();

	/*
	std::shared_ptr<token::Token> bool_token = lexer.hashMap["bool"];
	std::shared_ptr<token::WordToken> bool_word_token = std::dynamic_pointer_cast<token::WordToken>(bool_token);

	std::cout<<"reserved token for bool: < " <<	bool_word_token->tag <<", "<< bool_word_token->word <<" >\n";
	*/
}
