#pragma once
#include "symbol.h"
#include <unordered_map>
#include <memory>
#include <string>

class Env {
	public:
	std::unordered_map<std::string, std::shared_ptr<Symbol>> symbolMap;
	std::shared_ptr<Env> prev = nullptr;
															//mapping lexeme references to their corresponding symbol objects
	Env();
	Env(std::shared_ptr<Env> prev);
															//take a pointer to the existing linked list of Envs as a parameter
};
