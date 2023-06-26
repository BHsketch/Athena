# pragma once //preprocessor statement that includes a definition only if it hasn't already been declared before
#include "tokenKinds.h"
#include<string>

namespace token{

class token {
	public:
	token::TagKind tag; //tag has the type enum
};

class num_token : public token {
	public:
	double num;
};


class id_token : public token {
	public:
	std::string identifier;
};

class punct_token : public token {
	public:
	char punct;
};

class kw_token : public token {
	public:
	std::string keyword;
};

class op_token : public token {
	public:
	char operator;
};

}
