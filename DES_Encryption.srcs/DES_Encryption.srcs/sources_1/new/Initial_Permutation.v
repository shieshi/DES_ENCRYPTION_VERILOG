`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: UAEU
// Engineer: Shamma Ahmed 
// 
// Create Date: 04/26/2019 09:19:07 PM
// Design Name: 
// Module Name: Initial_Permutation
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: initial permutation for DES encryption 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Initial_Permutation(output [1:32] L,output [1:32] R, input [1:64] IN);
reg [1:64] OUT;
always @(IN)
    begin
        OUT[01] <= IN[58];
        OUT[02] <= IN[50];
        OUT[03] <= IN[42];
        OUT[04] <= IN[34];
        OUT[05] <= IN[26];
        OUT[06] <= IN[18];
        OUT[07] <= IN[10];
        OUT[08] <= IN[02];
        
        OUT[09] <= IN[60];
        OUT[10] <= IN[52];
        OUT[11] <= IN[44];
        OUT[12] <= IN[36];
        OUT[13] <= IN[28];
        OUT[14] <= IN[20];
        OUT[15] <= IN[12];
        OUT[16] <= IN[04];
        
        OUT[17] <= IN[62];
        OUT[18] <= IN[54];
        OUT[19] <= IN[46];
        OUT[20] <= IN[38];
        OUT[21] <= IN[30];
        OUT[22] <= IN[22];
        OUT[23] <= IN[14];
        OUT[24] <= IN[06];
        
        OUT[25] <= IN[64];
        OUT[26] <= IN[56];
        OUT[27] <= IN[48];
        OUT[28] <= IN[40];
        OUT[29] <= IN[32];
        OUT[30] <= IN[24];
        OUT[31] <= IN[16];
        OUT[32] <= IN[08];
        
        OUT[33] <= IN[57];
        OUT[34] <= IN[49];
        OUT[35] <= IN[41];
        OUT[36] <= IN[33];
        OUT[37] <= IN[25];
        OUT[38] <= IN[17];
        OUT[39] <= IN[09];
        OUT[40] <= IN[01];
        
        OUT[41] <= IN[59];
        OUT[42] <= IN[51];
        OUT[43] <= IN[43];
        OUT[44] <= IN[35];
        OUT[45] <= IN[27];
        OUT[46] <= IN[19];
        OUT[47] <= IN[11];
        OUT[48] <= IN[03];
       
        OUT[49] <= IN[61];
        OUT[50] <= IN[53];
        OUT[51] <= IN[45];
        OUT[52] <= IN[37];
        OUT[53] <= IN[29];
        OUT[54] <= IN[21];
        OUT[55] <= IN[13];
        OUT[56] <= IN[05];
        
        OUT[57] <= IN[63];
        OUT[58] <= IN[55];
        OUT[59] <= IN[47];
        OUT[60] <= IN[39];
        OUT[61] <= IN[31];
        OUT[62] <= IN[23];
        OUT[63] <= IN[15];
        OUT[64] <= IN[07]; 
    end
    assign L = OUT[1:32];
    assign R = OUT[33:64];    
endmodule
