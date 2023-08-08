#include "../../include/tree/treeNode.h" 
#include <memory>
#include <string>

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
	switch( expr->getExprType() )
	{
		case tokenKindObjTree.id :
			return expr->getIdLexeme();
			break;
	}

	return "";
}


int TreeNode::getExprType()
{
	return 0;
}
