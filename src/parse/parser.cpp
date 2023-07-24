#include "../../include/lex/lexer.h"
#include "../../include/parse/parser.h"
#include "../../include/lex/token.h"
#include "../../include/lex/tokenKinds.h"
#include "../../include/parse/env.h"
#include "../../include/tree/treeNode.h"
#include "../../include/tree/blockNode.h"
#include "../../include/tree/seqNode.h"
#include "../../include/tree/declNode.h"
#include "../../include/tree/idNode.h"
#include "../../include/tree/stmtNode.h"
#include "../../include/tree/opexprNode.h"
#include "../../include/tree/numNode.h"
#include "../../include/tree/exprNode.h"
#include "../../include/tree/assignNode.h"
#include <memory>
#include <string>
#include <iostream>

Parser::Parser(std::shared_ptr<Lexer> lexer) : lexer(lexer) {};

void Parser::getToken()
{
	if(lexer->curChar != '\0')
	{
		curToken = lexer->getToken();
	}else{
		curToken = nullptr;
	}
}

void Parser::logError(int errCode, int lineNumber, std::string expectedTerminal, std::string errorString, std::string varName)
{
	errorCount++;

	if(errorString == "")
	{
	}else{
		std::cerr<<errorString<<"\n";
	}

	switch(errCode)
	{
		case 0:
			std::cerr<<"Expected '"<<expectedTerminal<<"' at line "<<lineNumber<<"."<<"\n";
			break;
		case 1:
			std::cerr<<"multiple declarations for variable '"<<varName<<"' at line "<<lineNumber<<".\n";
			break;
		case 2:
			std::cerr<<"missing operator at line "<<lineNumber<<".\n";
			break;
		case 3:
			std::cerr<<"missing factor at line "<<lineNumber<<".\n";
			break;
	}
}

bool Parser::matchLookahead(std::string terminal)
{														
	//std::cout<<"matching "<<terminal<<"\n";
													//checks if the already read token is the same as the
													//terminal string provided in the arguments
	if(curToken == nullptr)
	{
		logError(0, lexer->numberOfLines, terminal, "", "");
		lexer->spitToken();
		return false;
	}

	std::string curTokenAttr = curToken->getAttribute();

	if(terminal == (curTokenAttr))
	{
		//std::cout<<"matched\n";
		return true;
	}else{
		logError(0, lexer->numberOfLines, terminal, "", "");
													//Errors will be logged only (I think) due to single
													//character tokens like parenthesis or semicolons
													//hence we can assume it's gonna be a word token and a string
		lexer->spitToken();
		//errorIndicator = true;
		return false;
	}
}

void Parser::printConclusion()
{
	std::cout<<"Program parsed with "<<errorCount<<" errors.\n";
}


std::shared_ptr<TreeNode> Parser::block() 
{
	//logError(2, lexer->numberOfLines, "", "", "");
	std::cout<<"in block\n";

	std::shared_ptr<TreeNode> stmtsChild;
	std::shared_ptr<Env> prevScope;

	//getToken();
	matchLookahead("{");
											//Assuming that the first token corresponding to all parse
											//functions has already been read
										
	prevScope = symbolTable;
	symbolTable = std::make_shared<Env>(symbolTable);
											//Create an environment for the new scope
	
	getToken();
	stmtsChild = stmts();
	
	matchLookahead("}");

	symbolTable = prevScope;
											//Once this scope ends, go back to the previous scope
	/*
	if(errorIndicator)
	{
		return nullptr;
	}
	*/

	std::shared_ptr<BlockNode> blockNode = std::make_shared<BlockNode>(stmtsChild);
	return blockNode;

}

std::shared_ptr<TreeNode> Parser::decl()
{
	std::cout<<"in decl\n";

	std::string varName;
	std::shared_ptr<Symbol> symbol; 
	
	std::string curTokenAttr = curToken->getAttribute();
	
	if(curTokenAttr == "double")
	{
		symbol = std::make_shared<Symbol>(258);

	}else if(curTokenAttr == "bool")
	{
		symbol = std::make_shared<Symbol>(257);
	}

	getToken();
	
	if((symbolTable->symbolMap).find(curToken->getAttribute()) != (symbolTable->symbolMap).end())
	{
		logError(1, lexer->numberOfLines, "", "", curToken->getAttribute());
											//Error for multiple declarations of the same name in a single scope
	}

	(symbolTable->symbolMap)[curToken->getAttribute()] = symbol;
	
	getToken();
	matchLookahead(";");


	std::shared_ptr<IdNode> idChild = std::make_shared<IdNode>(curToken->getAttribute());
	std::shared_ptr<DeclNode> declNode = std::make_shared<DeclNode>(idChild);

	return declNode;
}


std::shared_ptr<TreeNode> Parser::factor()
{
	std::cout<<"in factor\n";

	std::shared_ptr<TreeNode> child;

	if(curToken == nullptr)
	{
		child = nullptr;
		return child;
	}

	if(curToken->tag == (lexer->tokenKindObj).id)
	{
		child = std::make_shared<IdNode>(curToken->getAttribute());

	}else if(curToken->tag == (lexer->tokenKindObj).literal_num)
	{
		child = std::make_shared<NumNode>(curToken->getNumAttribute());

	}else if(curToken->getAttribute() == "("){
		matchLookahead("(");
		getToken();
		child = expr();
	}else{

		//logError(3, lexer->numberOfLines, "", "", "");
		//									//Error for missing factor`
		lexer->spitToken();
	}

	return child;
}


std::shared_ptr<TreeNode> Parser::term()
{
	std::cout<<"in term\n";

	std::shared_ptr<TreeNode> factorChild;
	std::shared_ptr<TreeNode> termChild;
	std::string op;

	factorChild = factor();

	getToken();
	//MATCH LOOKAHEAD AND ERROR HANDLING
	
	if((curToken->getAttribute() == "*") ||  (curToken->getAttribute() == "/"))
	{
		op = curToken->getAttribute();
		getToken();
		termChild = term();
	}else if((curToken->tag == ((lexer->tokenKindObj).id)) || (curToken->tag == ((lexer->tokenKindObj).literal_num))
														   || ((curToken->getAttribute() == "(")))
	{
		
		logError(2, lexer->numberOfLines, "", "", "");
											//Error for missing operator
		termChild = nullptr;

	}else{
		lexer->spitToken();					//This token is a part of some other construct altogether
		termChild = nullptr;										 
	}

	std::shared_ptr<OpexprNode> opexprNode = std::make_shared<OpexprNode>(factorChild, termChild);

	return opexprNode;
}


std::shared_ptr<TreeNode> Parser::expr()
{
	std::cout<<"in expr\n";
	
	std::shared_ptr<TreeNode> termChild;
	std::shared_ptr<TreeNode> exprChild;
	std::string op;

	termChild = term();

	getToken();
	//MATCH LOOKAHEAD AND ERROR HANDLING
	
	if((curToken->getAttribute() == "+") ||  (curToken->getAttribute() == "-"))
	{
		op = curToken->getAttribute();
		getToken();
		exprChild = expr();
	}else{
		exprChild = nullptr;
	}

	std::shared_ptr<OpexprNode> opexprNode = std::make_shared<OpexprNode>(termChild, exprChild);

	return opexprNode;
}



std::shared_ptr<TreeNode> Parser::assign()
{
	std::cout<<"in assign\n";

	std::shared_ptr<IdNode> idChild = std::make_shared<IdNode>(curToken->getAttribute());	
	std::shared_ptr<TreeNode> exprChild;

	getToken();
	matchLookahead("=");

	getToken();
	exprChild = expr();

	getToken();
	matchLookahead(";");

	std::shared_ptr<AssignNode> assignNode = std::make_shared<AssignNode>(idChild, exprChild);

	return assignNode;

}


std::shared_ptr<TreeNode> Parser::stmts()
{
	std::cout<<"in stmts\n";

	std::shared_ptr<TreeNode> child1;
	std::shared_ptr<TreeNode> child2;
	//getToken();

	bool nullStmt = false;

	if(curToken == nullptr)
	{
		return nullptr;
	}

	std::string curTokenAttr = curToken->getAttribute();	
	
	if(curTokenAttr == "{")
	{
		child1 = this->block();

	}else if(curTokenAttr == "double")
	{
		child1 = this->decl();

	}else if(curTokenAttr == "bool")
	{
		child1 = this->decl();

	}else if((curToken->tag) == (lexer->tokenKindObj).id)
	{
		child1 = this->assign();

	}else{
		nullStmt = true;
	}

	if(nullStmt)
	{
		child1 = nullptr;
		child2 = nullptr;
	}else{
		getToken();
		child2 = stmts();
	}

	std::shared_ptr<SeqNode> seqNode = std::make_shared<SeqNode>(child1, child2);

	return seqNode;

}

int main()
{
	std::shared_ptr<Lexer> lexer = std::make_shared<Lexer>("test.txt");
	Parser parser(lexer);
	
	parser.getToken();
	parser.program = parser.block();
	parser.printConclusion();
}
