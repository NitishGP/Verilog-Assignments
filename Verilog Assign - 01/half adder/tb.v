`include "half_adder.v"
module tb();

	reg a,b;
	wire sum,carry;

	//DUT instantiation
	half_adder dut(a,b,sum,carry);

	//Generating Stimulus	
	initial begin

		a=0;b=0;#5;
		$display("a=%0d b=%0d sum=%0d carry=%0d", a,b,sum,carry);

		a=0;b=1;#5;
		$display("a=%0d b=%0d sum=%0d carry=%0d", a,b,sum,carry);

		a=1;b=0;#5;
		$display("a=%0d b=%0d sum=%0d carry=%0d", a,b,sum,carry);

		a=1;b=1;#5;
		$display("a=%0d b=%0d sum=%0d carry=%0d", a,b,sum,carry);



	end
				
	
endmodule