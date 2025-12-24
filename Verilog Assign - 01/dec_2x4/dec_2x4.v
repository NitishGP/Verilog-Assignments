`include "dec_1x2.v"
module dec_2x4(en,i0,i1,Y);
	input en,i0,i1;
	output [3:0] Y;
	wire w1,w2;
	
	dec_1x2 e1(en,i0,w1,w2);	
	dec_1x2 e2(w1,i1,Y[0],Y[1]);
	dec_1x2 e3(w2,i1,Y[2],Y[3]);

endmodule 
