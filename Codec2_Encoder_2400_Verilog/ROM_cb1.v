/*
* Module         - ROM_cb1
* Top module     - cbselect
* Project        - CODEC2_ENCODE_2400
* Developer      - Santhiya S
* Date           - Mon Feb 04 15:19:31 2019
*
* Description    -
* Inputs         -
*static const float codes1[] = {
 500,
  550,
  600,
  650,
  700,
  750,
  800,
  850,
  900,
  950,
  1000,
  1050,
  1100,
  1150,
  1200,
  1250
*};
*32 bits fixed point representation
   S - E  - M
   1 - 15 - 16
*/
module ROM_cb1(addr,dataout);

	parameter N = 32;
	input [3:0] addr;
	output reg [N-1:0] dataout;

	reg [N-1:0] cb1[15:0];
	
	always@(*)
	begin
		cb1[0] = 32'b00000001010001010000000000000000;
		cb1[1] = 32'b00000001010111100000000000000000;
		cb1[2] = 32'b00000001011101110000000000000000;
		cb1[3] = 32'b00000001100100000000000000000000;
		cb1[4] = 32'b00000001101010010000000000000000;
		cb1[5] = 32'b00000001110000100000000000000000;
		cb1[6] = 32'b00000001110110110000000000000000;
		cb1[7] = 32'b00000001111101000000000000000000;
		cb1[8] = 32'b00000010000011010000000000000000;
		cb1[9] = 32'b00000010001001100000000000000000;
		cb1[10] = 32'b00000010001111110000000000000000;
		cb1[11] = 32'b00000010010110000000000000000000;
		cb1[12] = 32'b00000010011100010000000000000000;
		cb1[13] = 32'b00000010100010100000000000000000;
		cb1[14] = 32'b00000010101000110000000000000000;
		cb1[15] = 32'b00000010101111000000000000000000;
		dataout = cb1[addr];
	end
endmodule