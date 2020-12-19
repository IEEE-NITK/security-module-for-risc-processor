`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// INPUT:-
// Address: 32-Bit address input port.
//
// OUTPUT:-
// Instruction: 32-Bit output port.
////////////////////////////////////////////////////////////////////////////////

module InstructionMemory(Address, Instruction); 

    input       [31:0]  Address;        // Input Address 

    output   [31:0]  Instruction;    // Instruction at memory location Address
    
    reg [31:0] mem[0:1024];

	initial
	begin
		$readmemh("code.txt",mem);
	end

	assign Instruction = mem[Address>>2];	
	

endmodule