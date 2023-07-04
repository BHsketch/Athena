#pragma once
#include "./exprNode.h"
#include <memory>

class OpexprNode : public ExprNode(std::unique_ptr<TreeNode> expr1, std::unique_ptr<TreeNode> expr2){
        public:
        std::unique_ptr<TreeNode> expr1Child = nullptr;
		std::unique_ptr<TreeNode> expr2Child = nullptr;

        OpexprNode(std::unique_ptr<TreeNode> expr1, std::unique_ptr<TreeNode> expr2);
};

