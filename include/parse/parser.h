//Defines parse functions for all non-terminals 
#pragma once
#include "../tree/treeNode.h"
#include "../lex/token.h"
#include "../lex/lexer.h"
#include <memory>														//for unique pointers
#include <string>
#include "symbol.h"
#include "env.h"

class Parser{
	public:
	
	//useful variables common to all parse functions 
	std::shared_ptr<token::Token> curToken = nullptr;											
																		//function getToken stores the read value into current token
	std::shared_ptr<TreeNode> program;	
																		//a program node that forms the root of the abstract syntax tree
	std::shared_ptr<Lexer> lexer = nullptr;
	//end of useful variables
	
	bool errorIndicator = false;
		
	std::shared_ptr<Env> symbolTable = nullptr;

	//helper functions 
	
	void getToken();													//calls get token from the parser and assigns the result to currentToken
																		//this is so that we don't have to do the assignment ourselves everytime we
																		//need one
	void logError(int lineNumber, std::string expectedTerminal);					//logs errors. Who wants to write std::cout again and again XD
	
	bool matchLookahead(std::string terminal);							//matches the input terminal string with the lexeme in currentToken

	//end of helper functions

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


