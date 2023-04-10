`timescale  1ns/1ps
module  crc_tb;
reg [7:0] data_in;
reg crc_en,rst,clk;
wire [3:0]crc_out;

crc DUT(.data_in(data_in), .crc_en(crc_en), .crc_out(crc_out), .rst(rst), .clk(clk));
initial
begin
crc_en = 1;
rst = 0;
clk = 0;

#5 rst = ~rst;
#5 rst = ~rst;
data_in=8'hba;
repeat(4)
#5 clk = ~clk;

#5 rst = ~rst;
#5 rst = ~rst;
data_in=8'hca;
repeat(4)
#5 clk = ~clk;
end
endmodule
