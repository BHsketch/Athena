#include "./exprNode.h"
#include <memory>
#include <string>
#include "../parse/symbol.h"

class IdNode : public ExprNode{
	public:

	std::string id = "";

	IdNode(std::string id);

	bool doesItExist(std::string id) override;

	std::string getIdLexeme() override;


};
