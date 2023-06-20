# Athena is an optimizing compiler that implements my own language

*  At this moment I don't know how it is going to be implemented. The lexer itself seems to have multiple ways to implement it: simply recogniizng characters and hence strings, using regular expressions, converting regular expressions to an NFA and so on. However, using a conversion to a simple transition diagram is the same as an if-else or a switch-case construct because it's not like we're gonna build a graph! once we are on a state, we don't need to keep track of the previous states. We know the rules that get us to the next state and that is enough. So if we have a variable 'state' and a switch case with a case for each state in the transition diagram, that will successfully simulate the transition diagram.

* Here is the difference between what I'm thinking of doing and a tool like lex: For what I'm doing, I'll have to take the regular expressions corresponding to my language, manually convert them to transition diagrams and implement the transition diagrams in the program. If implemented as a tool like lex, however, the only thing I'll have to do if I want to introduce changes to the language is change the input regular expressions. The rest will be handled by the tool

##  The parser and lexical analyzer: 

### Notes for the parser:
*  The grammar for our language must be defined using some data structure first.
*  We will create a recursive descent parser that will be initiated to a node (though we don't necessarily need to create the actual tree) that denotes the start of the program.
*  The parser will read one token at a time (tokens will be an output from the lexer)
*  Each non-terminal in the grammar will have a function corresponding to it that makes appropriate recursive calls to the parse function
*  Every time we encounter a non-terminal, we call it's corresponding parse function. This function figures out which production for that non-terminal starts with the current lookahead symbol, and uses that production to analyze that sub-problem
*  The parser will generate an abstract syntax tree for the codegen to work with -> each construct will have a tree class associated with it

### Notes for the lexer:

*  We don't need to lex the entire input code and store all the tokens in a huge buffer that the parser then has to read from. Instead, we'll define a function GetToken() in the lexer, that the parser will call every time it needs the next token
*  When lexing the token, instead of making a system call for every token (to read it from the file we need to access the file system, and that will require a system call (I think)), We will use two buffers, each of length N where N is the size of one block. Through a single system call, we will first fill the buffer. When the end of a buffer is reached, we fill the second buffer and transfer our pointer to the start of that buffer. Refer to the Dragon Book.
* There are basically three ways the lexical analysis can go:
	- For each time we scan a token, we run through all possible transition diagrams (for keywords, identifiers etc) in an appropriate order (for example, the ones for keywords should be checked before identifiers else a keyword will be accepted as an identifier).
	- We parallelly run through all transition diagrams, and see which ones accept. Then choose base on some preference order (eg. keyword > identifier)

	- Recommended: We combine all transition diagrams into one. (which is what we generally do when we manually create NFA's)
* **The Knuth-Morris-Pratt algorithm to search for a substring:** 

### Symbol table:

* The parser will call GetToken, which will return the token name and, possibly, a pointer to the symbol table entry for it.
* A tree of symbol tables will be maintained so that we can work with blocks and scope.
* The 

## Specifications for the language

* Implicit type conversion: between double and int
* data types: int and double
* for loop construct
* If-else construct
* function definitions
* blocks and scope
* int x{5}, y{1}, k{2};
* int func\_name(double x, int y){//code};
* {defs stmts}: define a block scope
* expressions -> infix to postfix conversion
* 

## Project structure

* Each family of classes will be in a separate file (tokens, nodes etc)
* Different stages of the compiler must be more or less independent of each other - this is to make it easier to upgrade our compiler
* functions that recursively eat up non-terminals 
* functions that instantiate nodes for the abstract syntax tree and performs other semantic actions
* functions that report errors ? 
* class definitions for tokens 
* symbol table implementation (what info do I store?)
* 
