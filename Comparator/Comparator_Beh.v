module Comparator_Beh(
    input [3:0] a, b, 
    output reg a_greater, a_less, a_equal_b
    );

    
    always @(a or b) begin
        a_greater = (a > b) ? 1'b1 : 1'b0; 
        a_less = (a < b) ? 1'b1 : 1'b0; 
        a_equal_b = (a == b) ? 1'b1 : 1'b0; 
    end
endmodule