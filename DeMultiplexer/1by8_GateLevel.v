module 1by8_GateLevel(
    input dataIn,
    input [2:0] selectLine,
    output wire [7:0] dataOut
);

    and(dataOut[0], dataIn, ~selectLine[2], ~selectLine[1], ~selectLine[0]);
    and(dataOut[1], dataIn, ~selectLine[2], ~selectLine[1],  selectLine[0]);
    and(dataOut[2], dataIn, ~selectLine[2],  selectLine[1], ~selectLine[0]);
    and(dataOut[3], dataIn, ~selectLine[2],  selectLine[1],  selectLine[0]);
    and(dataOut[4], dataIn,  selectLine[2], ~selectLine[1], ~selectLine[0]);
    and(dataOut[5], dataIn,  selectLine[2], ~selectLine[1],  selectLine[0]);
    and(dataOut[6], dataIn,  selectLine[2],  selectLine[1], ~selectLine[0]);
    and(dataOut[7], dataIn,  selectLine[2],  selectLine[1],  selectLine[0]);

endmodule
