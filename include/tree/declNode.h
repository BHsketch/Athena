#pragma once
#include "./stmtNode.h"
#include <memory>

class DeclNode : public StmtNode{
        public:
        std::shared_ptr<TreeNode> idChild = nullptr;

        DeclNode(std::shared_ptr<TreeNode> id);
};

