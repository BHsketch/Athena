//base class for a general tree nodes
#pragma once
#include <memory>                                                               //unique pointers
#include "treeNode.h"
#include <string>

class ExprNode: public TreeNode{
        public:

		int exprType;

		ExprNode();
		ExprNode(int exprType);

		int getExprType() override;
};

