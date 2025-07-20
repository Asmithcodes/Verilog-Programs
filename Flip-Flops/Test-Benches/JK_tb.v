module JK_tb;
    reg j, k, rst_n, clk;
    wire q, qbar;

    JK uut(j, k, rst_n, clk, q, qbar);

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        rst_n = 0; j = 0; k = 0; #10;
        rst_n = 1; j = 0; k = 0; #10;
        j = 1; k = 0; #10;
        j = 0; k = 1; #10;
        j = 1; k = 1; #10;
        $stop;
    end
endmodule
