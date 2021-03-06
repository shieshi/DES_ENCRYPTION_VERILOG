`timescale 1ns / 1ps

module SBox_5(
    output reg [1:4] OUT,
    input [1:6] IN
    );
    
    always @(IN)
    begin
        case({IN[1],IN[6],IN[2:5]})
    
            6'b000000 : OUT <= 02;
    
            6'b000001 : OUT <= 12;
    
            6'b000010 : OUT <= 04;
    
            6'b000011 : OUT <= 01;
    
            6'b000100 : OUT <= 07;
    
            6'b000101 : OUT <= 10;
    
            6'b000110 : OUT <= 11;
    
            6'b000111 : OUT <= 06;
    
            6'b001000 : OUT <= 08;
    
            6'b001001 : OUT <= 05;
    
            6'b001010 : OUT <= 03;
    
            6'b001011 : OUT <= 15;
    
            6'b001100 : OUT <= 13;
    
            6'b001101 : OUT <= 00;
    
            6'b001110 : OUT <= 14;
    
            6'b001111 : OUT <= 09;
    
    
            6'b010000 : OUT <= 14;
    
            6'b010001 : OUT <= 11;
    
            6'b010010 : OUT <= 02;
    
            6'b010011 : OUT <= 12;
    
            6'b010100 : OUT <= 04;
    
            6'b010101 : OUT <= 07;
    
            6'b010110 : OUT <= 13;
    
            6'b010111 : OUT <= 01;
    
            6'b011000 : OUT <= 05;
    
            6'b011001 : OUT <= 00;
    
            6'b011010 : OUT <= 15;
    
            6'b011011 : OUT <= 10;
    
            6'b011100 : OUT <= 03;
    
            6'b011101 : OUT <= 09;
    
            6'b011110 : OUT <= 08;
    
            6'b011111 : OUT <= 06;
    
    
            6'b100000 : OUT <= 04;
    
            6'b100001 : OUT <= 02;
    
            6'b100010 : OUT <= 01;
    
            6'b100011 : OUT <= 11;
    
            6'b100100 : OUT <= 10;
    
            6'b100101 : OUT <= 13;
    
            6'b100110 : OUT <= 07;
    
            6'b100111 : OUT <= 08;
    
            6'b101000 : OUT <= 15;
    
            6'b101001 : OUT <= 09;
    
            6'b101010 : OUT <= 12;
    
            6'b101011 : OUT <= 05;
    
            6'b101100 : OUT <= 06;
    
            6'b101101 : OUT <= 03;
    
            6'b101110 : OUT <= 00;
    
            6'b101111 : OUT <= 14;
    
    
            6'b110000 : OUT <= 11;
    
            6'b110001 : OUT <= 08;
    
            6'b110010 : OUT <= 12;
    
            6'b110011 : OUT <= 07;
    
            6'b110100 : OUT <= 01;
    
            6'b110101 : OUT <= 14;
    
            6'b110110 : OUT <= 02;
    
            6'b110111 : OUT <= 13;
    
            6'b111000 : OUT <= 06;
    
            6'b111001 : OUT <= 15;
    
            6'b111010 : OUT <= 00;
    
            6'b111011 : OUT <= 09;
    
            6'b111100 : OUT <= 10;
    
            6'b111101 : OUT <= 04;
    
            6'b111110 : OUT <= 05;
    
            6'b111111 : OUT <= 03;
    
   
        endcase    
    
    end        
endmodule
