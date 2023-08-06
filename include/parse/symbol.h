#pragma once
#include "../lex/tokenKinds.h"
#include <string>

class Symbol {
	public:
	std::string varType;

	Symbol(std::string varType);
};
