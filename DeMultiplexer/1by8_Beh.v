module 1by8_Beh(
    input dataIn,
    input [2:0] selectLine,
    output reg [7:0] dataOut
    );

    always @(*) begin
        case(selectLine)
            0: dataOut[0] = dataIn; 
            1: dataOut[1] = dataIn; 
            2: dataOut[2] = dataIn; 
            3: dataOut[3] = dataIn; 
            4: dataOut[4] = dataIn; 
            5: dataOut[5] = dataIn; 
            6: dataOut[6] = dataIn; 
            7: dataOut[7] = dataIn; 
        endcase
    end

    initial begin
        dataOut = 0;
    end
endmodule
