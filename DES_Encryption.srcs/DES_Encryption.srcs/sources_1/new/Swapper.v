`timescale 1ns / 1ps

module Swapper(
    output [1:32] OUT_L,
    output [1:32] OUT_R,
    input [1:32] IN_L,
    input [1:32] IN_R
    );
    
    assign OUT_L = IN_R ;
    assign OUT_R = IN_L ; 
endmodule
