`timescale 1 ns/ 10 ps

module bcd_incrementer_tb;
	// Signal declaration 
	reg [3:0] in_test;
	reg en_test;
	wire [3:0] out_test;
	wire carry_test;
	
	// Instantiate the circuit under test
	bcd_incrementer uut 
		(.in(in_test), .en(en_test), .out(out_test), .carry(carry_test));
	
	// Test vector generator
	initial
	begin
		en_test = 1'b0;

		in_test = 4'b0000;
		# 200;
		in_test = 4'b0011;
		# 200;
		in_test = 4'b1001;
		# 200;
		in_test = 4'b1100;
		# 200;

		en_test = 1'b1;

		in_test = 4'b0000;
		# 200;
		in_test = 4'b0011;
		# 200;
		in_test = 4'b1001;
		# 200;
		in_test = 4'b1100;
		# 200;

		// Stop simulation
		$stop;
	end
	
endmodule
