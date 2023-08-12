#pragma once
#include "./exprNode.h"
#include <memory>
#include <string>

class OpexprNode : public ExprNode{
        public:
        std::shared_ptr<TreeNode> expr1Child = nullptr;
		std::shared_ptr<TreeNode> expr2Child = nullptr;
		std::string op="";

        OpexprNode(std::shared_ptr<TreeNode> expr1, std::shared_ptr<TreeNode> expr2, std::string op);

		std::shared_ptr<TreeNode> getOpexprChild1() override;
		
		std::shared_ptr<TreeNode> getOpexprChild2() override;
			
		std::string getOperator() override;
};

