`timescale 1ns / 1ps

module Expansion_Dbox_TB( );

reg [1:32] IN;
wire [1:48] OUT;

Expansion_Dbox uut(.OUT(OUT), .IN(IN));

initial 
    begin
    #0  IN = 32'hF0F0F0F0;
    #10 IN = 32'hFF0000FF;
    #10 $stop;
    end

endmodule
