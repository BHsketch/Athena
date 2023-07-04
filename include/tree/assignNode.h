#pragma once
#include "./stmtNode.h"
#include <memory>

class AssignNode : public StmtNode(std::unique_ptr<TreeNode> id, std::unique_ptr<TreeNode> expr){
        public:
        std::unique_ptr<TreeNode> idChild = nullptr;
		std::unique_ptr<TreeNode> exprChild = nullptr;

        AssignNode(std::unique_ptr<TreeNode> id, std::unique_ptr<TreeNode> expr);
};

