#include "../../include/tree/treeNode.h" 
#include <memory>
#include <string>
#include <fstream>

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

void TreeNode::emit(const std::string &emitString) const
{
        static std::ofstream emitFile("emitInter.txt");

        if(emitFile.is_open())
        {
                emitFile << emitString;
                emitFile << "\n";
        }
}

