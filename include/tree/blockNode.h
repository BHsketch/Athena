#pragma once
#include "./stmtNode.h"
#include <memory>

class BlockNode : public StmtNode{
	public:
	std::shared_ptr<TreeNode> stmtChild = nullptr;
	int scope;

	BlockNode(std::shared_ptr<TreeNode> stmt, int scope);
	void gen() override;

};
