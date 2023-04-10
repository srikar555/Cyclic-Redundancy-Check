module  crc(
  input [7:0] data_in,
  input crc_en,
  output [3:0] crc_out,
  input rst,
  input clk);

  reg [3:0] lfsr_q,lfsr_c; // lfsr_q is Min, lfsr_c is Mout and data_in is Nin
  assign crc_out = lfsr_q;

  always @(*) begin
    lfsr_c[0] = lfsr_q[3] ^ data_in[0] ^ data_in[1] ^ data_in[3] ^ data_in[7];
    lfsr_c[1] = lfsr_q[0] ^ data_in[1] ^ data_in[2] ^ data_in[4];
    lfsr_c[2] = lfsr_q[1] ^ lfsr_q[3] ^ data_in[0] ^ data_in[1] ^ data_in[2] ^ data_in[5] ^ data_in[7];
    lfsr_c[3] = lfsr_q[2] ^ lfsr_q[3] ^ data_in[0] ^ data_in[2] ^ data_in[6] ^ data_in[7];

  end // always

  always @(posedge clk, posedge rst) begin
    if(rst) begin
      lfsr_q <= 4'b1111;
    end
    else begin
      lfsr_q <= crc_en ? lfsr_c : lfsr_q;
    end
  end // always
endmodule // crc
