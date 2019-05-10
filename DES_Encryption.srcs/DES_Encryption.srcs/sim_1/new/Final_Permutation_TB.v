`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/08/2019 03:04:51 PM
// Design Name: 
// Module Name: Final_Permutation_TB
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


module Final_Permutation_TB( );
reg [1:64] IN;
wire [1:64] OUT;

Final_Permutation uut(.OUT(OUT), .IN(IN));

initial 
    begin
    #0 IN = 64'h0002000000000001;
    #10 IN = 64'h0000008000000002;
    #10 $stop;
    end
endmodule
