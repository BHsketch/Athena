#include "../../include/lex/lexer.h"
#include <iostream>
#include <fstream>
#include <string>

Lexer::Lexer(std::string fileName) : fileName(fileName){};

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


int main()
{
	Lexer lexer("test.txt");
	
	while(lexer.readChar())
	{
		std::cout<<lexer.curChar;
	}
}
