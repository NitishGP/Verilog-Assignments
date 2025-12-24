module mux2x1(i0,i1,s,y);
	input i0,i1,s;
	output reg y;

	//assign y=~s&i0 | s&i1;

	always @(*) begin
		if(s==0) begin 
			y=i0;
		end
		else begin 
			y=i1;
		end

	end

endmodule









