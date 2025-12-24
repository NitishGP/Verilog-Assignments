`include "hs.v"

module fs(a,b,c,diff,borr);
	input a,b,c;
	output diff,borr;
	wire w1,w2,w3;

	hs sub1(a,b,w1,w2);
	hs sub2(w1,c,diff,w3);

	or O1(borr,w3,w2);

endmodule
