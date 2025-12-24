module dec_3x8(en,I,Y);
	input [2:0]I;
	input en;
	output reg [7:0]Y;

	always @(*) begin
		if (en==0) begin
			case(I)
				3'b000 : Y=8'b10000000;

				3'b001 : Y=8'b01000000;

				3'b010 : Y=8'b00100000;

				3'b011 : Y=8'b00010000;

				3'b100 : Y=8'b00001000;

				3'b101 : Y=8'b00000100;

				3'b110 : Y=8'b00000010;

				default : Y=8'b00000001;


			endcase

		end
		else begin
			Y=8'b0;
		end
	end
endmodule
