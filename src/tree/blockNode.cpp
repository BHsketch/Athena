#include "../../include/tree/blockNode.h"
#include <memory>

BlockNode::BlockNode(std::shared_ptr<TreeNode> stmt) : stmtChild(stmt) {}		//constructor to assign the child node to blockNode

//perhaps the following functions for different phases:
//symbol table management
//code generation

