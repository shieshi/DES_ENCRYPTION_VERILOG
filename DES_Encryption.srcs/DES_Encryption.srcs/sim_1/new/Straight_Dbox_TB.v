`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/08/2019 06:15:09 PM
// Design Name: 
// Module Name: Straight_Dbox_TB
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


module Straight_Dbox_TB( );

reg [1:32] IN;
wire [1:32] OUT;

Straight_Dbox uut(.OUT(OUT), .IN(IN));

initial 
    begin
    #0  IN = 32'hf0b299b9;
    #10 IN = 32'h10000200;
    #10 $stop;
    end

endmodule
