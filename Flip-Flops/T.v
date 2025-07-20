module T(
    input t, rst_n, clk,
    output reg q,
    output wire qbar
    );
    
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)
            q <= 0;
        else if (t)
            q <= ~q;
    end

    assign qbar = ~q;
endmodule