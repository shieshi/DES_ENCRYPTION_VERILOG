`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/10/2019 04:06:55 AM
// Design Name: 
// Module Name: Round_TB
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


module Round_TB();
reg [1:32] IN_R,IN_L;
reg [1:48] Key;
reg Clk,Rst;
wire [1:32] OUT_L,OUT_R;

Round uut(.OUT_L(OUT_L), .OUT_R(OUT_R), .IN_L(IN_L), .IN_R(IN_R), .Key(Key), .Clk(Clk), .Rst(Rst));


initial 
    begin
    Clk = 0;
    forever #5 Clk=~Clk;
    end
initial 
    begin  
    #0 Rst=1;
    
    #10 Rst=0;
        IN_L=32'h387CCDAA;
        IN_R=32'hBD2DD2AB;
        Key =48'h3330C5D9A36D;
        
   #10 Rst=0;
       IN_L=32'hBD2DD2AB;
       IN_R=32'hCF26B472;
       Key =48'h181C5D75C66D;
    #10 $stop;
    end   
endmodule
