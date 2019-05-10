`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/10/2019 01:00:57 PM
// Design Name: 
// Module Name: KeyRound_S_TB
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


module KeyRound_S_TB( );

reg [1:28] IN_L,IN_R;
wire [1:28] OUT_L,OUT_R;
wire [1:48] Key;

KeyRound uut(.OUT_L(OUT_L),.OUT_R(OUT_R), .Key(Key), .IN_L(IN_L),.IN_R(IN_R));

initial 
    begin
    #0 IN_L= 28'h0f00ceb;
       IN_R= 28'hcfc33e8;
    #10 $stop;
    end
endmodule
