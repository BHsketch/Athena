#pragma once

namespace token {
	
	class TokenKind{
		public:
		static int id = 255,		 literal_num = 256,	 kw_bool = 257,	 kw_double = 258,
					bool_true = 259, bool_false = 260;
		//this will map all token names/kinds to numbers 
	};
}
