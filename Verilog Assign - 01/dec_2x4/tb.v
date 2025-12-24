`include "dec_2x4.v"
module tb();
	reg en,i0,i1;
	wire [3:0]Y;

	dec_2x4 dut(en,i0,i1,Y);

	initial begin
		en=0;i0=0;i1=0;#10;
		$display("en=%0d i0=%0d i1=%0d y=%b", en, i0, i1, Y);

		en=1;i0=0;i1=0;#10;
		$display("en=%0d i0=%0d i1=%0d y=%b", en, i0, i1, Y);


		en=1;i0=0;i1=1;#10;
		$display("en=%0d i0=%0d i1=%0d y=%b", en, i0, i1, Y);


		en=1;i0=1;i1=0;#10;
		$display("en=%0d i0=%0d i1=%0d y=%b", en, i0, i1, Y);


		en=1;i0=1;i1=1;#10;
		$display("en=%0d i0=%0d i1=%0d y=%b", en, i0, i1, Y);




	end
endmodule
