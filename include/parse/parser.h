//Defines parse functions for all non-terminals 
#pragma once
#include "../tree/treeNode.h"
#include "../lex/token.h"
#include "../lex/lexer.h"
#include <memory>														//for unique pointers
#include <string>
#include "symbol.h"
#include <fstream>

class Parser{
	public:

	//USEFUL VARIABLES  
	std::shared_ptr<token::Token> curToken = nullptr;											
																		//function getToken stores the read value into current token
	std::shared_ptr<TreeNode> program;	
																		//a program node that forms the root of the abstract syntax tree
	std::shared_ptr<Lexer> lexer = nullptr;

	int scopeCount = 0;
	int curScope = 0;
	//END OF USEFUL VARIABLES
	
	bool errorIndicator = false;
	int errorCount = 0;
		
	std::shared_ptr<Env> symbolTable = nullptr;

	//HELPER FUNCTIONS 
	
	void getToken();													//calls get token from the parser and assigns the result to currentToken
																		//this is so that we don't have to do the assignment ourselves everytime we
																		//need one
	void logError(int errCode, int lineNumber, std::string expectedTerminal, std::string errorString, std::string varName);					
																		//logs errors. Who wants to write std::cout again and again XD
	void printConclusion();
																		//if error string is not "", an error other than "expected terminal" has occured, and so we must address that with this error string
	
	bool matchLookahead(std::string terminal);							//matches the input terminal string with the lexeme in currentToken

	void emit(const std::string &emitString) const;

	//END  OF HELPER FUNCTIONS

	Parser(std::shared_ptr<Lexer> lexer);

	//parse functions for non terminals
	
	std::shared_ptr<TreeNode> block();
	

	std::shared_ptr<TreeNode> stmts();

	std::shared_ptr<TreeNode> decl();

	std::shared_ptr<TreeNode> assign();

	std::shared_ptr<TreeNode> expr();

	std::shared_ptr<TreeNode> term();

	std::shared_ptr<TreeNode> factor();
	
	//end of parse functions

};


//#include "env.h"
//std::shared_ptr<Env> symbolTable = nullptr;
