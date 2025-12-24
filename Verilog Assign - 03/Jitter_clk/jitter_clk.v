`timescale 1ns/1ps
module jitter_clk;
	reg clk;

	real freq,tp,ton,toff,tp_jitter,jitter,jitter_factor,dc;

	initial begin
		
		$value$plusargs("freq=%f",freq);
		$value$plusargs("dc=%f",dc);
		$value$plusargs("jitter=%f",jitter);
		tp=1000/freq;

		#200;
		$finish();


	end

	always begin

		jitter_factor = $urandom_range(100-jitter,100+jitter)/100.0;
		jitter_tp = tp * jitter_factor;

		ton = tp_jitter * dc / 100.0;
		toff = tp_jitter - toff;

		clk=0;#(toff);
		clk=0;#(ton);
	end

endmodule
