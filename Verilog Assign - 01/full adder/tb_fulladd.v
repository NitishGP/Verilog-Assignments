`include "fulladd.v"
module tb_fulladd();

	reg a,b,c;
	wire sum,carry;

		//DUT instantiation
	fulladd hey(a,b,c,sum,carry);
	
	initial begin
		a=0;b=0;c=0;#10;
		$display("a=%0d b=%0d c=%0d sum=%0d carry=%0d", a,b,c,sum,carry);

		a=0;b=0;c=1;#10;
		$display("a=%0d b=%0d c=%0d sum=%0d carry=%0d", a,b,c,sum,carry);

		a=0;b=1;c=0;#10;
		$display("a=%0d b=%0d c=%0d sum=%0d carry=%0d", a,b,c,sum,carry);

		a=0;b=1;c=1;#10;
		$display("a=%0d b=%0d c=%0d sum=%0d carry=%0d", a,b,c,sum,carry);

		a=1;b=0;c=0;#10;
		$display("a=%0d b=%0d c=%0d sum=%0d carry=%0d", a,b,c,sum,carry);

		a=1;b=0;c=1;#10;
		$display("a=%0d b=%0d c=%0d sum=%0d carry=%0d", a,b,c,sum,carry);

		a=1;b=1;c=0;#10;
		$display("a=%0d b=%0d c=%0d sum=%0d carry=%0d", a,b,c,sum,carry);

		a=1;b=1;c=1;#10;
		$display("a=%0d b=%0d c=%0d sum=%0d carry=%0d", a,b,c,sum,carry);


	end

endmodule

