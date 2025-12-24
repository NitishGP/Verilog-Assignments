module penc_3x8(en,I,Y);
	input en;
	input [7:0]Y;
	
	output reg[2:0] I;

	always @(*) begin
		if (en==0) begin
			casex (Y)
				8'b00000001 : I = 3'b000;

				8'b0000001x : I = 3'b001;

				8'b000001xx : I = 3'b010;

				8'b00001xxx : I = 3'b011;

				8'b0001xxxx : I = 3'b100;

				8'b001xxxxx : I = 3'b101;

				8'b01xxxxxx : I = 3'b110;

				8'b1xxxxxxx : I = 3'b111;

				default : I = 3'bx;
			endcase
		end

		else begin
			I=3'bz;
		end
	end
endmodule
