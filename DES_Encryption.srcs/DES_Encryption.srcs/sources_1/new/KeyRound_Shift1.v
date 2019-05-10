`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/10/2019 12:43:53 AM
// Design Name: 
// Module Name: KeyRound_Shift1
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


module KeyRound_Shift1(
    output [1:28] OUT_L,
    output [1:28] OUT_R,
    output [1:48] Key,
    input [1:28] IN_L,
    input [1:28] IN_R
    );
    wire [1:28] ShiftR,ShiftL; 
    Shift_1 step1(ShiftL,IN_L);
    Shift_1 step2(ShiftR,IN_R);
    Compresion_Dbox step3(Key,ShiftL,ShiftR);
    assign OUT_L = ShiftL;
    assign OUT_R = ShiftR;

endmodule
