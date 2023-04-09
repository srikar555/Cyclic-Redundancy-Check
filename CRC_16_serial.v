
module CRC_16_serial(clk,rst,crc_in,crc_lfsr); 
input clk; // input signal
input rst; // reset signal
input crc_in; // input bit
output reg [ 15 : 0 ] crc_lfsr; // Linear shift register, 16bit
reg crc_out; // register, 1bit
parameter poly =  16'b1000_0000_0000_0101 ; // check polynomial without the highest degree

always @( posedge clk or posedge rst) // Execute whenever the positive edge of clk
 if(rst) begin 
crc_lfsr[ 15 : 0 ] <=  16'h0000 ; // initial value 
 end 
 else begin
 //  polynomial x^16+x^15+x^2+1
 // xor with data is msb is one else just left shift
   crc_lfsr[0] <=  crc_lfsr[15] ^ crc_in; //poly[0] is generally one
   crc_lfsr[1] <= crc_lfsr[0] ^ (poly[1]&crc_lfsr[15]); 
   crc_lfsr[2] <= crc_lfsr[1] ^ (poly[2]&crc_lfsr[15]); 
   crc_lfsr[3] <= crc_lfsr[2] ^ (poly[3]&crc_lfsr[15]); 
   crc_lfsr[4] <= crc_lfsr[3] ^ (poly[4]&crc_lfsr[15]); 
   crc_lfsr[5] <= crc_lfsr[4] ^ (poly[5]&crc_lfsr[15]); 
   crc_lfsr[6] <= crc_lfsr[5] ^ (poly[6]&crc_lfsr[15]); 
   crc_lfsr[7] <= crc_lfsr[6]^ (poly[7]&crc_lfsr[15]); 
   crc_lfsr[8] <= crc_lfsr[7] ^ (poly[8]&crc_lfsr[15]); 
   crc_lfsr[9] <= crc_lfsr[8] ^ (poly[9]&crc_lfsr[15]); 
   crc_lfsr[10] <= crc_lfsr[9] ^ (poly[10]&crc_lfsr[15]); 
   crc_lfsr[11] <= crc_lfsr[10] ^ (poly[11]&crc_lfsr[15]); 
   crc_lfsr[12] <= crc_lfsr[11] ^ (poly[12]&crc_lfsr[15]); 
   crc_lfsr[13] <= crc_lfsr[12] ^ (poly[13]&crc_lfsr[15]); 
   crc_lfsr[14] <= crc_lfsr[13] ^ (poly[14]&crc_lfsr[15]); 
   crc_lfsr[15] <= crc_lfsr[14] ^ (poly[15]&crc_lfsr[15]); 
crc_out <= crc_lfsr[ 15 ]; // scratch register 15 as output
end
endmodule