`timescale 1ns / 1ps

module Round(
    output reg [1:32]  OUT_L,
    output reg [1:32]  OUT_R,
    input [1:32] IN_L,
    input [1:32] IN_R,
    input [1:48] Key,
    input Clk,
    input Rst
    );
    wire [1:32]Mix_R,Mix_L,Swap_R,Swap_L;
    
    Mixer   step1(Mix_L,Mix_R,IN_L,IN_R,Key);
    Swapper step2(Swap_L,Swap_R,Mix_L,Mix_R);
    
    always@(posedge Clk or posedge Rst)
    begin
        if(Rst)
            begin
            OUT_L <= 32'd0;
            OUT_R <= 32'd0;
            end
        else 
            begin
            OUT_L <= Swap_L;
            OUT_R <= Swap_R;
            end
     end        
endmodule
