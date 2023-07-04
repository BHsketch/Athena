#include "../../include/tree/opexprNode.h"
#include <memory>

OpexprNode::OpexprNode(std::unique_ptr<TreeNode> expr1, std::unique_ptr<TreeNode> expr2) : expr1Child(expr1), expr2Child(expr2) {};
