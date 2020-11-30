module reg32file
(input clk,
 input reg_write,
 input [4:0] r_reg1,
 input [4:0] r_reg2,
 input [4:0] w_reg,
 input [31:0] w_data,
 output [31:0] r_data1,
 output [31:0] r_data2);

 reg [31:0] reg_file [0:31];

 assign r_data1 = reg_file[r_reg1];
 assign r_data2 = reg_file[r_reg2];

 always @(posedge clk)
	begin
	  if(reg_write)
	  begin
		reg_file[w_reg] <= w_data;
	  end
	end
endmodule

module reg32file_tb;

 reg clk, reg_write;
 reg [4:0] r_reg1, r_reg2, w_reg;
 reg [31:0] w_data;
 wire [31:0] r_data1, r_data2;

 integer i, j, k;

 reg32file x(.clk(clk),
	 .reg_write(reg_write),
	 .r_reg1(r_reg1),
	 .r_reg2(r_reg2),
	 .w_reg(w_reg),
	 .w_data(w_data),
	 .r_data1(r_data1),
	 .r_data2(r_data2));

always #5 clk = ~clk;
initial
begin 
clk <= 0;
reg_write <= 1;

	for (i=0;i<32;i=i+1)	//selecting the register to write
	begin
		w_data = $random;
		#5 w_reg <= i;
		#5 r_reg1 <= i;
		#5 r_reg2 <= i;
		#(5)
		$monitor("read port 1 = %d; read port 2 = %d;",r_data1,r_data2);
	end

end

endmodule
