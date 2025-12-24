`include "dec_3x8.v"
module tb();
	reg en;
	reg [2:0]I;
	wire [7:0]Y;

	dec_3x8 dut(en,I,Y);

	initial begin
		en=1;I=3'b001;#50;
		$display("en=%0d I=%b Y=%b", en, I, Y);

		en=0;I=3'b000;#50;
		$display("en=%0d I=%b Y=%b", en, I, Y);

		en=0;I=3'b001;#50;
		$display("en=%0d I=%b Y=%b", en, I, Y);

		en=0;I=3'b010;#50;
		$display("en=%0d I=%b Y=%b", en, I, Y);

		en=0;I=3'b011;#50;
		$display("en=%0d I=%b Y=%b", en, I, Y);

		en=0;I=3'b100;#50;
		$display("en=%0d I=%b Y=%b", en, I, Y);

		en=0;I=3'b101;#50;
		$display("en=%0d I=%b Y=%b", en, I, Y);

		en=0;I=3'b110;#50;
		$display("en=%0d I=%b Y=%b", en, I, Y);

		en=0;I=3'b111;#50;
		$display("en=%0d I=%b Y=%b", en, I, Y);


	end
endmodule
