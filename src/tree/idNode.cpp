#include "../../include/tree/idNode.h"
#include <memory>
#include <string>
#include "../../include/parse/symbol.h"

IdNode::IdNode(std::string id) : ExprNode(tokenKindObjTree.id), id(id)
{

}


IdNode::IdNode(int exprType, std::string id) : ExprNode(exprType), id(id) 
{
}


std::string IdNode::getIdLexeme()
{
	return id;
}

