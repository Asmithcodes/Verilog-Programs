module Logic_Gates_Tb;
    reg a, b;
    wire [7:0] out;

    Logic_Gates dut(a, b, out);
    initial begin
        {a, b} = 0; #20
        {a, b} = 1; #20
        {a, b} = 2; #20
        {a, b} = 3; #20
        $finish;
    end
endmodule