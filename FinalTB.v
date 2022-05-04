module FinalTB();

reg clk;
reg reset;
reg [31:0]instr;
wire [31:0]Final_Out;

finalCompLab TbFinalCompLab_1(.clk(clk),.reset(reset),.Final_Out(Final_Out),.instr(instr));


initial begin

 instr <= 32'b00000000010000000000000010010011;
 reset <= 0;
 clk <= 0;
#50;
 clk <= 1;
 #50;
 reset <= 1;
 clk <= 0;
 #50;
 clk <=1;
 #50;
 clk <=0;
 reset <=0;
 #50;
 instr <= 32'b00000000100000000000000100010011;
 clk <=1;
 #50;
 clk <=0;
 #50;
 instr<= 32'b00000000001000001000000110110011;
 clk <=1;
 #50;
 clk<= 0;
 #50;
 instr <= 32'b00000000000100000000000000100011;
 clk <=1;
 #50;
 clk<= 0;
 #50;
 instr <= 32'b00000000001000000000001000100011;
 clk <=1;
 #50;
 clk <=0;
 #50;
 instr <= 32'b00000000000000000000001000000011;
 clk<= 1;
 #50;
 clk <=0;
 #50;
 instr<= 32'b01000000001000010000010001100011;
 clk<= 1;
 #50;
 clk<= 1;
 clk <=0;
 #50;
 clk <=1;
 #50;

end



endmodule
