module Full_Subtractor(
    input a, b, bin,
    output reg diff, bout
    );

    always @(*) begin
        diff = a ^ b ^ bin;
        bout = (~a & b) | (~a & bin) | (b & bin);
    end
endmodule
