module JK(
    input j, k, rst_n, clk,
    output reg q,
    output wire qbar
    );

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)
            q <= 1'b0;
        else begin
            case ({j, k})
                2'b00: q <= q;
                2'b01: q <= 1'b0;
                2'b10: q <= 1'b1;
                2'b11: q <= ~q;
                default: q <= 1'bx;
            endcase
        end
    end

    assign qbar = ~q;
endmodule