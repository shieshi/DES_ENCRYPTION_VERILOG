`timescale 1ns / 1ps

module Straight_Dbox(output reg [1:32] OUT, input [1:32] IN);

always @(IN)
    begin 
        OUT[01] <= IN[16];
        OUT[02] <= IN[07];
        OUT[03] <= IN[20];
        OUT[04] <= IN[21];
        OUT[05] <= IN[29];
        OUT[06] <= IN[12];
        OUT[07] <= IN[28];
        OUT[08] <= IN[17];
        
        OUT[09] <= IN[01];
        OUT[10] <= IN[15];
        OUT[11] <= IN[23];
        OUT[12] <= IN[26];
        OUT[13] <= IN[05];
        OUT[14] <= IN[18];
        OUT[15] <= IN[31];
        OUT[16] <= IN[10];
        
        OUT[17] <= IN[02];
        OUT[18] <= IN[08];
        OUT[19] <= IN[24];
        OUT[20] <= IN[14];
        OUT[21] <= IN[32];
        OUT[22] <= IN[27];
        OUT[23] <= IN[03];
        OUT[24] <= IN[09];
        OUT[25] <= IN[19];
        OUT[26] <= IN[13];
        OUT[27] <= IN[30];
        OUT[28] <= IN[06];
        OUT[29] <= IN[22];
        OUT[30] <= IN[11];
        OUT[31] <= IN[04];
        OUT[32] <= IN[25];
    end
endmodule
