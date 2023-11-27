module Timer(clk, reset, presStateRed, timeoutcounter);
	input clk, reset;
	input [1:0] presStateRed;
	output reg [3:0] timeoutcounter;
	
	always@(posedge clk, negedge reset)begin
		if(reset == 0) begin
			timeoutcounter <= 0;
		end
		else begin 
		if (presStateRed && timeoutcounter < 15) begin
        timeoutcounter  <= timeoutcounter + 1;
      end
	end
	end
endmodule