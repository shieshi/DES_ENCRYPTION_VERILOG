`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/10/2019 01:19:33 PM
// Design Name: 
// Module Name: ParityDrop_TB
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


module ParityDrop_TB(

    );
    reg [1:64] IN;
    wire [1:56] OUT;
    
    ParityDrop uut( .OUT(OUT), .IN(IN));
    initial 
        begin 
        #0 IN =64'hAABB09182736CCDD;
        #10 $stop;
        
        end
endmodule
