#include "../../include/tree/seqNode.h"

SeqNode::SeqNode(std::unique_ptr<TreeNode> stmt, std::unique_ptr<TreeNode> seq) : stmtChild(stmt), seqChild(seq) {};
