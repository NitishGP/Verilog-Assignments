module  dec_1x2(en,i,y0,y1);
	input en,i;
	output  y0,y1;

	assign y0 =  ~i & en;
	assign y1 = i & en;
endmodule



