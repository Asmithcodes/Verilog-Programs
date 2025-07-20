module SR_tb;
    reg s, r, rst_n, clk;
    wire q, qbar;

    SR uut(s, r, rst_n, clk, q, qbar);

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        rst_n = 0; s = 0; r = 0; #10;
        rst_n = 1; s = 0; r = 0; #10;
        s = 1; r = 0; #10;
        s = 0; r = 1; #10;
        s = 1; r = 1; #10;
        $stop;
    end
endmodule
