module TrafficLightController_top(clk, reset, car, green, yellow, red, seg0);
	input clk, reset, car;
	output green, yellow, red;
	output [6:0] seg0;
	
	wire greenWire, yellowWire, redWire;
	wire [6:0] seg0Wire, presStateWire;
	
	StateTransitions (.clk(clk), .reset(reset), .car(car),
							.green(greenWire), .yellow(yellowWire), .red(redWire));
							
	LogicOutput lo(.presState(presStateWire), .green(green), .yellow(yellow), .red(red));
	
	DisplayManager(.presState(presStateWire), .seg0(seg0));
	
endmodule