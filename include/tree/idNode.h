#include "./exprNode.h"
#include <memory>
#include <string>

class IdNode : public exprNode(std::string id){
	public:

	std::string id = "";

	IdNode(std::string id);
};
