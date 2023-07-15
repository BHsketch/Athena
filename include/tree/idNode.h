#include "./exprNode.h"
#include <memory>
#include <string>

class IdNode : public ExprNode{
	public:

	std::string id = "";

	IdNode(std::string id);
};
