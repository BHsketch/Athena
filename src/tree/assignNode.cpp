#include "../../include/tree/assignNode.h"
#include <memory>

AssignNode::AssignNode(std::unique_ptr<TreeNode> id, std::unique_ptr<TreeNode> expr) : idChild(id), exprChild(expr) {};
