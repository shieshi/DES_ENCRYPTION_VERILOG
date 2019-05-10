`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/10/2019 04:27:49 AM
// Design Name: 
// Module Name: Round_new_TB
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


module Round_new_TB(

    );
    reg [1:32] IN_R,IN_L;
    reg [1:48] Key;
    reg Clk,Rst;
    wire [1:32] OUT_L,OUT_R;
    
    Round uut(.OUT_L(OUT_L), .OUT_R(OUT_R), .IN_L(IN_L), .IN_R(IN_R), .Key(Key), .Clk(Clk), .Rst(Rst));
    
    
    initial 
        begin
        Clk = 0;
        forever #10 Clk=~Clk;
        end
    initial 
        begin  
        #0 Rst=1;
        
        #10 Rst=0;
            IN_L=32'h14A7D678;
            IN_R=32'h18CA18AD;
            Key =48'h194CD072DE8C;
        #10 $stop;
        end   
endmodule
