module 8by1_gateLevel(
    input [7:0] dataIn,
    input [2:0] selectLine,
    output dataOut
);

    wire y0, y1, y2, y3, y4, y5, y6, y7;

    and(y0, dataIn[0], ~selectLine[2], ~selectLine[1], ~selectLine[0]);
    and(y1, dataIn[1], ~selectLine[2], ~selectLine[1],  selectLine[0]);
    and(y2, dataIn[2], ~selectLine[2],  selectLine[1], ~selectLine[0]);
    and(y3, dataIn[3], ~selectLine[2],  selectLine[1],  selectLine[0]);
    and(y4, dataIn[4],  selectLine[2], ~selectLine[1], ~selectLine[0]);
    and(y5, dataIn[5],  selectLine[2], ~selectLine[1],  selectLine[0]);
    and(y6, dataIn[6],  selectLine[2],  selectLine[1], ~selectLine[0]);
    and(y7, dataIn[7],  selectLine[2],  selectLine[1],  selectLine[0]);

    or(dataOut, y0, y1, y2, y3, y4, y5, y6, y7);

endmodule
