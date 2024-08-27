module gpc143_4(input [2:0] src0, input [3:0] src1, input [0:0] src2, output [3:0] dst);
    wire [2:0] gene;
    wire [2:0] prop;
    wire [3:0] out;
    wire [3:0] carryout;
    LUT2 #(
        .INIT(4'h8)
    ) lut2_gene0(
        .O(gene[0]),
        .I0(src0[1]),
        .I1(src0[2])
    );
    LUT2 #(
        .INIT(4'h6)
    ) lut2_prop0(
        .O(prop[0]),
        .I0(src0[1]),
        .I1(src0[2])
    );
    LUT4 #(
        .INIT(16'h9600)
    ) lut4_gene1(
        .O(gene[1]),
        .I0(src1[0]),
        .I1(src1[1]),
        .I2(src1[2]),
        .I3(src1[3])
    );
    LUT4 #(
        .INIT(16'h6996)
    ) lut4_prop1(
        .O(prop[1]),
        .I0(src1[0]),
        .I1(src1[1]),
        .I2(src1[2]),
        .I3(src1[3])
    );
    LUT4 #(
        .INIT(16'he800)
    ) lut4_gene2(
        .O(gene[2]),
        .I0(src1[0]),
        .I1(src1[1]),
        .I2(src1[2]),
        .I3(src2[0])
    );
    LUT4 #(
        .INIT(16'h17e8)
    ) lut4_prop2(
        .O(prop[2]),
        .I0(src1[0]),
        .I1(src1[1]),
        .I2(src1[2]),
        .I3(src2[0])
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
