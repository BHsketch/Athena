#include "../../include/tree/idNode.h"
#include <memory>
#include <string>
#include "../../include/parse/symbol.h"

IdNode::IdNode(std::string id) : id(id) 
{
}


std::string IdNode::getIdLexeme()
{
	return id;
}

