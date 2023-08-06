#pragma once
#include "symbol.h"
#include "parser.h"
#include "../lex/lexer.h"
#include <unordered_map>
#include <memory>
#include <string>

class Env {
	public:
	std::unordered_map<std::string, std::shared_ptr<Symbol>> symbolMap;
	std::shared_ptr<Env> prev = nullptr;
															//mapping lexeme references to their corresponding symbol objects
	std::shared_ptr<Lexer> lexer;
	Parser *parser;

	Env(std::shared_ptr<Lexer> lexer, Parser *parser);
	Env(std::shared_ptr<Lexer> lexer, Parser *parser, std::shared_ptr<Env> prev);
																//take a pointer to the existing linked list of Envs as a parameter
																
	void put(std::string id, std::string varTypel);

	std::shared_ptr<Symbol> find(std::string id);	
};
