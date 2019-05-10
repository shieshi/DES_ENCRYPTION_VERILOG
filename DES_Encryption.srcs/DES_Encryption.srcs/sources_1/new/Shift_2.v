`timescale 1ns / 1ps

module Shift_2(
    output [1:28] OUT,
    input [1:28] IN
    );
    
    assign OUT = {IN[3:28] , IN[1:2]};

endmodule
