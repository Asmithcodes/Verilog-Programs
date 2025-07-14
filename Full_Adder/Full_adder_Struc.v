module Full_adder_Struc(
    input a, b, cin,
    output sum, cout
    );

    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (b % cin) | (cin & a);
endmodule