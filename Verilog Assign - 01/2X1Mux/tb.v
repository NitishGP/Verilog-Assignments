`include "mux2x1.v"
module tb();
	reg i0,i1,s;
	wire y;

	mux2x1 dut(i0,i1,s,y);

	initial begin 
		s=0;i0=0;i1=0;#10;
		$display ("s=%0d i0=%0d i1=%0d y=%0d",s,i0,i1, y );
		s=0;i0=0;i1=1;#10;
		$display ("s=%0d i0=%0d i1=%0d y=%0d", s,i0,i1, y  );
		s=0;i0=1;i1=0;#10;
		$display ("s=%0d i0=%0d i1=%0d y=%0d",  s,i0,i1, y  );
		s=0;i0=1;i1=1;#10;
		$display ("s=%0d i0=%0d i1=%0d y=%0d",  s,i0,i1, y  );
		s=1;i0=0;i1=0;#10;
		$display ("s=%0d i0=%0d i1=%0d y=%0d",  s,i0,i1, y  );
		s=1;i0=0;i1=1;#10;
		$display ("s=%0d i0=%0d i1=%0d y=%0d",  s,i0,i1, y  );
		s=1;i0=1;i1=0;#10;
		$display ("s=%0d i0=%0d i1=%0d y=%0d",  s,i0,i1, y  );
		s=1;i0=1;i1=1;#10;
		$display ("s=%0d i0=%0d i1=%0d y=%0d",  s,i0,i1, y  );

	end
endmodule
