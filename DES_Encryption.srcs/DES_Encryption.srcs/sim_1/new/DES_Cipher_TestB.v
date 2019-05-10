`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/10/2019 03:38:40 AM
// Design Name: 
// Module Name: DES_Cipher_TestB
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module DES_Cipher_TestB( );
reg [1:64] PlainTXT;
reg [1:64] Key;
reg Clk,Rst;
wire [1:64] CipherTXT;

test uut(.CipherTXT(CipherTXT), .PlainTXT(PlainTXT), .Key(Key), .Clk(Clk), .Rst(Rst));
initial 
begin 
Clk=0;
forever #5 Clk=~Clk;
end
initial 
    begin
    #0 Rst=1;
    #10 Rst=0;
        PlainTXT = 64'h123456ABCD132536;
        Key= 64'hAABB09182736CCDD;
    #400 $stop;    
    end    
endmodule
