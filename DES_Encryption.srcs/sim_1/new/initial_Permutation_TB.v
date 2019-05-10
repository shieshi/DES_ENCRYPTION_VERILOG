`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/08/2019 01:00:58 PM
// Design Name: 
// Module Name: initial_Permutation_TB
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


module initial_Permutation_TB();
reg [1:64] IN;
wire [1:32] L,R;

Initial_Permutation uut(.L(L),.R(R),.IN(IN));

initial 
    begin
    #0 IN = 64'h123456ABCD132536;
    #10 IN = 64'h0000008000000002;
    #10 $stop;
    end
endmodule
