//base class for a general tree nodes
#pragma once
#include <memory>                                               //unique pointers
#include <string>

class TreeNode{
        public:
        virtual ~TreeNode() = default;                          //don't know the purpose from now; borrowing it from kaleidoscope
		
		//VIRTUAL FUNCTIONS FOR ID

		virtual std::string getIdLexeme();
};

