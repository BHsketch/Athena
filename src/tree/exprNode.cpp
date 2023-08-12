#include "../../include/tree/exprNode.h"
#include <iostream>


ExprNode::ExprNode() : exprType(-1)
{

}

ExprNode::ExprNode(int exprType) : exprType(exprType) 
{

}

int ExprNode::getExprType()
{
	std::cerr<<"INSIDE GET EXPR TYPE RETURNING "<<exprType<<" \n";
	return exprType;
}
