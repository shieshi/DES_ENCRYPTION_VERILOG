`timescale 1ns / 1ps

module Final_Permutation(output reg [1:64] OUT, input [1:32] L,input [1:32] R );
wire [1:64] IN = {L,R};
always @(IN)
    begin 
        OUT[01] <= IN[40];
        OUT[02] <= IN[08];
        OUT[03] <= IN[48];
        OUT[04] <= IN[16];
        OUT[05] <= IN[56];
        OUT[06] <= IN[24];
        OUT[07] <= IN[64];
        OUT[08] <= IN[32];
        
        OUT[09] <= IN[39];
        OUT[10] <= IN[07];
        OUT[11] <= IN[47];
        OUT[12] <= IN[15];
        OUT[13] <= IN[55];
        OUT[14] <= IN[23];
        OUT[15] <= IN[63];
        OUT[16] <= IN[31];
        OUT[17] <= IN[38];
        OUT[18] <= IN[06];
        OUT[19] <= IN[46];
        OUT[20] <= IN[14];
        OUT[21] <= IN[54];
        OUT[22] <= IN[22];
        OUT[23] <= IN[62];
        OUT[24] <= IN[30];
        
        OUT[25] <= IN[37];
        OUT[26] <= IN[05];
        OUT[27] <= IN[45];
        OUT[28] <= IN[13];
        OUT[29] <= IN[53];
        OUT[30] <= IN[21];
        OUT[31] <= IN[61];
        OUT[32] <= IN[29];
        
        OUT[33] <= IN[36];
        OUT[34] <= IN[04];
        OUT[35] <= IN[44];
        OUT[36] <= IN[12];
        OUT[37] <= IN[52];
        OUT[38] <= IN[20];
        OUT[39] <= IN[60];
        OUT[40] <= IN[28];
        OUT[41] <= IN[35];
        OUT[42] <= IN[03];
        OUT[43] <= IN[43];
        OUT[44] <= IN[11];
        OUT[45] <= IN[51];
        OUT[46] <= IN[19];
        OUT[47] <= IN[59];
        OUT[48] <= IN[27];
        
        OUT[49] <= IN[34];
        OUT[50] <= IN[02];
        OUT[51] <= IN[42];
        OUT[52] <= IN[10];
        OUT[53] <= IN[50];
        OUT[54] <= IN[18];
        OUT[55] <= IN[58];
        OUT[56] <= IN[26];
        
        OUT[57] <= IN[33];
        OUT[58] <= IN[01];
        OUT[59] <= IN[41];
        OUT[60] <= IN[09];
        OUT[61] <= IN[49];
        OUT[62] <= IN[17];
        OUT[63] <= IN[57];
        OUT[64] <= IN[25];
    end
endmodule

