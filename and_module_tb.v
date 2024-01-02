`timescale 1ns/10ps

module and_module_tb;
    localparam period = 20;
    reg a,b;
    reg[2:0] count = 2'b00;
    wire f;
    integer i;

    and_module uut(.a(a),.b(b),.f(f));

    initial begin
        $dumpfile("result.vcd");
        $dumpvars;
        for (i=0;i<4;i++) begin
            {a,b} = count;
            count = count + 1;
            #period;
        end
        $finish;
    end
endmodule

// module and_module(clk,rst,count);
//     parameter N = 31;
//     input clk, rst;
//     output [0:N] count;
//     reg [0:N] count;

//     always @(negedge clk) begin
//         if (rst)
//             count = 0;
//         else
//             count = count + 1;
//     end
// endmodule
