`include "demux1x2.v"
module tb();
	reg i,s;
	wire [1:0]y;

	demux1x2 dut(i,s,y);

	initial begin

		i=0;s=0;#50;
		$display("i=%0d s=%0d y[0]=%0d y[1]=%0d", i, s, y[0], y[1]);

		i=0;s=1;#50;
		$display("i=%0d s=%0d y[0]=%0d y[1]=%0d", i, s, y[0], y[1]);

		i=1;s=0;#50;
		$display("i=%0d s=%0d y[0]=%0d y[1]=%0d", i, s, y[0], y[1]);

		i=1;s=1;#50;
		$display("i=%0d s=%0d y[0]=%0d y[1]=%0d", i, s, y[0], y[1]);

	end

endmodule
