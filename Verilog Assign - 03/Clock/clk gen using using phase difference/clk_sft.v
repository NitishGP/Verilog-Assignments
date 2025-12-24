// Code your testbench here
// or browse Examples
`timescale 1ns/10ps
module clk_gen_3;
  
  parameter runtime = 100;
	reg clk,clk_sft;
	real tp,ton;
	real freq,dc,shift;	
	initial begin
	//freq=100; //in Mhz

		$value$plusargs("freq=%0f ",freq);
        $value$plusargs("dc=%0f ",dc);
        $value$plusargs("shift=%0f ",shift);
				
		
		tp=1000/freq;// in ns
      	ton=dc*tp/100.0;
				
	

	end
	always begin
			
      clk=1;#(ton);
      clk=0;#(tp-ton);
	end
  
  	initial begin
      clk_sft=0;#(tp*shift/360.0)
      repeat(runtime/tp) begin
        clk_sft=1;#(ton);
        clk_sft=0;#(tp-ton);
      end
    end
		
	initial begin

	
		#runtime;
		$finish();

	end
	initial begin
      $dumpfile("dump.vcd"); $dumpvars;
    end
endmodule
