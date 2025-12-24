`include "hs.v"
module tb_hs();

	reg a,b;
	wire borr,diff;

	hs sub(a,b,diff,borr);	

	initial begin
	
	a=0;b=0;#10;
	$display("a=%0d b=%0d diff=%0d borr=%0d", a,b,diff,borr);

	a=0;b=1;#10;
	$display("a=%0d b=%0d diff=%0d borr=%0d", a,b,diff,borr);

	a=1;b=0;#10;
	$display("a=%0d b=%0d diff=%0d borr=%0d", a,b,diff,borr);

	a=1;b=1;#10;
	$display("a=%0d b=%0d diff=%0d borr=%0d", a,b,diff,borr);

	end	

endmodule
