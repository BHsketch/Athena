#include "../../include/main/main.h"
#include <memory>
#include <string>
#include <fstream>
#include <iostream>

int TreeNode::temporaryVar = 0;

std::ofstream TreeNode::emitFile;

TreeNode::TreeNode()
{
}

void TreeNode::setEnv(std::shared_ptr<Env> curEnv)
{
	this->curEnv = curEnv;
}

std::string TreeNode::getIdLexeme()
{
	return "";
}

int TreeNode::getNumValue()
{
	return 0;
}

void TreeNode::gen()
{

}

std::string TreeNode::lvalue(std::shared_ptr<TreeNode> expr)
{
	std::cerr<<"INSIDE LVALUE\n";

	if(expr == nullptr)
	{
		std::cerr<<"lvalue expr is nullptr\n";
		return "";
	}

	switch( expr->getExprType() )
	{
		case tokenKindObjTree.id :
			std::cerr<<"INSIDE CASE 1\n";
			return (expr->getIdLexeme() + std::to_string((expr->curEnv)->scope));
			break;
		case tokenKindObjTree.expr_op :
			std::cerr<<"parsing eror: expression not a modifiable lvalue\n";
			return "";
			break;
	}

	return "";
}

std::string TreeNode::rvalue(std::shared_ptr<TreeNode> expr)
{
	std::cerr<<"INSIDE RVALUE\n";

	if(expr == nullptr)
	{
		std::cerr<<"rvalue expr is a nullptr\n";
		return "";
	}

	if( (expr->getExprType() == tokenKindObjTree.id))
	{
		std::cerr<<"INSIDE RVALUE ID CASE RETURNING "<<expr->getIdLexeme()<<"\n";
		return (expr->getIdLexeme() + std::to_string((expr->curEnv)->scope));

	}else if((expr->getExprType() == tokenKindObjTree.literal_num))
	{
		std::cerr<<"INSIDE RVALUE NUM CASE RETURNING "<<expr->getNumValue()<<"\n";
		return std::to_string(expr->getNumValue());	

	}else{
		std::cerr<<"INSIDE RVALUE ELSE CASE\n";

		std::string left = rvalue(expr->getOpexprChild1());

		if( (expr->getOpexprChild2()) != nullptr)
		{
			std::string right = rvalue(expr->getOpexprChild2());
			std::string op = expr->getOperator();
			//ingredients to print a line of intermediate code
			temporaryVar++;
			std::string newTemp = "t";
			newTemp.append(std::to_string(temporaryVar));
			//create a new temporary
			
			emit(newTemp + "=" + left + op + right);

			return newTemp;
		}

		return left;
		
	}
	
	return "";
}


int TreeNode::getExprType()
{
	return -1;
}

void TreeNode::emit(const std::string &emitString) const
{
		std::cout<<"IN EMIT\n";
        //static std::ofstream emitFile("emitInter.txt");

		emitFile.open("emitInter.txt", std::ofstream::app);

        if(emitFile.is_open())
        {
				std::cerr<<"emit about to emit "<<emitString<<"\n";
                emitFile << emitString;
                emitFile << "\n";
        }else{
			std::cerr<<"file is not open\n";
		}

		emitFile.close();

}

std::shared_ptr<TreeNode> TreeNode::getOpexprChild1()
{
	return std::make_shared<TreeNode>();
}

std::shared_ptr<TreeNode> TreeNode::getOpexprChild2()
{
	return std::make_shared<TreeNode>();
}

std::string TreeNode::getOperator()
{
	return "";
}

std::shared_ptr<TreeNode> TreeNode::getAssignIdChild()
{
	return std::make_shared<TreeNode>();
}


std::shared_ptr<TreeNode> TreeNode::getAssignExprChild()
{
	return std::make_shared<TreeNode>();
}
