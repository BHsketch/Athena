//base class for a general tree nodes
#pragma once
#include <memory>                                               //unique pointers
#include <string>
#include "../lex/tokenKinds.h"

class TreeNode{
        public:
		
		token::TokenKind tokenKindObjTree;
																//so that inner nodes can be queried for their type by storing a variable with this number


        virtual ~TreeNode() = default;                          //don't know the purpose from now; borrowing it from kaleidoscope
		
		virtual std::string getIdLexeme();
		virtual int getNumValue();
		virtual void gen();
		virtual std::string lvalue(std::shared_ptr<TreeNode> expr);			//input will be an expression representing an address; it must return a string that represents a location ultimately.
																			//so that assign() can just call 
																			//print( lvalue(expr) )

		virtual int getExprType();
		virtual void emit(const std::string &emitString) const;
};

