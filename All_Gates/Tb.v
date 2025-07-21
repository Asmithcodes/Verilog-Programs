module Tb;
    reg a, b;
    wire yNota, yBufb, yAnd, yOr, yNand, yNor, yXor, yXnor;

    Logic_Gates dut(a, b, yNota, yBufb, yAnd, yOr, yNand, yNor, yXor, yXnor);
    initial begin
        {a, b} = 0; #20
        {a, b} = 1; #20
        {a, b} = 2; #20
        {a, b} = 3; #20
        $finish;
    end
endmodule