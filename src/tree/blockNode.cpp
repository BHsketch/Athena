#include "../../include/tree/blockNode.h"
#include <memory>

public BlockNode::BlockNode(std::unique_ptr<treeNode> stmt) : stmtChild(stmt) {};		//constructor to assign the child node to blockNode

//perhaps the following functions for different phases:
//symbol table management
//code generation

