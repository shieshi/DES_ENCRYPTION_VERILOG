`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/10/2019 01:17:23 AM
// Design Name: 
// Module Name: DES_Cipher
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


module DES_Cipher(
    output [1:64] CipherTXT,
    input [1:64] PlainTXT,
    input [1:64] Key,
    input Clk,
    input Rst
    );
   wire [1:56] Parity;
   wire [1:32] L0,L1,L2,L3,L4,L5,L6,L7,L8,L9,L10,L11,L12,L13,L14,L15,L16;
   wire [1:32] R0,R1,R2,R3,R4,R5,R6,R7,R8,R9,R10,R11,R12,R13,R14,R15,R16;
   wire [1:48] K0,K1,K2,K3,K4,K5,K6,K7,K8,K9,K10,K11,K12,K13,K14,K15,K16;
   wire [1:28] KL0,KL1,KL2,KL3,KL4,KL5,KL6,KL7,KL8,KL9,KL10,KL11,KL12,KL13,KL14,KL15,KL16;
   wire [1:28] KR0,KR1,KR2,KR3,KR4,KR5,KR6,KR7,KR8,KR9,KR10,KR11,KR12,KR13,KR14,KR15,KR16; 
   
   Initial_Permutation step1(L0,R0,PlainTXT); 
   ParityDrop P(Parity,Key);
   
   KeyRound_Shift1 Ks1(KL0,KR0,K0,Parity[1:28],Parity[29:56]);
   Round Rd1(L1,R1,L0,R0,K0,Clk,Rst);
   
   KeyRound_Shift1 Ks2(KL1,KR1,K1,KL0,KR0);
   Round Rd2(L2,R2,L1,R1,K1,Clk,Rst);
   
   KeyRound Ks3(KL2,KR2,K2,KL1,KR1);
   Round Rd3(L3,R3,L2,R2,K2,Clk,Rst);
   
   KeyRound Ks4(KL3,KR3,K3,KL2,KR2);
   Round Rd4(L4,R4,L3,R3,K3,Clk,Rst);
   
   KeyRound Ks5(KL4,KR4,K4,KL3,KR3);
   Round Rd5(L5,R5,L4,R4,K4,Clk,Rst);  
   
   KeyRound Ks6(KL5,KR5,K5,KL4,KR4);
   Round Rd6(L6,R6,L5,R5,K5,Clk,Rst);  
        
   KeyRound Ks7(KL6,KR6,K6,KL5,KR5);
   Round Rd7(L7,R7,L6,R6,K6,Clk,Rst); 
         
   KeyRound Ks8(KL7,KR7,K7,KL6,KR6);
   Round Rd8(L8,R8,L7,R7,K7,Clk,Rst);   
       
   KeyRound_Shift1 Ks9(KL8,KR8,K8,KL7,KR7);
   Round Rd9(L9,R9,L8,R8,K8,Clk,Rst);  
   
   KeyRound Ks10(KL9,KR9,K9,KL8,KR8);
   Round Rd10(L10,R10,L9,R9,K9,Clk,Rst);   
       
   KeyRound Ks11(KL10,KR10,K10,KL9,KR9);
   Round Rd11(L11,R11,L10,R10,K10,Clk,Rst);  
        
   KeyRound Ks12(KL11,KR11,K11,KL10,KR10);
   Round Rd12(L12,R12,L11,R11,K11,Clk,Rst); 
         
   KeyRound Ks13(KL12,KR12,K12,KL11,KR11);
   Round Rd13(L13,R13,L12,R12,K12,Clk,Rst);   
       
   KeyRound Ks14(KL13,KR13,K13,KL12,KR12);
   Round Rd14(L14,R14,L13,R13,K13,Clk,Rst); 
   
   KeyRound Ks15(KL14,KR14,K14,KL13,KL13);
   Round Rd15(L15,R15,L14,R14,K14,Clk,Rst);
   
   KeyRound_Shift1 Ks16(KL15,KR15,K15,KL14,KR14);
   RoundLast Rd16(L16,R16,L15,R15,K15,Clk,Rst);                   
   
   Final_Permutation FP(CipherTXT,L16,R16);            
endmodule
