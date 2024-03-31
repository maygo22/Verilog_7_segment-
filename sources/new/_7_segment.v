`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/19/2023 07:10:37 PM
// Design Name: 
// Module Name: _7_segment
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


module _7_segment(SW_A, SW_B, enable, Y, Z);

    input [7:4] SW_A;
    input [3:1] SW_B;
    output reg [7:0] enable;
    output reg [7:0] Y, Z;
  
    always @(SW_A)
        case (SW_A)
            4'b0000: Y = {8'b11111100}; // "0"     
            4'b0001: Y = {8'b01100000}; // "1" , 
            4'b0010: Y = {8'b11011010}; // "2" 
            4'b0011: Y = {8'b11110010}; // "3" 
            4'b0100: Y = {8'b01100110}; // "4" 
            4'b0101: Y = {8'b10110110}; // "5" 
            4'b0110: Y = {8'b10111110}; // "6" 
            4'b0111: Y = {8'b11100000}; // "7" 
            4'b1000: Y = {8'b11111110}; // "8"     
            4'b1001: Y = {8'b11110110}; // "9" 
            4'b1010: Y = {8'b11101110}; // A
            4'b1011: Y = {8'b00111110}; // B
            4'b1100: Y = {8'b10011100}; // C
            4'b1101: Y = {8'b01111010}; // D
            4'b1110: Y = {8'b10011110}; // E
            4'b1111: Y = {8'b10001110}; // F
        default:     Y = {8'b11111100}; // "0
        endcase
    always @(SW_A)
        case (SW_A)
            4'b0000: Z = {8'b11111100}; // "0"     
            4'b0001: Z = {8'b01100000}; // "1" 
            4'b0010: Z = {8'b11011010}; // "2" 
            4'b0011: Z = {8'b11110010}; // "3" 
            4'b0100: Z = {8'b01100110}; // "4" 
            4'b0101: Z = {8'b10110110}; // "5" 
            4'b0110: Z = {8'b10111110}; // "6" 
            4'b0111: Z = {8'b11100000}; // "7" 
            4'b1000: Z = {8'b11111110}; // "8"     
            4'b1001: Z = {8'b11110110}; // "9" 
            4'b1010: Z = {8'b11101110}; // A
            4'b1011: Z = {8'b00111110}; // B
            4'b1100: Z = {8'b10011100}; // C
            4'b1101: Z = {8'b01111010}; // D
            4'b1110: Z = {8'b10011110}; // E
            4'b1111: Z = {8'b10001110}; // F
        default:     Z = {8'b11111100}; // "0
        endcase
    
    always @(SW_B)
        case (SW_B)
            3'b000: enable = 8'b00000001; //seven segment 1
            3'b001: enable = 8'b00000010; //seven segment 2
            3'b010: enable = 8'b00000100; //seven segment 3
            3'b011: enable = 8'b00001000; //seven segment 4
            3'b100: enable = 8'b00010000; //seven segment 5
            3'b101: enable = 8'b00100000; //seven segment 6
            3'b110: enable = 8'b01000000; //seven segment 7
            3'b111: enable = 8'b10000000; //seven segment 8
    endcase
endmodule  
