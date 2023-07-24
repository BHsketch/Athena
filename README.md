# Athena
An optimizing compiler that implements a custom language

## Description:

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
* Restricting token tags to only the defined types: in the token class, we will define the 'tag' not as an int, but as an enum type 'tokenTag'. This enum will be defined in a Tag class somewhere, and will list out all the tokens we are allowed to have. In the LLVM source code, the word 'kind' is used to refer to tags (as in, what 'kind' of token this is) and the enum 'TokenKind' Does NOT directly contain a list of tokens, but rather 'populates' itself (from what I've understood) from another file TokenKinds.def (that contains a list of all tokens) using a macro 'TOK'.

### Symbol table:

* The parser will call GetToken, which will return the token name and, possibly, a pointer to the symbol table entry for it.
* A tree of symbol tables will be maintained so that we can work with blocks and scope.
* The 

## Specifications for the language

* Implicit type conversion: between double and int
* data types: bool, double and string
* for loop construct
* If-else construct
* function definitions
* blocks and scope
* int x{5}, y{1}, k{2};
* int func\_name(double x, int y){//code};
* {defs stmts}: define a block scope
* expressions -> infix to postfix conversion
* sample program:

int fib(int n)
{
	if(x<3)
	{
		return 1;
	}else{
		return (fib(n-1) + fib(n-2));
	}
}

int main()
{
	consolelog(fib(10));
}

## Project structure

* Each family of classes will be in a separate file (tokens, nodes etc)
* Different stages of the compiler must be more or less independent of each other - this is to make it easier to upgrade our compiler
* functions that recursively eat up non-terminals 
* functions that instantiate nodes for the abstract syntax tree and performs other semantic actions
* functions that report errors ? 
* class definitions for tokens 
* symbol table implementation (what info do I store?)

## Approach
After a lot of contemplation, staring at my screen, scanning through the LLVM kaleidoscope website, going back and forth through the dragon book, almost committing to reading other resources instead and wondering what I'm doing with my life, I have come to a conclusion that writing a full blown compiler in my first draft (or whatever you wanna call it) of code is too hard to be practical. I'm new to all this, and for someone new to stuff, there sure is a lot to consider. So what I'm gonna do is go in stages. I'm gonna start with a very basic non-turing complete language, and build up from there. 
One benefit to this approach is that just implementing a basic draft will then give me an idea of whether or not my code is easily expandable i.e. whether or not I've written the code in a way so that it is easy for me to add more features later on.
A second benefit is I'll get to potentially implement the code in different ways and not having to reinvent the wheel everytime becuase of the sheer number of parameters I've set myself to consider.

### Stage I: declarations and expressions
I'm gonna try to write a compiler that can convert a code like the following into a syntax tree, and maybe (if I feel like having fun) generate the intermediate code for it:

#### Sample program:
```
{
	double num1;
	double num2;
	double expr;

	expr = num1 * 5 + (num2*8)/3;
}
```

notice, that this does not have a main function or anything depicting a "starting point", but rather just a block with three kinds of statements:
* Declarations
* Expressions (including identifiers and numeric literals)
* Assignment

#### grammar:

* program -> block
* block -> { stmts }
* stmts -> block | decl stmts | assign stmts | phi		
* decl -> double id ; | bool id ;				
* assign -> id = expr ;						
* expr -> term + expr | term - expr | term		
* term -> factor * term | factor / term | factor 	
* factor -> num | id | (expr)							

Note that the expression is built up in layers so as to separate the precedence of +, - with that of \*, \
Consider both of those pairs to be left associative

Types of tokens: 

* identifiers and literals: num, id, 	<type, value>
* keywords: bool, double				<keyword>
* punctuators: \{, \}, =, ; 			<punctuator>
* ops:  \+, \-, \*, \\,				<ops> 


#### Logging Errors

Types of errors:
* expected token not present
* variable re declaration
* missing operator
* missing rvalue
* un-identified identifier

We need to do an error count - something that will be incremented by the logError function - and also we need the logError function to log other kinds of errors (or  we might just need two kinds of logError functions)

Another aspect to consider is that if we get an "expected terminal" error, we might wanna spit that token back out so that the rest of the program may be parsed correctly. However, we cannot do that so easily if we're reading tokens directly from a file. So the double-buffer system should be very helpful in this case.
