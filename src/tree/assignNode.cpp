#include "../../include/tree/assignNode.h"
#include <memory>

AssignNode::AssignNode(std::shared_ptr<TreeNode> id, std::shared_ptr<TreeNode> expr) : idChild(id), exprChild(expr) {}


