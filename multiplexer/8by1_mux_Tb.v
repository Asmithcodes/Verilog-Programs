module 8by1_mux_Tb;
    reg [7:0] dataIn;
    reg [2:0] selectLine;
    wire dataOut;
    integer i;

    8by1_mux uut(dataIn, selectLine, dataOut);
    initial begin
        for(i = 0; i < 8; i = i + 1) begin
            selectLine = i;
            dataIn = 1 >> i;
            #20;
        end
        $finish;
    end
endmodule
