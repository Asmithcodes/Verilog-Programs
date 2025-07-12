module 8by1_mux(
    input [7:0] dataIn,
    input [2:0] selectLine,
    output reg dataOut
    );

    always @(*) begin
        case(selectLine)
            0: dataOut = dataIn[0]; 
            1: dataOut = dataIn[1]; 
            2: dataOut = dataIn[2]; 
            3: dataOut = dataIn[3]; 
            4: dataOut = dataIn[4]; 
            5: dataOut = dataIn[5]; 
            6: dataOut = dataIn[6]; 
            7: dataOut = dataIn[7]; 
        endcase
    end

    initial begin
        dataIn = 0;
        selectLine = 0;
    end
endmodule