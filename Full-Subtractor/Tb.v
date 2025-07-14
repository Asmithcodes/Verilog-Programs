module Tb;
    reg a, b, bin;
    wire diff, bout;

    // Instantiate the Full Subtractor Behavioral model
    Full_Subtractor uut (a, b, cin, diff, bout);

    initial begin
        for (integer i = 0; i < 8; i = i + 1) begin
            {a, b, bin} = i;
            #10;
        end
        $finish;
    end
endmodule
