#include "./exprNode.h"
#include <memory>

class NumNode : public ExprNode{
	public:
	int num;

	NumNode(int num);
};
