#include "../../include/tree/exprNode.h"


ExprNode::ExprNode() : exprType(0)
{

}

ExprNode::ExprNode(int exprType) : exprType(exprType) 
{

}

int ExprNode::getExprType()
{
	return exprType;
}
