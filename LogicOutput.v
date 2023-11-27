module LogicOutput(presState, green, yellow, red);
	input [1:0] presState;
	output reg green, yellow, red;
	
	
	always@(*) begin
		case(presState) 
			green: begin
				green = 1;
				yellow = 0;
				red = 0;
			end
			yellow: begin
				green = 0;
				yellow = 1;
				red = 0;
			end
			yellow: begin
				green = 0;
				yellow = 0;
				red = 1;
			end
			default: begin
				green = 1;
				yellow = 0;
				red = 0;
			end
		endcase
	end
endmodule