module SR(
    input s, r, rst_n, clk,
    output reg q,
    output wire qbar
    );

    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)
            q <= 0;
        else begin
            case ({s, r})
                2'b00: q <= q;
                2'b01: q <= 0;
                2'b10: q <= 1;
                2'b11: q <= 1'bx;
                default: q <= 1'bx;
            endcase
        end
    end

    assign qbar = ~q;
endmodule