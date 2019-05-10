`timescale 1ns / 1ps

module KeyRound(
    output [1:28] OUT_L,
    output [1:28] OUT_R,
    output [1:48] Key,
    input [1:28] IN_L,
    input [1:28] IN_R
    );
   wire [1:28] ShiftR,ShiftL; 
   Shift_2 step1(ShiftL,IN_L);
   Shift_2 step2(ShiftR,IN_R);
   Compresion_Dbox step3(Key,ShiftL,ShiftR);
   assign OUT_L = ShiftL;
   assign OUT_R = ShiftR;

    
endmodule
