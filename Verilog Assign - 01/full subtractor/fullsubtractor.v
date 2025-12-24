module fullsubtractor(a,b,c,diff,borr);
	input a,b,c;
	output diff,borr;

	assign diff = a^b^c;
	assign borr = b & c | ~a & c | ~a & b;

endmodule
