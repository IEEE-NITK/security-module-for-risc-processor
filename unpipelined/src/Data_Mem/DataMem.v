// Verilog code for data Memory
module Data_Memory(
 input clk,
 // address input, shared by read and write port
 input [31:0]   Adr,
 
 // write port
 input [31:0]   WD,
 input WE,
 input OE,
 // read port
 output [31:0]   RD
);

reg [31:0] memory [2^30-1:0]; 
//check no. of rows

wire [5:0] ram_addr=Adr[5:0];

 always @(posedge clk) begin
  if (WE)
   memory[ram_addr] <= WD;
 end
 assign RD = (OE==1'b1) ? memory[ram_addr]: 32'd0; 

endmodule
