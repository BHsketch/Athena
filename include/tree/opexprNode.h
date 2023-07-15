#pragma once
#include "./exprNode.h"
#include <memory>

class OpexprNode : public ExprNode{
        public:
        std::shared_ptr<TreeNode> expr1Child = nullptr;
		std::shared_ptr<TreeNode> expr2Child = nullptr;

        OpexprNode(std::shared_ptr<TreeNode> expr1, std::shared_ptr<TreeNode> expr2);
};

