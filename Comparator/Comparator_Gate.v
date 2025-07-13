module Comparator_Gate(
    input [3:0] a, b,
    output wire a_greater, a_less, a_equal_b
    );

    wire [3:0] g;
    wire [3:0] e;
    wire [3:0] l;

    assign e[3] = ~(a[3] ^ b[3]);
    assign e[2] = ~(a[2] ^ b[2]);
    assign e[1] = ~(a[1] ^ b[1]);
    assign e[0] = ~(a[0] ^ b[0]);

    assign a_equal_b = e[3] & e[2] & e[1] & e[0];

    assign g[3] = a[3] & ~b[3];
    assign g[2] = e[3] & a[2] & ~b[2];
    assign g[1] = e[3] & e[2] & a[1] & ~b[1];
    assign g[0] = e[3] & e[2] & e[1] & a[0] & ~b[0];

    assign a_greater = g[3] | g[2] | g[1] | g[0];

    assign l[3] = ~a[3] & b[3];
    assign l[2] = e[3] & ~a[2] & b[2];
    assign l[1] = e[3] & e[2] & ~a[1] & b[1];
    assign l[0] = e[3] & e[2] & e[1] & ~a[0] & b[0];

    assign a_less = l[3] | l[2] | l[1] | l[0];

endmodule