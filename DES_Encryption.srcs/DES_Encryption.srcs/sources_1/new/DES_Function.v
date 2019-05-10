`timescale 1ns / 1ps

module DES_Function(
    output [1:32] OUT,
    input [1:32] IN,
    input [1:48] Key
    );
  wire [1:48] ExD,Xor;
  wire [1:32] Sbox;
  
  Expansion_Dbox step1(ExD,IN);
  //assign Xor = Key^ExD;
  xor_F   step2(Xor,Key,ExD);
  Sboxes         step3(Sbox,Xor);
  Straight_Dbox  step4(OUT,Sbox);   
    
endmodule
