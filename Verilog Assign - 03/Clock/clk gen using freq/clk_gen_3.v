`timescale 1ns/10ps
module clk_gen_3;
	reg clk;
	real tp;
	real freq;	
	initial begin
	//freq=100; //in Mhz

		$value$plusargs("freq=%0f ",freq);
				
		
		tp=1000/freq;// in ns
				
	

	end
	always begin
			
		clk=1;#(tp/2);
		clk=0;#(tp/2);
		end
		
	initial begin

	
		#100;
		$finish();

	end

endmodule
