`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/08/2019 10:41:27 PM
// Design Name: 
// Module Name: Compresion_Dbox
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


module Compresion_Dbox(
    output reg [1:48] OUT,
    input [1:28] L,
    input [1:28] R
    );
    
    wire [1:56] IN = {L,R};
    
 always @(IN) 
    begin
            OUT[01] <= IN[14];
            OUT[02] <= IN[17];
            OUT[03] <= IN[11];
            OUT[04] <= IN[24];
            OUT[05] <= IN[01];
            OUT[06] <= IN[05];
            OUT[07] <= IN[03];
            OUT[08] <= IN[28];
            
            OUT[09] <= IN[15];
            OUT[10] <= IN[06];
            OUT[11] <= IN[21];
            OUT[12] <= IN[10];
            OUT[13] <= IN[23];
            OUT[14] <= IN[19];
            OUT[15] <= IN[12];
            OUT[16] <= IN[04];
            
            OUT[17] <= IN[26];
            OUT[18] <= IN[08];
            OUT[19] <= IN[16];
            OUT[20] <= IN[07];
            OUT[21] <= IN[27];
            OUT[22] <= IN[20];
            OUT[23] <= IN[13];
            OUT[24] <= IN[02];
            
            OUT[25] <= IN[41];
            OUT[26] <= IN[52];
            OUT[27] <= IN[31];
            OUT[28] <= IN[37];
            OUT[29] <= IN[47];
            OUT[30] <= IN[55];
            OUT[31] <= IN[30];
            OUT[32] <= IN[40];
            
            OUT[33] <= IN[51];
            OUT[34] <= IN[45];
            OUT[35] <= IN[33];
            OUT[36] <= IN[48];
            OUT[37] <= IN[44];
            OUT[38] <= IN[49];
            OUT[39] <= IN[39];
            OUT[40] <= IN[56];
            
            OUT[41] <= IN[34];
            OUT[42] <= IN[53];
            OUT[43] <= IN[46];
            OUT[44] <= IN[42];
            OUT[45] <= IN[50];
            OUT[46] <= IN[36];
            OUT[47] <= IN[29];
            OUT[48] <= IN[32];
   end
    
endmodule
