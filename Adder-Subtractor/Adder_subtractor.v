module Adder_subtractor #(parameter width = 4) (    // width is 4 by default
    input [(width-1):0] x, y,
    input carryin,
    output [(width-1):0] out,
    output carryout
);
    wire [(width-1):0] y_eff, c;

    assign y_eff = y ^ {width{carryin}};

    genvar i;
    generate
        Full_adder_Beh fa0(.a(x[0]), .b(y_eff[0]), .cin(carryin), .sum(out[0]), .cout(c[0]));

        for (i = 1; i < width; i = (i + 1)) begin
            Full_adder_Beh fa(.a(x[i]), .b(y_eff[i]), .cin(c[i - 1]), .sum(out[i]), .cout(c[i]));
        end
    endgenerate

    assign carryout = c[width-1];
endmodule