`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/10/2019 12:54:27 PM
// Design Name: 
// Module Name: RoundLast
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


module RoundLast( output reg [1:32]  OUT_L,
    output reg [1:32]  OUT_R,
    input [1:32] IN_L,
    input [1:32] IN_R,
    input [1:48] Key,
    input Clk,
    input Rst
    );
    wire [1:32]Mix_R,Mix_L,Swap_R,Swap_L;
    
    Mixer   step1(Mix_L,Mix_R,IN_L,IN_R,Key);
    
    always@(posedge Clk or posedge Rst)
    begin
        if(Rst)
            begin
            OUT_L <= 32'd0;
            OUT_R <= 32'd0;
            end
        else 
            begin
            OUT_L <= Mix_L;
            OUT_R <= Mix_R;
            end
     end     
endmodule
