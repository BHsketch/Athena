# pragma once //preprocessor statement that includes a definition only if it hasn't already been declared before
#include "tokenKinds.h"
#include <string>

namespace token{

class Token {
	public:
	int tag; //tag has the type enum

	Token(int tag);

	virtual void printToken();
};

class NumToken : public Token {
	public:
	double num;
	
	NumToken();
	NumToken(double num);
	NumToken(int tag, double num);

	void printToken() override;
};


class WordToken : public Token {
	public:
	std::string word;

	WordToken(int tag, std::string word);

	void printToken() override;
};


/*
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
	char op;
};

*/

}
