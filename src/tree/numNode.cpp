#include "../../include/tree/numNode.h"

NumNode::NumNode(int num) : ExprNode(tokenKindObjTree.literal_num),  num(num) {};
NumNode::NumNode(int exprType, int num) : ExprNode(exprType), num(num) {};

int NumNode::getNumValue()
{
	return num;
}	
