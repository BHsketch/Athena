#include<iostream>
#include<memory>
#include"../../include/lex/lexer.h"
#include"../../include/parse/parser.h"

int main(int argc, char* argv[])
{
	std::shared_ptr<Lexer> lexer = std::make_shared<Lexer>(argv[1]);
	Parser parser(lexer);
	
	parser.getToken();
	parser.program = parser.stmts();
	parser.printConclusion();
}
