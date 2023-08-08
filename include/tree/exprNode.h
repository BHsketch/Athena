//base class for a general tree nodes
#pragma once
#include <memory>                                                               //unique pointers
#include "treeNode.h"

class ExprNode: public TreeNode{
        public:

		int exprType = 0;

		ExprNode();
		ExprNode(int exprType);

		int getExprType() override;
};

