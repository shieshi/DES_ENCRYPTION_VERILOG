`timescale 1ns / 1ps

module Mixer(
    output [1:32] OUT_L,
    output [1:32] OUT_R,
    input [1:32] IN_L,
    input [1:32] IN_R,
    input [1:48] Key
    );
   wire [1:32] Function;
   DES_Function step1(Function,IN_R,Key);
   //assign OUT_L = IN_L^Function;
   xor_M step2(OUT_L,IN_L,Function);
   assign OUT_R = IN_R;
    
endmodule
