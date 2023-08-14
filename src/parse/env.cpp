#include "../../include/main/main.h"
#include <memory>
#include <unordered_map>
#include "../../include/parse/symbol.h"
#include "../../include/lex/lexer.h"

Env::Env(int scope, std::shared_ptr<Lexer> lexer, Parser *parser) : scope(scope), prev(nullptr), lexer(lexer), parser(parser) {}
Env::Env(int scope, std::shared_ptr<Env> prev, std::shared_ptr<Lexer> lexer, Parser *parser) : scope(scope),  prev(prev), lexer(lexer), parser(parser){};


void Env::put(std::string id, std::string varType)
{
        std::shared_ptr<Symbol> symbol = std::make_shared<Symbol>(varType);
        if(symbolMap.find(id) != symbolMap.end())
        {
                parser->logError(1, lexer->numberOfLines, "", "", (parser->curToken)->getAttribute());
                //Error for multiple declarations of the same name in a single scope
        }

        symbolMap[id] = symbol;
}

std::shared_ptr<Symbol> Env::find(std::string id)
{
        Env *curEnv = this;

        while(curEnv!=nullptr)
        {
                if((curEnv->symbolMap).find(id) != (curEnv->symbolMap).end())
                {
                        return (curEnv->symbolMap)[id];
                }
        }

        return nullptr;
}


