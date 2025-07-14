module Full_adder_Beh(
    input a, b, cin,
    output reg sum, cout
    );

    always @(*) begin
        {cout, sum} = a + b + cin;
    end
endmodule