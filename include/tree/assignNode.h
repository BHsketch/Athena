#pragma once
#include "./stmtNode.h"
#include <memory>

class AssignNode : public StmtNode{
        public:
        std::shared_ptr<TreeNode> idChild = nullptr;
		std::shared_ptr<TreeNode> exprChild = nullptr;

        AssignNode(std::shared_ptr<TreeNode> id, std::shared_ptr<TreeNode> expr);
		
};

