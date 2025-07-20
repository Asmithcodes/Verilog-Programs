module D_tb;
    reg d, rst_n, clk;
    wire q, qbar;

    D uut(d, rst_n, clk, q, qbar);

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        rst_n = 0; d = 0; #10;
        rst_n = 1; d = 1; #10;
        d = 0; #10;
        d = 1; #10;
        $stop;
    end
endmodule
