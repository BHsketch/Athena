#pragma once

namespace token {
	
	class TokenKind{
		public:
			static const int id = 255, literal_num = 256, kw_bool = 257, kw_double = 258,
			bool_true = 259,  bool_false = 260, expr_op = 261;
		//this will map all token names/kinds to numbers 
	};
}
