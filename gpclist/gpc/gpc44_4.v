module gpc44_4(input [3:0] src0, input [3:0] src1, output [3:0] dst);
    wire [2:0] gene;
    wire [2:0] prop;
    wire [3:0] out;
    wire [3:0] carryout;
    LUT3 #(
        .INIT(8'h60)
    ) lut3_gene0(
        .O(gene[0]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src0[3])
    );
    LUT3 #(
        .INIT(8'h96)
    ) lut3_prop0(
        .O(prop[0]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src0[3])
    );
    LUT6_2 #(
        .INIT(64'h8778788778878778)
    ) lut6_2_inst1(
        .O5(gene[1]),
        .O6(prop[1]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src1[1]),
        .I3(src1[2]),
        .I4(src1[3]),
        .I5(src1[0])
    );
    LUT5 #(
        .INIT(32'h80000000)
    ) lut5_gene2(
        .O(gene[2]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src1[1]),
        .I3(src1[2]),
        .I4(src1[3])
    );
    LUT5 #(
        .INIT(32'h7ff8f880)
    ) lut5_prop2(
        .O(prop[2]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src1[1]),
        .I3(src1[2]),
        .I4(src1[3])
    );
    CARRY4 carry4_inst0(
        .CO(carryout[3:0]),
        .O(out[3:0]),
        .CYINIT(1'h0),
        .CI(src0[0]),
        .DI({1'h0, gene[2:0]}),
        .S({1'h0, prop[2:0]})
    );
    assign dst = {carryout[2], out[2], out[1], out[0]};
endmodule
