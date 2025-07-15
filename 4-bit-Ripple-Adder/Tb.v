module Tb;
    reg [3:0] a, b;
    reg cin;
    wire [3:0] sum;
    wire cout;

    Ripple_Adder uut (a, b, cin, sum, cout);
    initial begin
        a = 5; b = 6; cin = 0; #20
        a = 12; b = 2; cin = 1; #20
        a = 4; b = 11; cin = 0; #20
        a = 1; b = 14; cin = 1; #20
        $finish;
    end
endmodule