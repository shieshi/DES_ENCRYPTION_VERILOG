`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/10/2019 09:16:54 PM
// Design Name: 
// Module Name: xor_F
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


module xor_F(
    output [1:48] OUT,
    input [1:48] IN,
    input [1:48] Key
    );
    
    assign OUT = IN^Key;
    
endmodule
