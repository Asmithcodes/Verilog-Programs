module D(
    input d, rst_n, clk, 
    output reg q, 
    output wire qbar
    );

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)
            q <= 1'b0;
        else 
            q <= d;
    end

    assign qbar = ~q;
    
endmodule