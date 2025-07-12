module 1by8_DeMux_Tb;
    reg dataIn;
    reg [2:0] selectLine;
    wire [7:0] dataOut;
    integer i;

    1by8_Beh uut(dataIn, selectLine, dataOut);
    // 1by8_GateLevel uut(dataIn, selectLine, dataOut);

    initial begin
        dataIn = 1;
        for(i = 0; i < 8; i = i + 1) begin
            selectLine = i;
            #20;
        end
        $finish;
    end
endmodule