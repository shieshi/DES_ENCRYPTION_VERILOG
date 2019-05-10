`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/10/2019 08:41:54 PM
// Design Name: 
// Module Name: Sboxes_TB
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


module Sboxes_TB( );
reg [1:48] IN;
wire [1:32] OUT;

Sboxes uut( .OUT(OUT), .IN(IN));

initial 
    begin 
    #0 IN=48'h29AE55DC891D;
    #10 $stop;
    end

endmodule
