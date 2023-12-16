`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.09.2023 00:43:39
// Design Name: 
// Module Name: sbm_tb
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


//module sbm_tb();

//   reg [3:0] A;
//    reg [3:0] B;
//    wire [7:0] result;

//    sbm dut (
//        .A(A),
//        .B(B),
//        .result(result)
//    );

//    initial begin
//        $display("Testing 4x4 Multiplier");
//        $display("---------------------");

//        // Test cases
//        A = 4'b0001;
//        B = 4'b0010;
//        #10 $display("A = 4'b0001, B = 4'b0010, Result = 8'b00000100, Actual Result = %b", result);

//        A = 4'b0011;
//        B = 4'b0100;
//        #10 $display("A = 4'b0011, B = 4'b0100, Result = 8'b01110000, Actual Result = %b", result);

//        // Add more test cases here

//        $finish;
//    end
//endmodule

//module sbm_tb();

//reg [3:0]A,B;
//wire [7:0]R;
//sbm mm(.a(A),.b(B),.p(R));
//initial
//begin



//A=4'b0011; B=4'b0101;

//#50;
//A=4'b0001;
//B=4'b0010;
//#50;
////A=4'hA;
////B=4'hA;

//end
//endmodule



//module sbm_tb;

//    // Define parameters
//    reg [3:0] a;
//    reg [3:0] b;
//    wire [7:0] p;

//    // Instantiate the module to be tested
//    sbm uut (
//        .a(a),
//        .b(b),
//        .p(p)
//    );

//    // Clock generation (if needed)
//    reg clk = 0;
//    always begin
//        #5 clk = ~clk;
//    end

//    // Test stimulus
//    initial begin
//        $display("Testing Binary Multiplier");

//        // Test case 1
//        a = 4'b1010;
//        b = 4'b1101;
//        #10;
//        $display("a = %b, b = %b, p = %b", a, b, p);
        
//        // Test case 2 (add more test cases as needed)
//        a = 4'b0011;
//        b = 4'b0101;
//        #10;
//        $display("a = %b, b = %b, p = %b", a, b, p);
        
//        // Add more test cases here

//        $finish;
//    end

//endmodule



module sbm_tb();

    // Define parameters
    reg [3:0] a;
    reg [3:0] b;
    wire [7:0] p;

    // Instantiate the module to be tested
    sbm uut (
        .a(a),
        .b(b),
        .p(p)
    );

    // Clock generation (if needed)
    reg clk = 0;
    always begin
        #5 clk = ~clk;
    end

    // Test stimulus
    initial begin
        $display("Testing Binary Multiplier");

        // Test case 1
        a = 4'b1010;
        b = 4'b1101;
        #10;
        $display("a = %b, b = %b, p = %b", a, b, p);
        
        // Test case 2
        a = 4'b0011;
        b = 4'b0101;
        #10;
        $display("a = %b, b = %b, p = %b", a, b, p);
        
        // Add more test cases here (e.g., a = 4'b1111, b = 4'b0001)
// Test case 3
a = 4'b1111;
b = 4'b0001;
#10;
$display("a = %b, b = %b, p = %b", a, b, p);

// Test case 4
a = 4'b0100;
b = 4'b0010;
#10;
$display("a = %b, b = %b, p = %b", a, b, p);

// Test case 5
a = 4'b1000;
b = 4'b1000;
#10;
$display("a = %b, b = %b, p = %b", a, b, p);


        $finish;

    end

endmodule
