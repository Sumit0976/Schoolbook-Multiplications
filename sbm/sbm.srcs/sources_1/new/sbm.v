`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.09.2023 00:40:09
// Design Name: 
// Module Name: sbm
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


//module sbm(
// input [3:0] A,
//   input [3:0] B,
//   output [7:0] result
//);

//wire [3:0] row [0:3];
//wire [7:0] partial_products [0:3];

//assign row[0] = 4'b0000;
//assign row[1] = B;
//assign row[2] = B << 1;
//assign row[3] = B << 2;

//genvar i, j;
//generate
//   for (i = 0; i < 4; i = i + 1) begin
//       assign partial_products[i] = (A[i]) ? row[i] : 8'b00000000;
//   end
//endgenerate

//assign result = partial_products[0] + partial_products[1] + partial_products[2] + partial_products[3];

//endmodule

//module sbm(  
//input [3:0] a,
//    input [3:0] b,
//    output [7:0] p
//);

//wire [3:0] m0;
//wire [4:0] m1;
//wire [5:0] m2;
//wire [6:0] m3;
//wire [7:0] s1, s2, s3;

//assign m0 = (a[0] & b);
//assign m1 = (a[1] & b);
//assign m2 = (a[2] & b);
//assign m3 = (a[3] & b);

//assign s1 = m0 + (m1 << 1);
//assign s2 = s1 + (m2 << 2);
//assign s3 = s2 + (m3 << 3);
//assign p = s3;

//endmodule
    
//module sbm (
    

//    input [3:0] a,
//    input [3:0] b,
//    output [7:0] p
//);

//    wire [3:0] partial_products [3:0];

//    // Generate partial products for each bit of B
//    assign partial_products[0] = a & (b[0] ? 4'b1111 : 4'b0000);
//    assign partial_products[1] = a & (b[1] ? 4'b1110 : 4'b0000);
//    assign partial_products[2] = a & (b[2] ? 4'b1100 : 4'b0000);
//    assign partial_products[3] = a & (b[3] ? 4'b1000 : 4'b0000);

//    // Sum up partial products to get the product
//    assign p = partial_products[0] + (partial_products[1] << 1) +
//                     (partial_products[2] << 2) + (partial_products[3] << 3);

//endmodule


module sbm (
    input [3:0] a,
    input [3:0] b,
    output [7:0] p
);

    wire [3:0] partial_products [3:0];

    // Generate partial products for each bit of B
    assign partial_products[0] = a & (b[0] ? 4'b1111 : 4'b0000);
    assign partial_products[1] = a & (b[1] ? 4'b1111 : 4'b0000);
    assign partial_products[2] = a & (b[2] ? 4'b1111 : 4'b0000);
    assign partial_products[3] = a & (b[3] ? 4'b1111 : 4'b0000);

    // Sum up partial products to get the product
    assign p = partial_products[0] + (partial_products[1] << 1) +
                     (partial_products[2] << 2) + (partial_products[3] << 3);

endmodule

