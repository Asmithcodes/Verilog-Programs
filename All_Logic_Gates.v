module All_Logic_Gates(
    input a, b,
    output [7:0] out
    );

    not(out[0], a);
    buf(out[1], b);
    and(out[2], a, b);
    or(out[3], a, b);
    nand(out[4], a, b);
    nor(out[5], a, b);
    xor(out[6], a, b);
    xnor(out[7], a, b);
endmodule