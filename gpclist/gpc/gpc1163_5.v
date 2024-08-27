module gpc1163_5(input [2:0] src0, input [5:0] src1, input [0:0] src2, input [0:0] src3, output [4:0] dst);
    wire [3:0] gene;
    wire [3:0] prop;
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
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst1(
        .O5(gene[1]),
        .O6(prop[1]),
        .I0(src1[1]),
        .I1(src1[2]),
        .I2(src1[3]),
        .I3(src1[4]),
        .I4(src1[5]),
        .I5(src1[0])
    );
    LUT6_2 #(
        .INIT(64'he8818117177e7ee8)
    ) lut6_2_inst2(
        .O5(gene[2]),
        .O6(prop[2]),
        .I0(src1[1]),
        .I1(src1[2]),
        .I2(src1[3]),
        .I3(src1[4]),
        .I4(src1[5]),
        .I5(src2[0])
    );
    LUT6_2 #(
        .INIT(64'h177f7fffe8808000)
    ) lut6_2_inst3(
        .O5(gene[3]),
        .O6(prop[3]),
        .I0(src1[1]),
        .I1(src1[2]),
        .I2(src1[3]),
        .I3(src1[4]),
        .I4(src1[5]),
        .I5(src3[0])
    );
    CARRY4 carry4_inst0(
        .CO(carryout[3:0]),
        .O(out[3:0]),
        .CYINIT(1'h0),
        .CI(src0[0]),
        .DI(gene[3:0]),
        .S(prop[3:0])
    );
    assign dst = {carryout[3], out[3], out[2], out[1], out[0]};
endmodule
