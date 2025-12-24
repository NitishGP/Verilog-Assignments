`include "fs.v"
module tb_fs();
	reg a,b,c;
	wire diff,borr;

	fs subt(a,b,c,diff,borr);
	initial begin
	
	a=0;b=0;c=0;#10;
	$display(" a=%0d b=%0d c=%0d diff=%0d borr=%0d", a, b, c, diff, borr);
	a=0;b=0;c=1;#10;
	$display(" a=%0d b=%0d c=%0d diff=%0d borr=%0d", a, b, c, diff, borr);
	a=0;b=1;c=0;#10;
	$display(" a=%0d b=%0d c=%0d diff=%0d borr=%0d", a, b, c, diff, borr);
	a=0;b=1;c=1;#10;
	$display(" a=%0d b=%0d c=%0d diff=%0d borr=%0d", a, b, c, diff, borr);
	a=1;b=0;c=0;#10;
	$display(" a=%0d b=%0d c=%0d diff=%0d borr=%0d", a, b, c, diff, borr);
	a=1;b=0;c=1;#10;
	$display(" a=%0d b=%0d c=%0d diff=%0d borr=%0d", a, b, c, diff, borr);
	a=1;b=1;c=0;#10;
	$display(" a=%0d b=%0d c=%0d diff=%0d borr=%0d", a, b, c, diff, borr);
	a=1;b=1;c=1;#10;
	$display(" a=%0d b=%0d c=%0d diff=%0d borr=%0d", a, b, c, diff, borr);

	end
endmodule
