
module fulladd(a,b,c,sum,carry);
	input a,b,c;
	output sum,carry;
	
	assign sum = a^b^c;
	assign carry = b & c | c & a | a & b ;
	
	
endmodule
