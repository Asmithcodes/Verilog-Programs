module Ripple_Adder(
    input [3:0] x, y,
    input carryin,
    output [3:0] out,
    output carryout
    );

    wire [3:0] c;

    Full_adder_Beh fa0(x[0], y[0], carryin, out[0], c[0]);
    Full_adder_Struc fa1(x[1], y[1], c[0], out[1], c[1]);
    Full_adder_Beh fa2(x[2], y[2], c[1], out[2], c[2]);
    Full_adder_Struc fa3(x[3], y[3], c[2], out[3], c[3]);

    assign carryout = c[3];
endmodule