#include "../../include/parse/env.h"
#include <memory>
#include <unordered_map>


Env::Env() : prev(nullptr) {}
Env::Env(std::shared_ptr<Env> prev) : prev(prev) {};


