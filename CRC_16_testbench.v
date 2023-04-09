`timescale 1ns / 1ps

module CRC_16_testbench;
reg clk;
reg rst; 
reg crc_in;
wire [15:0]crc_lfsr;
CRC_16_serial u1(.clk(clk), .rst(rst), .crc_in(crc_in), .crc_lfsr(crc_lfsr)); 
// let data be 101010110001100101010110001100
initial  // Initialize the relevant values
begin 

  clk = 1; 
  rst = 0;
  #5 rst = 1;
  #5 rst = ~rst; 
  crc_in =  1 ; // Enter the data to be encoded 
  #5 clk = !clk;
  #5 clk = !clk;
  repeat(2)
  #5 clk = !clk;
  crc_in =  0 ; // Enter the data to be encoded
  
  repeat(2)
  #5 clk = !clk;
  crc_in =  1 ; // Enter the data to be encoded
  repeat(2)
  #5 clk = !clk;
  crc_in =  0 ; // Enter the data to be encoded
  repeat(2)
  #5 clk = !clk;
  crc_in =  1 ; // Enter the data to be encoded
  repeat(2)
  #5 clk = !clk;
  crc_in =  0 ; // Enter the data to be encoded
  repeat(2)
  #5 clk = !clk;
  crc_in =  1 ; // Enter the data to be encoded
  repeat(2)
  #5 clk = !clk;
  crc_in =  1 ; // Enter the data to be encoded
  repeat(2)
  #5 clk = !clk;
  crc_in =  1 ; // Enter the data to be encoded
  repeat(2)
  #5 clk = !clk;
  crc_in =  0 ; // Enter the data to be encoded
  repeat(2)
  #5 clk = !clk;
  crc_in =  0 ; // Enter the data to be encoded
  repeat(2)
  #5 clk = !clk;
   crc_in =  0 ; // Enter the data to be encoded
  repeat(2)
  #5 clk = !clk;
  crc_in =  1 ; // Enter the data to be encoded
  repeat(2)
  #5 clk = !clk;
  crc_in =  1 ; // Enter the data to be encoded
  repeat(2)
  #5 clk = !clk;
  crc_in =  0 ; // Enter the data to be encoded
  repeat(2)
  #5 clk = !clk;
  crc_in =  0 ; // Enter the data to be encoded
  repeat(2)
  #5 clk = !clk;
  crc_in =  1 ; // Enter the data to be encoded 
   repeat(2)
  #5 clk = !clk;
  crc_in =  0 ; // Enter the data to be encoded
  repeat(2)
  #5 clk = !clk;
  crc_in =  1 ; // Enter the data to be encoded
  repeat(2)
  #5 clk = !clk;
  crc_in =  0 ; // Enter the data to be encoded
  repeat(2)
  #5 clk = !clk;
  crc_in =  1 ; // Enter the data to be encoded
  repeat(2)
  #5 clk = !clk;
  crc_in =  0 ; // Enter the data to be encoded
  repeat(2)
  #5 clk = !clk;
  crc_in =  1 ; // Enter the data to be encoded
  repeat(2)
  #5 clk = !clk;
  crc_in =  1 ; // Enter the data to be encoded
  repeat(2)
  #5 clk = !clk;
  crc_in =  1 ; // Enter the data to be encoded
  repeat(2)
  #5 clk = !clk;
  crc_in =  0 ; // Enter the data to be encoded
  repeat(2)
  #5 clk = !clk;
  crc_in =  0 ; // Enter the data to be encoded
  repeat(2)
  #5 clk = !clk;
   crc_in =  0 ; // Enter the data to be encoded
  repeat(2)
  #5 clk = !clk;
  crc_in =  1 ; // Enter the data to be encoded
  repeat(2)
  #5 clk = !clk;
  crc_in =  1 ; // Enter the data to be encoded
  repeat(2)
  #5 clk = !clk;
  crc_in =  0 ; // Enter the data to be encoded
  repeat(2)
  #5 clk = !clk;
  crc_in =  0 ; // Enter the data to be encoded
  repeat(2)
  #5 clk = !clk;
end
endmodule
