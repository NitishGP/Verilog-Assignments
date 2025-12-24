module mux_5X1(i,s,y);

	input [4:0]i;
	input [2:0]s;

	output reg y;

	always @(*) begin
		case(s)
			3'b000 : y=i[0];
			3'b001 : y=i[1];
			3'b010 : y=i[2];
			3'b011 : y=i[3];
			3'b100 : y=i[4];
			default : y=1'bx;
		endcase
	end

endmodule



 
