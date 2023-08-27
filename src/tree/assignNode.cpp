#include "../../include/tree/assignNode.h"
#include <memory>
#include <iostream>
#include <string>

AssignNode::AssignNode(std::shared_ptr<TreeNode> id, std::shared_ptr<TreeNode> expr) : idChild(id), exprChild(expr) {}

void AssignNode::gen()
{
	std::cerr<<"INSIDE ASSIGNNODE GEN\n";
	emit(lvalue(getAssignIdChild())  + "=" + rvalue(getAssignExprChild()));
}

std::shared_ptr<TreeNode> AssignNode::getAssignIdChild()
{
	std::cerr<<"INSIDE GETASSIGNIDCHILD\n";
	return idChild;
}

std::shared_ptr<TreeNode> AssignNode::getAssignExprChild()
{
	std::cerr<<"INSIDE GETASSIGNEXPRCHILD\n";
	return exprChild;
}

