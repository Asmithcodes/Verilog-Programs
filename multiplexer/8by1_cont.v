module 8by1_gateLevel(
    input [7:0] dataIn,
    input [2:0] selectLine,
    output dataOut
);

    wire y0, y1, y2, y3, y4, y5, y6, y7;

    assign y0 = dataIn[0] & ~selectLine[2] & ~selectLine[1] & ~selectLine[0];
    assign y1 = dataIn[1] & ~selectLine[2] & ~selectLine[1] &  selectLine[0];
    assign y2 = dataIn[2] & ~selectLine[2] &  selectLine[1] & ~selectLine[0];
    assign y3 = dataIn[3] & ~selectLine[2] &  selectLine[1] &  selectLine[0];
    assign y4 = dataIn[4] &  selectLine[2] & ~selectLine[1] & ~selectLine[0];
    assign y5 = dataIn[5] &  selectLine[2] & ~selectLine[1] &  selectLine[0];
    assign y6 = dataIn[6] &  selectLine[2] &  selectLine[1] & ~selectLine[0];
    assign y7 = dataIn[7] &  selectLine[2] &  selectLine[1] &  selectLine[0];

    assign dataOut = y0 | y1 | y2 | y3 | y4 | y5 | y6 | y7;

endmodule
