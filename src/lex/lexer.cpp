#include "../../include/lex/lexer.h"
#include "../../include/lex/token.h"
#include <iostream>
#include <fstream>
#include <string>
#include <memory>
#include <cctype>

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
			lexemeBuffer.push_back(curChar);
			return curChar;
		}else{
			wiseFile.close();
			curChar = '\0';
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

void Lexer::reserveNumToken(int tag, std::string lexeme, double num)
{
	hashMap[lexeme] = std::make_unique<token::NumToken>(tag, num);
															//need lexeme here, because unlike word tokens, the lexeme is not the smae
															//as what is stored in the token.
}

//FUNCTION ACCESSED BY PARSER

token::Token Lexer::getToken()
{
		
	while(std::isspace(static_cast<unsigned char>(curChar)))
	{
		if(curChar == '\n')
		{
			numberOfLines++;
		}
		readChar();
	}
															//ignore all white space characters
	
	lexemeBuffer.clear();
	lexemeBuffer.push_back(curChar);
															//clear the buffer before reading new token
															//and initialize it with the first character of the token

	if(std::isalpha(static_cast<unsigned char>(curChar)) || curChar == '_')
	{
															//either keyword or identifier
		while(std::isalnum(static_cast<unsigned char>(readChar())))
		{
			
		}
															//fill the buffer with the current word

		lexemeBuffer.pop_back();

		if(hashMap.find(lexemeBuffer) != hashMap.end())
		{
			hashMap[lexemeBuffer]->printToken();
			//return statement
		}else{
			reserveWordToken(tokenKindObj.id, lexemeBuffer);
			hashMap[lexemeBuffer]->printToken();
			//return statement
		}
															//return stored token if it already exists
															//or create a new entry in the hashMap and return that

	}else if(std::isdigit(static_cast<unsigned char>(curChar)))
	{
		int numValue = (int)curChar - 48;

		while(std::isdigit(static_cast<unsigned char>(readChar())))
		{
			numValue = numValue*10 + ((int)curChar - 48);
		}

		lexemeBuffer.pop_back();

		if(hashMap.find(lexemeBuffer) != hashMap.end())
		{
			hashMap[lexemeBuffer]->printToken();
			//return statement
		}else{
			reserveNumToken(tokenKindObj.literal_num, lexemeBuffer, numValue);
			hashMap[lexemeBuffer]->printToken();
			//return statement
		}
	}else{
		
		if(hashMap.find(lexemeBuffer) != hashMap.end())
		{
			hashMap[lexemeBuffer]->printToken();
			//return statement
		}else{
			reserveWordToken((int)curChar, lexemeBuffer);
			hashMap[lexemeBuffer]->printToken();
			//return statement
		}

		readChar();
	}
	
	token::Token returnVal(255);
	return returnVal;
}


void Lexer::printCodeAsTokens()
{
	while(curChar != '\0')
	{
		getToken();
	}
}


int main()
{
	Lexer lexer("test.txt");
	
	lexer.printCodeAsTokens();

	/*
	while(lexer.readChar())
	{
		std::cout<<lexer.curChar;
	}

	(lexer.hashMap["bool"])->printToken();
	
	std::shared_ptr<token::Token> bool_token = lexer.hashMap["bool"];
	std::shared_ptr<token::WordToken> bool_word_token = std::dynamic_pointer_cast<token::WordToken>(bool_token);

	std::cout<<"reserved token for bool: < " <<	bool_word_token->tag <<", "<< bool_word_token->word <<" >\n";
	*/
}
