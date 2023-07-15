#pragma once
#include "./stmtNode.h"
#include <memory>

class BlockNode : public StmtNode{
	public:
	std::shared_ptr<TreeNode> stmtChild = nullptr;

	BlockNode(std::shared_ptr<TreeNode> stmt);
};
