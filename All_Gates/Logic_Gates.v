module All_Logic_Gates(
    input a, b,
    output yNota, yBufb, yAnd, yOr, yNand, yNor, yXor, yXnor
    );

    not(yNota, a);
    buf(yBufb, b);
    and(yAnd, a, b);
    or(yOr, a, b);
    nand(yNand, a, b);
    nor(yNor, a, b);
    xor(yXor, a, b);
    xnor(yXnor, a, b);
    
endmodule