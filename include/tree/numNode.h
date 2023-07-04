#include "./exprNode.h"
#include <memory>

class NumNode : public ExprNode (int num){
	public:
	int num;

	NumNode(int num);
};
