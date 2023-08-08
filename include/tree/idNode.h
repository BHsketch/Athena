#include "./exprNode.h"
#include <memory>
#include <string>
#include "../parse/symbol.h"

class IdNode : public ExprNode{
	public:

	std::string id = "";

	IdNode(std::string id);
	IdNode(int exprType, std::string id);

	std::string getIdLexeme() override;


};
