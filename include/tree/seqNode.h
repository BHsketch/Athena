#pragma once
#include "./stmtNode.h"
#include <memory>

class SeqNode : public StmtNode(std::unique_ptr<TreeNode> stmt, std::unique_ptr<TreeNode> seq){
        public:
        std::unique_ptr<TreeNode> stmtChild = nullptr;
		std::unique_ptr<TreeNode> seqChild = nullptr;

        SeqNode(std::unique_ptr<TreeNode> stmt, std::unique_ptr<TreeNode> seq);
};

