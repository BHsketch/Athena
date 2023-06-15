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

### Notes for the lexer:

*  We don't need to lex the entire input code and store all the tokens in a huge buffer that the parser then has to read from. Instead, we'll define a function GetToken() in the lexer, that the parser will call every time it needs the next token
*  When lexing the token, instead of making a system call for every token (to read it from the file we need to access the file system, and that will require a system call (I think)), We will use two buffers, each of length N where N is the size of one block. Through a single system call, we will first fill the buffer. When the end of a buffer is reached, we fill the second buffer and transfer our pointer to the start of that buffer. Refer to the Dragon Book.
* Let's say we use transition diagrams to lex the tokens; Don't we _have_ to convert it into an NFA, or atleast add an if else construct to one by one check all different transition diagrams for all different expressions? The answer is no. Because instead of lexing, we're letting the parser call the GetToken() function, the parser _knows_ what to expect for the code to be correct - it knows what terminal we should get. Hence, if we create a getToken function for all types of token, we can simply call the appropriate function from the parser. Only that transition diagram will be checked.
