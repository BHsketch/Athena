#pragma once

namespace token {
	
	enum TokenKind{
		id = 255, literal_num,
		kw_bool, kw_double,
		punct_leftcurly, punct_rightcurly, punct_semicolon, 
		op_plus, op_minus, op_star, op_backslash, op_assign
		//this will map all token names/kinds to numbers 
	};
}
