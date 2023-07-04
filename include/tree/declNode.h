#pragma once
#include "./stmtNode.h"
#include <memory>

class DeclNode : public StmtNode(std::unique_ptr<TreeNode> id){
        public:
        std::unique_ptr<TreeNode> idChild = nullptr;

        DeclNode(std::unique_ptr<TreeNode> id);
};

