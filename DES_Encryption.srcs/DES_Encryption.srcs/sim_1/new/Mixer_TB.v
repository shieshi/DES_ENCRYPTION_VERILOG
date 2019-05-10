`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/10/2019 03:01:02 PM
// Design Name: 
// Module Name: Mixer_TB
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


module Mixer_TB(

    );
    reg [1:32] IN_L,IN_R;
    reg [1:48] Key;
    wire [1:32] OUT_L,OUT_R;
    Mixer uut( .OUT_L(OUT_L), .OUT_R(OUT_R), .IN_L(IN_L), .IN_R(IN_R), .Key(Key) );
    
    initial 
        begin 
        #0 IN_L = 32'h14A7D678;
            IN_R = 32'h18CA18AD;
            Key =48'h194CD072DE8C;
            
        #10   IN_L = 32'h18CA18AD;
              IN_R = 32'h5A78E394;
              Key =48'h4568581ABCCE;
              
        #10   IN_L = 32'h5A78E394;
               IN_R = 32'h4A1210F6;
               Key =48'h06EDA4ACF5B5;
               
       #10   IN_L = 32'h4A1210F6;
             IN_R = 32'hB8089591;
             Key =48'hDA2D032B6EE3;
             
       #10   IN_L = 32'hB8089591;
                   IN_R = 32'h236779C2;
                   Key =48'h69A629FEC913;
     #10   IN_L = 32'h6CA6CB20;
           IN_R = 32'hFF3C485F;
           Key =48'hC2C1E96A4BF3;
           
    #10   IN_L = 32'h387CCDAA;
          IN_R = 32'hBD2DD2AB;
          Key =48'h3330C5D9A36D;
   
   #10   IN_L = 32'hBD2DD2AB;
                    IN_R = 32'hCF26B472;
                    Key =48'h181C5D75C66D;
             #10 $stop;
             end
endmodule
