# pragma once //preprocessor statement that includes a definition only if it hasn't already been declared before
#include "tokenKinds.h"
#include<string>

namespace token{

class Token {
	public:
	token::TagKind tag; //tag has the type enum
};

class NumToken : public Token {
	public:
	double num;
};


class IdToken : public Token {
	public:
	std::string identifier;
};

class PunctToken : public Token {
	public:
	char punct;
};

class KwToken : public Token {
	public:
	std::string keyword;
};

class OpToken : public Token {
	public:
	char operator;
};

}
