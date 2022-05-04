module finalCompLab(clk,reset,Final_Out,instr);

input clk;
input reset;
input [31:0]instr;
wire [3:0]status;
wire Cin;
output [31:0]Final_Out;

assign Cin = 1'b0;
assign status = 4'b0000;

wire pcsrc;
wire [3:0]aluop;
wire [1:0]immsel;
wire wb;
wire alusrc;
wire regrw;
wire memrw;
wire co;
wire ramen;

CUFinal CUFinal_1(.instr(instr), .reset(reset), .clk(clk), .status(status), .pcsrc(pcsrc), .aluop(aluop), .immsel(immsel), .wb(wb), .alusrc(alusrc), .regrw(regrw), .memrw(memrw), .co(co),.ramen(ramen));

TopLab8 TopLab8_1(.Clk(clk),.Reset(reset),.PCSrc(pcsrc),.ALUSrc(alusrc),.ALUOp(aluop),.Cin(Cin),.RamEn(ramen),.RamWR(memrw),.MuxWB(wb),.Final_Out(Final_Out),.RegWrite(regrw),.immsel(immsel));

endmodule

