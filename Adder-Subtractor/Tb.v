module Tb;
    reg [3:0] a, b;
    reg cin;
    wire [3:0] sum;
    wire cout;

    Adder_subtractor uut(a, b, cin, sum, cout);
    initial begin
        a = 5 ; b = 10; cin = 0;
        #20;
        a = 14 ; b = 9; cin = 1;
        #20;
        a = 3 ; b = 11; cin = 1;
        #20;
        a = 9 ; b = 4; cin = 1;
        #20;
        a = 4 ; b = 8; cin = 0;
        #20;

        $finish;
    end
endmodule