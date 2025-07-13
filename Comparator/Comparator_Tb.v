module Comparator_Tb;
    reg [3:0] a, b;
    wire a_greater, a_less, a_equal_b; 

    Comparator_Gate uut(a, b, a_greater, a_less, a_equal_b);
    // Comparator_Beh uut(a, b, a_greater, a_less, a_equal_b);
    
    initial begin
        a = 0; b = 2; #50;
        a = 13; b = 5; #50;
        a = 10; b = 10; #50;
        a = 8; b = 2; #50;
        $finish;
    end
endmodule