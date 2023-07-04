#pragma once
#include "./stmtNode.h"
#include <memory>

class BlockNode : public StmtNode(std::unique_ptr<TreeNode> stmt){
	public:
	std::unique_ptr<TreeNode> stmtChild = nullptr;

	BlockNode(std::unique_ptr<TreeNode> stmt);
};
