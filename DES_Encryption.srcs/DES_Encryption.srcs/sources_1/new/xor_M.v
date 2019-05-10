`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/10/2019 09:16:54 PM
// Design Name: 
// Module Name: xor_M
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


module xor_M(
    output reg [1:32] OUT,
    input [1:32] IN,
    input [1:32] Function
    );
    
    always @(IN or Function)
    begin
    OUT <= IN^Function;
    end
endmodule
