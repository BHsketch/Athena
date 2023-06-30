//contains definitions for all types of nodes needed for the syntax tree implementation.
//The syntax tree will be the output of the parser and built through semantic actions during recursive descent.
#include <memory> 								//unique pointers and such

class TreeNode{
	public:

	
}

class BlockNode : public TreeNode{
	std::unique_ptr<TreeNode> blockChild0;		//in general, a node may have multiple possibilities for the type of child
												//hence, the type is generalized to TreeNode instead of writing StmtNode
}

class StmtNode : public TreeNode{
	std::unique_ptr<TreeNode> stmtChild0;
	std::unique_ptr<TreeNode> stmtChild1;
	
}

class DeclNode : public TreeNode{
	std::unique_ptr<TreeNode> declChild0;
	std::unique_ptr<TreeNode> declChild1;
	
}

class Node : public TreeNode{
	std::unique_ptr<TreeNode> stmtChild0;
	std::unique_ptr<TreeNode> stmtChild1;
	
}

