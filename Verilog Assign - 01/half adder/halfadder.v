//dataflow style(uses assign keyword)                                                                                                          

module halfadder(a,b,sum,carry);	
	input a,b;
	output sum,carry;

	assign sum = a ^ b;
	assign carry = a & b;

endmodule

//or

//module half_adder(input a,b, output sum,carry);
//endmodule
