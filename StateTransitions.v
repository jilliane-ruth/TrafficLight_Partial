module StateTransitions (clk, reset, car, green, yellow, red);
  input clk, reset, car; //car - button
  input green, yellow, red;
  reg [1:0] presState, nextState; //y- presState, Y- nextState
  reg [3:0] timeoutcounter;
  
  parameter Green = 2'b00, Yellow = 2'b01, Red = 2'b10;

  always @(posedge clk , posedge reset) begin
    if(reset) begin
      presState <= Green;
    end 
    else begin
      case(presState) 
        Green:
          if (car == 1) begin
            nextState = Yellow;
          end
          else begin 
            nextState = Green; 
          end 
        Yellow:
          if (car == 1) begin
            nextState = Red;
          end 
          else begin
            nextState = Yellow;
          end
        Red:
          if(timeoutcounter ==  15) begin 
            nextState = Green;
          end
          else begin
            nextState = Red;
				timeoutcounter <= timeoutcounter + 1;
          end
        default: nextState = Green;
      endcase
     end
  end


endmodule