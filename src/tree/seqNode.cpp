#include "../../include/tree/seqNode.h"

SeqNode::SeqNode(std::shared_ptr<TreeNode> stmt, std::shared_ptr<TreeNode> seq) : stmtChild(stmt), seqChild(seq) {};
