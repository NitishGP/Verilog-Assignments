`include "halfadder.v"

module fulladder(a,b,c,sum,carry);
	input a,b,c;
	output sum,carry;
	wire w1,w2,w3;

	//we need 2 half adder and OR gate,i.e, gate level design

	halfadder ha1(a,b,w1,w2);
	halfadder ha2(w1,c,sum,w3);

	or O1(carry,w2,w3);
endmodule

