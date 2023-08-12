#pragma once
#include "./stmtNode.h"
#include <memory>

class SeqNode : public StmtNode{
        public:
        std::shared_ptr<TreeNode> stmtChild = nullptr;
		std::shared_ptr<TreeNode> seqChild = nullptr;

        SeqNode(std::shared_ptr<TreeNode> stmt, std::shared_ptr<TreeNode> seq);
		void gen() override;
		
};


