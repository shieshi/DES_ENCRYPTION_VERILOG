`timescale 1ns / 1ps


module SBox_1_TB( );
reg[1:6] IN;
wire [1:4] OUT;

SBox_1 uut(.OUT(OUT), .IN(IN));
initial 
    begin
    #0 IN=0; 
    end
endmodule
