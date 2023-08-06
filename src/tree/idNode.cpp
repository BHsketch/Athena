#include "../../include/tree/idNode.h"
#include <memory>
#include <string>
#include "../../include/parse/symbol.h"

IdNode::IdNode(std::string id) : id(id) 
{
}

bool IdNode::doesItExist(std::string id)
{
	std::shared_ptr<Env> curEnv = symbolTable;
	
	while(curEnv!=nullptr)
	{
		if( (curEnv->symbolMap).find(id) != (curEnv->symbolMap).end() )
		{
			return true; 
		}
		curEnv = curEnv->prev;
	}

	return false;
}


std::string IdNode::getIdLexeme()
{
	return id;
}

