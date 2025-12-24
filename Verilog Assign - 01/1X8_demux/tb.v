`include "demux8X1.v"
module tb();
	reg i;
	reg [2:0]s;

	wire [7:0]y;

	demux8X1 dut(i,s,y);

	initial begin
		
		i=1'b1;s=3'b000;#50;
		$display("i=%0d s=%b y[s]=%b", i,s,y);

		i=1'b1;s=3'b001;#50;
		$display("i=%0d s=%b y[s]=%b", i,s,y);

		i=1'b1;s=3'b010;#50;
		$display("i=%0d s=%b y[s]=%b", i,s,y);

		i=1'b1;s=3'b011;#50;
		$display("i=%0d s=%b y[s]=%b", i,s,y);

		i=1'b1;s=3'b100;#50;
		$display("i=%0d s=%b y[s]=%b", i,s,y);

		i=1'b1;s=3'b101;#50;
		$display("i=%0d s=%b y[s]=%b", i,s,y);

		i=1'b1;s=3'b110;#50;
		$display("i=%0d s=%b y[s]=%b", i,s,y);

		i=1'b1;s=3'b111;#50;
		$display("i=%0d s=%b y[s]=%b", i,s,y);


	end
endmodule
