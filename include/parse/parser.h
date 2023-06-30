//Defines parse functions for all non-terminals 
#pragma once
#include "./nodes.h"
#include "../lex/token.h"
#include <memory>														//for unique pointers
#include <string>

class parser{
	public:
	
	//useful variables common to all parse functions 
	token::Token currentToken;											//function getToken stores the read value into current token
	std::unique_ptr<TreeNode> program = std::make_unique<TreeNode>();	//a program node that forms the root of the abstract syntax tree
	//end of useful variables


	//helper functions 
	
	void getToken();													//calls get token from the parser and assigns the result to currentToken
																		//this is so that we don't have to do the assignment ourselves everytime we
																		//need one
	void logError(int lineNumber, token::Token errorToken);					//logs errors. Who wants to write std::cout again and again XD
	
	void matchLookahead(std::string terminal);							//matches the input terminal string with the lexeme in currentToken

	//end of helper functions


	//parse functions for non terminals
	
	void block(std::unique_ptr<TreeNode> parent);

	void stmt(std::unique_ptr<TreeNode> parent);

	void decl(std::unique_ptr<TreeNode> parent);

	void assign(std::unique_ptr<TreeNode> parent);

	void expr(std::unique_ptr<TreeNode> parent);

	void term(std::unique_ptr<TreeNode> parent);

	void factor(std::unique_ptr<TreeNode> parent);
	
	//end of parse functions

}


