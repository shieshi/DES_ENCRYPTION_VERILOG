`timescale 1ns / 1ps

module Expansion_Dbox(output reg [1:48] OUT, input [1:32] IN );


always @(IN)
    begin 
        OUT[01] <= IN[32];
        OUT[02] <= IN[01];
        OUT[03] <= IN[02];
        OUT[04] <= IN[03];
        OUT[05] <= IN[04];
        OUT[06] <= IN[05];
        
        OUT[07] <= IN[04];
        OUT[08] <= IN[05];
        OUT[09] <= IN[06];
        OUT[10] <= IN[07];
        OUT[11] <= IN[08];
        OUT[12] <= IN[09];
        
        OUT[13] <= IN[08];
        OUT[14] <= IN[09];
        OUT[15] <= IN[10];
        OUT[16] <= IN[11];
        OUT[17] <= IN[12];
        OUT[18] <= IN[13];
        
        OUT[19] <= IN[12];
        OUT[20] <= IN[13];
        OUT[21] <= IN[14];
        OUT[22] <= IN[15];
        OUT[23] <= IN[16];
        OUT[24] <= IN[17];
        
        OUT[25] <= IN[16];
        OUT[26] <= IN[17];
        OUT[27] <= IN[18];
        OUT[28] <= IN[19];
        OUT[29] <= IN[20];
        OUT[30] <= IN[21];
        
        OUT[31] <= IN[20];
        OUT[32] <= IN[21];
        OUT[33] <= IN[22];
        OUT[34] <= IN[23];
        OUT[35] <= IN[24];
        OUT[36] <= IN[25];
        
        OUT[37] <= IN[24];
        OUT[38] <= IN[25];
        OUT[39] <= IN[26];
        OUT[40] <= IN[27];
        OUT[41] <= IN[28];
        OUT[42] <= IN[29];
        
        OUT[43] <= IN[28];
        OUT[44] <= IN[29];
        OUT[45] <= IN[30];
        OUT[46] <= IN[31];
        OUT[47] <= IN[32];
        OUT[48] <= IN[01];
        
    end
endmodule
