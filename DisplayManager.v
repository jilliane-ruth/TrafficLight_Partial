module DisplayManager(presState, seg0);
	 input [1:0 ]presState;
	 output reg [6:0] seg0;

	 always@(*)begin
		case(presState) 
			2'b00 : seg0 = 7'b1111101; //green
			2'b01 : seg0 = 7'b0011001; //yellow
			2'b10 : seg0 = 7'b0101111;  //r; //red
		endcase
	 end
endmodule