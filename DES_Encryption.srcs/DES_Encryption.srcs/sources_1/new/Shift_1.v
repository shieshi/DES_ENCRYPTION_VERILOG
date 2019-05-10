`timescale 1ns / 1ps

module Shift_1(
    output [1:28] OUT,
    input [1:28] IN
    );
    
    assign OUT = {IN[2:28] , IN[1]};
    
endmodule
