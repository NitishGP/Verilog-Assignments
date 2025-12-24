module demux1x2(i,s,y);
	input i;
	input s;
	output reg [1:0]y;
	
	always @(*) begin
		if(s==0) begin
			y[0]=i;y[1]=1'bx;
		end
		else begin
			y[1]=i;y[0]=1'bx;
		end
		
	end
endmodule
