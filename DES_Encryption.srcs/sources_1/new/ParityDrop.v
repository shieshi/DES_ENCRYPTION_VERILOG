`timescale 1ns / 1ps


module ParityDrop(
    output reg [1:56] OUT,
    input [1:64] IN
    );
    
    always @(IN) 
    begin
    
            OUT[01] <= IN[57];
            OUT[02] <= IN[49];
            OUT[03] <= IN[41];
            OUT[04] <= IN[33];
            OUT[05] <= IN[25];
            OUT[06] <= IN[17];
            OUT[07] <= IN[09];
            OUT[08] <= IN[01];
            
            OUT[09] <= IN[58];
            OUT[10] <= IN[50];
            OUT[11] <= IN[42];
            OUT[12] <= IN[34];
            OUT[13] <= IN[26];
            OUT[14] <= IN[18];
            OUT[15] <= IN[10];
            OUT[16] <= IN[02];
            
            OUT[17] <= IN[59];
            OUT[18] <= IN[51];
            OUT[19] <= IN[43];
            OUT[20] <= IN[35];
            OUT[21] <= IN[27];
            OUT[22] <= IN[19];
            OUT[23] <= IN[11];
            OUT[24] <= IN[03];
            
            OUT[25] <= IN[60];
            OUT[26] <= IN[52];
            OUT[27] <= IN[44];
            OUT[28] <= IN[36];
            OUT[29] <= IN[63];
            OUT[30] <= IN[55];
            OUT[31] <= IN[47];
            OUT[32] <= IN[39];
            
            OUT[33] <= IN[31];
            OUT[34] <= IN[23];
            OUT[35] <= IN[15];
            OUT[36] <= IN[07];
            OUT[37] <= IN[62];
            OUT[38] <= IN[54];
            OUT[39] <= IN[46];
            OUT[40] <= IN[38];
            
            OUT[41] <= IN[30];
            OUT[42] <= IN[22];
            OUT[43] <= IN[14];
            OUT[44] <= IN[06];
            OUT[45] <= IN[61];
            OUT[46] <= IN[53];
            OUT[47] <= IN[45];
            OUT[48] <= IN[37];
           
            OUT[49] <= IN[29];
            OUT[50] <= IN[21];
            OUT[51] <= IN[13];
            OUT[52] <= IN[05];
            OUT[53] <= IN[28];
            OUT[54] <= IN[20];
            OUT[55] <= IN[12];
            OUT[56] <= IN[04];
    
    
    end 

endmodule
