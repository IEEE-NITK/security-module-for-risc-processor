`timescale 1ns / 1ps

// Sample data memory
module Data_Memory(
 input clk,
 input [31:0]   Adr,
 input [127:0]   MWD,
 input MWR,
 input MOE,
 output [127:0]   MRD
);

reg [127:0] memory [1023:0]; 

wire [5:0] ram_addr=Adr[5:0];

 always @(negedge clk) begin
  if (MWR)
   memory[ram_addr] <= MWD;
 end
 assign MRD = (MOE==1'b1) ? memory[ram_addr]: 128'd0; 
endmodule