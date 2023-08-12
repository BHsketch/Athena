#include "../../include/tree/opexprNode.h"
#include <memory>

OpexprNode::OpexprNode(std::shared_ptr<TreeNode> expr1, std::shared_ptr<TreeNode> expr2, std::string op) :  ExprNode(tokenKindObjTree.expr_op), expr1Child(expr1), expr2Child(expr2), op(op) {};


std::shared_ptr<TreeNode> OpexprNode::getOpexprChild1()
{
	return expr1Child;
}

std::shared_ptr<TreeNode> OpexprNode::getOpexprChild2()
{
	return expr2Child;
}

std::string OpexprNode::getOperator()
{
	return op;
}
