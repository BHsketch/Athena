#pragma once
#include "./stmtNode.h"
#include <memory>

class AssignNode : public StmtNode{
        public:
        std::shared_ptr<TreeNode> idChild = nullptr;
		std::shared_ptr<TreeNode> exprChild = nullptr;

        AssignNode(std::shared_ptr<TreeNode> id, std::shared_ptr<TreeNode> expr);
		void gen() override;
		std::shared_ptr<TreeNode> getAssignIdChild() override;
		std::shared_ptr<TreeNode> getAssignExprChild() override;
};

