//base class for a general tree nodes
#pragma once
#include <memory>                                               //unique pointers
#include <string>
#include "../lex/tokenKinds.h"
#include <fstream>
#include <stack>

class TreeNode{
        public:
		
		static std::ofstream emitFile;
		static token::TokenKind tokenKindObjTree;
		static int temporaryVar;
		static std::stack<int> scope;
																//so that inner nodes can be queried for their type by storing a variable with this number


        virtual ~TreeNode() = default;                          //don't know the purpose from now; borrowing it from kaleidoscope
		TreeNode();
		TreeNode(int scope);
		
		virtual std::string getIdLexeme();
		virtual int getNumValue();
		virtual void gen();
		virtual std::string lvalue(std::shared_ptr<TreeNode> expr);			//input will be an expression representing an address; it must return a string that represents a location ultimately.
																			//so that assign() can just call 
																			//print( lvalue(expr) )
		virtual std::string rvalue(std::shared_ptr<TreeNode> expr);
																			//returns the location where the final
																			//result of this expr is stored
		virtual int getExprType();
		virtual void emit(const std::string &emitString) const;

		//EXPRNODE
		virtual std::shared_ptr<TreeNode> getOpexprChild1();
		virtual std::shared_ptr<TreeNode> getOpexprChild2();
		virtual std::string getOperator();

		//ASSIGNNODE
		virtual std::shared_ptr<TreeNode> getAssignIdChild();
		virtual std::shared_ptr<TreeNode> getAssignExprChild();
};

