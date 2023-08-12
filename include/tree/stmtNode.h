//base class for a general tree nodes
#pragma once
#include <memory> 								//unique pointers
#include "treeNode.h"

class StmtNode: public TreeNode{
	public:
	void gen() override;
	
};
