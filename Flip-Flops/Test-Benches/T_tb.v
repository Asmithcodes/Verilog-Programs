module T_tb;
    reg t, rst_n, clk;
    wire q, qbar;

    T uut(t, rst_n, clk, q, qbar);

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        rst_n = 0; t = 0; #10;
        rst_n = 1; t = 1; #20;
        t = 0; #10;
        t = 1; #20;
        $stop;
    end
endmodule
