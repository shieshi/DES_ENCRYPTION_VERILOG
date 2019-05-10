`timescale 1ns / 1ps

module Sboxes(output [1:32] OUT, input [1:48] IN );
    
    SBox_1 s1(OUT[01:04],IN[01:06]);
    SBox_2 s2(OUT[05:08],IN[07:12]);
    SBox_3 s3(OUT[09:12],IN[13:18]);
    SBox_4 s4(OUT[13:16],IN[19:24]);
    SBox_5 s5(OUT[17:20],IN[25:30]);
    SBox_6 s7(OUT[21:24],IN[31:36]);
    SBox_7 s8(OUT[25:28],IN[37:42]);
    SBox_8 s9(OUT[29:32],IN[43:48]);
    
endmodule
