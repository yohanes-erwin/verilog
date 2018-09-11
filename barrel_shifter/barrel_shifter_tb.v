`timescale 1 ns/10 ps

module barrel_shifter_tb;
	// Signal declaration
	reg [7:0] a_test;
	reg [2:0] amt_test;
	wire [7:0] y_test;
	
	// Instantiate the circuit under test
	barrel_shifter uut (.a(a_test), .amt(amt_test), .y(y_test));
	
	// Test vector generator
	initial
	begin
		a_test = 8'b10010011;
		
		amt_test = 3'o1;
		# 200;

		amt_test = 3'o3;
		# 200;

		amt_test = 3'o5;
		# 200;
		
		// Stop simulation
		$stop;
	end
	
endmodule
