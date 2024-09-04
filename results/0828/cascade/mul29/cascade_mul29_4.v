module gpc60606060606060606060606060606060615_37(input [4:0] src0, input [0:0] src1, input [5:0] src2, input [5:0] src4, input [5:0] src6, input [5:0] src8, input [5:0] src10, input [5:0] src12, input [5:0] src14, input [5:0] src16, input [5:0] src18, input [5:0] src20, input [5:0] src22, input [5:0] src24, input [5:0] src26, input [5:0] src28, input [5:0] src30, input [5:0] src32, input [5:0] src34, output [36:0] dst);
    wire [35:0] gene;
    wire [35:0] prop;
    wire [35:0] out;
    wire [35:0] carryout;
    LUT4 #(
        .INIT(16'h9600)
    ) lut4_gene0(
        .O(gene[0]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src0[3]),
        .I3(src0[4])
    );
    LUT4 #(
        .INIT(16'h6996)
    ) lut4_prop0(
        .O(prop[0]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src0[3]),
        .I3(src0[4])
    );
    LUT4 #(
        .INIT(16'he800)
    ) lut4_gene1(
        .O(gene[1]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src0[3]),
        .I3(src1[0])
    );
    LUT4 #(
        .INIT(16'h17e8)
    ) lut4_prop1(
        .O(prop[1]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src0[3]),
        .I3(src1[0])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst2(
        .O5(gene[2]),
        .O6(prop[2]),
        .I0(src2[1]),
        .I1(src2[2]),
        .I2(src2[3]),
        .I3(src2[4]),
        .I4(src2[5]),
        .I5(src2[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene3(
        .O(gene[3]),
        .I0(src2[1]),
        .I1(src2[2]),
        .I2(src2[3]),
        .I3(src2[4]),
        .I4(src2[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop3(
        .O(prop[3]),
        .I0(src2[1]),
        .I1(src2[2]),
        .I2(src2[3]),
        .I3(src2[4]),
        .I4(src2[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst4(
        .O5(gene[4]),
        .O6(prop[4]),
        .I0(src4[1]),
        .I1(src4[2]),
        .I2(src4[3]),
        .I3(src4[4]),
        .I4(src4[5]),
        .I5(src4[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene5(
        .O(gene[5]),
        .I0(src4[1]),
        .I1(src4[2]),
        .I2(src4[3]),
        .I3(src4[4]),
        .I4(src4[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop5(
        .O(prop[5]),
        .I0(src4[1]),
        .I1(src4[2]),
        .I2(src4[3]),
        .I3(src4[4]),
        .I4(src4[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst6(
        .O5(gene[6]),
        .O6(prop[6]),
        .I0(src6[1]),
        .I1(src6[2]),
        .I2(src6[3]),
        .I3(src6[4]),
        .I4(src6[5]),
        .I5(src6[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene7(
        .O(gene[7]),
        .I0(src6[1]),
        .I1(src6[2]),
        .I2(src6[3]),
        .I3(src6[4]),
        .I4(src6[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop7(
        .O(prop[7]),
        .I0(src6[1]),
        .I1(src6[2]),
        .I2(src6[3]),
        .I3(src6[4]),
        .I4(src6[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst8(
        .O5(gene[8]),
        .O6(prop[8]),
        .I0(src8[1]),
        .I1(src8[2]),
        .I2(src8[3]),
        .I3(src8[4]),
        .I4(src8[5]),
        .I5(src8[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene9(
        .O(gene[9]),
        .I0(src8[1]),
        .I1(src8[2]),
        .I2(src8[3]),
        .I3(src8[4]),
        .I4(src8[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop9(
        .O(prop[9]),
        .I0(src8[1]),
        .I1(src8[2]),
        .I2(src8[3]),
        .I3(src8[4]),
        .I4(src8[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst10(
        .O5(gene[10]),
        .O6(prop[10]),
        .I0(src10[1]),
        .I1(src10[2]),
        .I2(src10[3]),
        .I3(src10[4]),
        .I4(src10[5]),
        .I5(src10[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene11(
        .O(gene[11]),
        .I0(src10[1]),
        .I1(src10[2]),
        .I2(src10[3]),
        .I3(src10[4]),
        .I4(src10[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop11(
        .O(prop[11]),
        .I0(src10[1]),
        .I1(src10[2]),
        .I2(src10[3]),
        .I3(src10[4]),
        .I4(src10[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst12(
        .O5(gene[12]),
        .O6(prop[12]),
        .I0(src12[1]),
        .I1(src12[2]),
        .I2(src12[3]),
        .I3(src12[4]),
        .I4(src12[5]),
        .I5(src12[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene13(
        .O(gene[13]),
        .I0(src12[1]),
        .I1(src12[2]),
        .I2(src12[3]),
        .I3(src12[4]),
        .I4(src12[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop13(
        .O(prop[13]),
        .I0(src12[1]),
        .I1(src12[2]),
        .I2(src12[3]),
        .I3(src12[4]),
        .I4(src12[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst14(
        .O5(gene[14]),
        .O6(prop[14]),
        .I0(src14[1]),
        .I1(src14[2]),
        .I2(src14[3]),
        .I3(src14[4]),
        .I4(src14[5]),
        .I5(src14[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene15(
        .O(gene[15]),
        .I0(src14[1]),
        .I1(src14[2]),
        .I2(src14[3]),
        .I3(src14[4]),
        .I4(src14[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop15(
        .O(prop[15]),
        .I0(src14[1]),
        .I1(src14[2]),
        .I2(src14[3]),
        .I3(src14[4]),
        .I4(src14[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst16(
        .O5(gene[16]),
        .O6(prop[16]),
        .I0(src16[1]),
        .I1(src16[2]),
        .I2(src16[3]),
        .I3(src16[4]),
        .I4(src16[5]),
        .I5(src16[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene17(
        .O(gene[17]),
        .I0(src16[1]),
        .I1(src16[2]),
        .I2(src16[3]),
        .I3(src16[4]),
        .I4(src16[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop17(
        .O(prop[17]),
        .I0(src16[1]),
        .I1(src16[2]),
        .I2(src16[3]),
        .I3(src16[4]),
        .I4(src16[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst18(
        .O5(gene[18]),
        .O6(prop[18]),
        .I0(src18[1]),
        .I1(src18[2]),
        .I2(src18[3]),
        .I3(src18[4]),
        .I4(src18[5]),
        .I5(src18[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene19(
        .O(gene[19]),
        .I0(src18[1]),
        .I1(src18[2]),
        .I2(src18[3]),
        .I3(src18[4]),
        .I4(src18[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop19(
        .O(prop[19]),
        .I0(src18[1]),
        .I1(src18[2]),
        .I2(src18[3]),
        .I3(src18[4]),
        .I4(src18[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst20(
        .O5(gene[20]),
        .O6(prop[20]),
        .I0(src20[1]),
        .I1(src20[2]),
        .I2(src20[3]),
        .I3(src20[4]),
        .I4(src20[5]),
        .I5(src20[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene21(
        .O(gene[21]),
        .I0(src20[1]),
        .I1(src20[2]),
        .I2(src20[3]),
        .I3(src20[4]),
        .I4(src20[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop21(
        .O(prop[21]),
        .I0(src20[1]),
        .I1(src20[2]),
        .I2(src20[3]),
        .I3(src20[4]),
        .I4(src20[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst22(
        .O5(gene[22]),
        .O6(prop[22]),
        .I0(src22[1]),
        .I1(src22[2]),
        .I2(src22[3]),
        .I3(src22[4]),
        .I4(src22[5]),
        .I5(src22[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene23(
        .O(gene[23]),
        .I0(src22[1]),
        .I1(src22[2]),
        .I2(src22[3]),
        .I3(src22[4]),
        .I4(src22[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop23(
        .O(prop[23]),
        .I0(src22[1]),
        .I1(src22[2]),
        .I2(src22[3]),
        .I3(src22[4]),
        .I4(src22[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst24(
        .O5(gene[24]),
        .O6(prop[24]),
        .I0(src24[1]),
        .I1(src24[2]),
        .I2(src24[3]),
        .I3(src24[4]),
        .I4(src24[5]),
        .I5(src24[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene25(
        .O(gene[25]),
        .I0(src24[1]),
        .I1(src24[2]),
        .I2(src24[3]),
        .I3(src24[4]),
        .I4(src24[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop25(
        .O(prop[25]),
        .I0(src24[1]),
        .I1(src24[2]),
        .I2(src24[3]),
        .I3(src24[4]),
        .I4(src24[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst26(
        .O5(gene[26]),
        .O6(prop[26]),
        .I0(src26[1]),
        .I1(src26[2]),
        .I2(src26[3]),
        .I3(src26[4]),
        .I4(src26[5]),
        .I5(src26[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene27(
        .O(gene[27]),
        .I0(src26[1]),
        .I1(src26[2]),
        .I2(src26[3]),
        .I3(src26[4]),
        .I4(src26[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop27(
        .O(prop[27]),
        .I0(src26[1]),
        .I1(src26[2]),
        .I2(src26[3]),
        .I3(src26[4]),
        .I4(src26[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst28(
        .O5(gene[28]),
        .O6(prop[28]),
        .I0(src28[1]),
        .I1(src28[2]),
        .I2(src28[3]),
        .I3(src28[4]),
        .I4(src28[5]),
        .I5(src28[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene29(
        .O(gene[29]),
        .I0(src28[1]),
        .I1(src28[2]),
        .I2(src28[3]),
        .I3(src28[4]),
        .I4(src28[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop29(
        .O(prop[29]),
        .I0(src28[1]),
        .I1(src28[2]),
        .I2(src28[3]),
        .I3(src28[4]),
        .I4(src28[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst30(
        .O5(gene[30]),
        .O6(prop[30]),
        .I0(src30[1]),
        .I1(src30[2]),
        .I2(src30[3]),
        .I3(src30[4]),
        .I4(src30[5]),
        .I5(src30[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene31(
        .O(gene[31]),
        .I0(src30[1]),
        .I1(src30[2]),
        .I2(src30[3]),
        .I3(src30[4]),
        .I4(src30[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop31(
        .O(prop[31]),
        .I0(src30[1]),
        .I1(src30[2]),
        .I2(src30[3]),
        .I3(src30[4]),
        .I4(src30[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst32(
        .O5(gene[32]),
        .O6(prop[32]),
        .I0(src32[1]),
        .I1(src32[2]),
        .I2(src32[3]),
        .I3(src32[4]),
        .I4(src32[5]),
        .I5(src32[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene33(
        .O(gene[33]),
        .I0(src32[1]),
        .I1(src32[2]),
        .I2(src32[3]),
        .I3(src32[4]),
        .I4(src32[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop33(
        .O(prop[33]),
        .I0(src32[1]),
        .I1(src32[2]),
        .I2(src32[3]),
        .I3(src32[4]),
        .I4(src32[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst34(
        .O5(gene[34]),
        .O6(prop[34]),
        .I0(src34[1]),
        .I1(src34[2]),
        .I2(src34[3]),
        .I3(src34[4]),
        .I4(src34[5]),
        .I5(src34[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene35(
        .O(gene[35]),
        .I0(src34[1]),
        .I1(src34[2]),
        .I2(src34[3]),
        .I3(src34[4]),
        .I4(src34[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop35(
        .O(prop[35]),
        .I0(src34[1]),
        .I1(src34[2]),
        .I2(src34[3]),
        .I3(src34[4]),
        .I4(src34[5])
    );
    CARRY4 carry4_inst0(
        .CO(carryout[3:0]),
        .O(out[3:0]),
        .CYINIT(1'h0),
        .CI(src0[0]),
        .DI(gene[3:0]),
        .S(prop[3:0])
    );
    CARRY4 carry4_inst1(
        .CO(carryout[7:4]),
        .O(out[7:4]),
        .CYINIT(1'h0),
        .CI(carryout[3]),
        .DI(gene[7:4]),
        .S(prop[7:4])
    );
    CARRY4 carry4_inst2(
        .CO(carryout[11:8]),
        .O(out[11:8]),
        .CYINIT(1'h0),
        .CI(carryout[7]),
        .DI(gene[11:8]),
        .S(prop[11:8])
    );
    CARRY4 carry4_inst3(
        .CO(carryout[15:12]),
        .O(out[15:12]),
        .CYINIT(1'h0),
        .CI(carryout[11]),
        .DI(gene[15:12]),
        .S(prop[15:12])
    );
    CARRY4 carry4_inst4(
        .CO(carryout[19:16]),
        .O(out[19:16]),
        .CYINIT(1'h0),
        .CI(carryout[15]),
        .DI(gene[19:16]),
        .S(prop[19:16])
    );
    CARRY4 carry4_inst5(
        .CO(carryout[23:20]),
        .O(out[23:20]),
        .CYINIT(1'h0),
        .CI(carryout[19]),
        .DI(gene[23:20]),
        .S(prop[23:20])
    );
    CARRY4 carry4_inst6(
        .CO(carryout[27:24]),
        .O(out[27:24]),
        .CYINIT(1'h0),
        .CI(carryout[23]),
        .DI(gene[27:24]),
        .S(prop[27:24])
    );
    CARRY4 carry4_inst7(
        .CO(carryout[31:28]),
        .O(out[31:28]),
        .CYINIT(1'h0),
        .CI(carryout[27]),
        .DI(gene[31:28]),
        .S(prop[31:28])
    );
    CARRY4 carry4_inst8(
        .CO(carryout[35:32]),
        .O(out[35:32]),
        .CYINIT(1'h0),
        .CI(carryout[31]),
        .DI(gene[35:32]),
        .S(prop[35:32])
    );
    assign dst = {carryout[35], out[35], out[34], out[33], out[32], out[31], out[30], out[29], out[28], out[27], out[26], out[25], out[24], out[23], out[22], out[21], out[20], out[19], out[18], out[17], out[16], out[15], out[14], out[13], out[12], out[11], out[10], out[9], out[8], out[7], out[6], out[5], out[4], out[3], out[2], out[1], out[0]};
endmodule

module gpc6061406060606060606060606060606060606060615_45(input [4:0] src0, input [0:0] src1, input [5:0] src2, input [5:0] src4, input [5:0] src6, input [5:0] src8, input [5:0] src10, input [5:0] src12, input [5:0] src14, input [5:0] src16, input [5:0] src18, input [5:0] src20, input [5:0] src22, input [5:0] src24, input [5:0] src26, input [5:0] src28, input [5:0] src30, input [5:0] src32, input [5:0] src34, input [5:0] src36, input [3:0] src38, input [0:0] src39, input [5:0] src40, input [5:0] src42, output [44:0] dst);
    wire [43:0] gene;
    wire [43:0] prop;
    wire [43:0] out;
    wire [43:0] carryout;
    LUT4 #(
        .INIT(16'h9600)
    ) lut4_gene0(
        .O(gene[0]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src0[3]),
        .I3(src0[4])
    );
    LUT4 #(
        .INIT(16'h6996)
    ) lut4_prop0(
        .O(prop[0]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src0[3]),
        .I3(src0[4])
    );
    LUT4 #(
        .INIT(16'he800)
    ) lut4_gene1(
        .O(gene[1]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src0[3]),
        .I3(src1[0])
    );
    LUT4 #(
        .INIT(16'h17e8)
    ) lut4_prop1(
        .O(prop[1]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src0[3]),
        .I3(src1[0])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst2(
        .O5(gene[2]),
        .O6(prop[2]),
        .I0(src2[1]),
        .I1(src2[2]),
        .I2(src2[3]),
        .I3(src2[4]),
        .I4(src2[5]),
        .I5(src2[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene3(
        .O(gene[3]),
        .I0(src2[1]),
        .I1(src2[2]),
        .I2(src2[3]),
        .I3(src2[4]),
        .I4(src2[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop3(
        .O(prop[3]),
        .I0(src2[1]),
        .I1(src2[2]),
        .I2(src2[3]),
        .I3(src2[4]),
        .I4(src2[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst4(
        .O5(gene[4]),
        .O6(prop[4]),
        .I0(src4[1]),
        .I1(src4[2]),
        .I2(src4[3]),
        .I3(src4[4]),
        .I4(src4[5]),
        .I5(src4[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene5(
        .O(gene[5]),
        .I0(src4[1]),
        .I1(src4[2]),
        .I2(src4[3]),
        .I3(src4[4]),
        .I4(src4[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop5(
        .O(prop[5]),
        .I0(src4[1]),
        .I1(src4[2]),
        .I2(src4[3]),
        .I3(src4[4]),
        .I4(src4[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst6(
        .O5(gene[6]),
        .O6(prop[6]),
        .I0(src6[1]),
        .I1(src6[2]),
        .I2(src6[3]),
        .I3(src6[4]),
        .I4(src6[5]),
        .I5(src6[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene7(
        .O(gene[7]),
        .I0(src6[1]),
        .I1(src6[2]),
        .I2(src6[3]),
        .I3(src6[4]),
        .I4(src6[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop7(
        .O(prop[7]),
        .I0(src6[1]),
        .I1(src6[2]),
        .I2(src6[3]),
        .I3(src6[4]),
        .I4(src6[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst8(
        .O5(gene[8]),
        .O6(prop[8]),
        .I0(src8[1]),
        .I1(src8[2]),
        .I2(src8[3]),
        .I3(src8[4]),
        .I4(src8[5]),
        .I5(src8[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene9(
        .O(gene[9]),
        .I0(src8[1]),
        .I1(src8[2]),
        .I2(src8[3]),
        .I3(src8[4]),
        .I4(src8[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop9(
        .O(prop[9]),
        .I0(src8[1]),
        .I1(src8[2]),
        .I2(src8[3]),
        .I3(src8[4]),
        .I4(src8[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst10(
        .O5(gene[10]),
        .O6(prop[10]),
        .I0(src10[1]),
        .I1(src10[2]),
        .I2(src10[3]),
        .I3(src10[4]),
        .I4(src10[5]),
        .I5(src10[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene11(
        .O(gene[11]),
        .I0(src10[1]),
        .I1(src10[2]),
        .I2(src10[3]),
        .I3(src10[4]),
        .I4(src10[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop11(
        .O(prop[11]),
        .I0(src10[1]),
        .I1(src10[2]),
        .I2(src10[3]),
        .I3(src10[4]),
        .I4(src10[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst12(
        .O5(gene[12]),
        .O6(prop[12]),
        .I0(src12[1]),
        .I1(src12[2]),
        .I2(src12[3]),
        .I3(src12[4]),
        .I4(src12[5]),
        .I5(src12[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene13(
        .O(gene[13]),
        .I0(src12[1]),
        .I1(src12[2]),
        .I2(src12[3]),
        .I3(src12[4]),
        .I4(src12[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop13(
        .O(prop[13]),
        .I0(src12[1]),
        .I1(src12[2]),
        .I2(src12[3]),
        .I3(src12[4]),
        .I4(src12[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst14(
        .O5(gene[14]),
        .O6(prop[14]),
        .I0(src14[1]),
        .I1(src14[2]),
        .I2(src14[3]),
        .I3(src14[4]),
        .I4(src14[5]),
        .I5(src14[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene15(
        .O(gene[15]),
        .I0(src14[1]),
        .I1(src14[2]),
        .I2(src14[3]),
        .I3(src14[4]),
        .I4(src14[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop15(
        .O(prop[15]),
        .I0(src14[1]),
        .I1(src14[2]),
        .I2(src14[3]),
        .I3(src14[4]),
        .I4(src14[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst16(
        .O5(gene[16]),
        .O6(prop[16]),
        .I0(src16[1]),
        .I1(src16[2]),
        .I2(src16[3]),
        .I3(src16[4]),
        .I4(src16[5]),
        .I5(src16[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene17(
        .O(gene[17]),
        .I0(src16[1]),
        .I1(src16[2]),
        .I2(src16[3]),
        .I3(src16[4]),
        .I4(src16[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop17(
        .O(prop[17]),
        .I0(src16[1]),
        .I1(src16[2]),
        .I2(src16[3]),
        .I3(src16[4]),
        .I4(src16[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst18(
        .O5(gene[18]),
        .O6(prop[18]),
        .I0(src18[1]),
        .I1(src18[2]),
        .I2(src18[3]),
        .I3(src18[4]),
        .I4(src18[5]),
        .I5(src18[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene19(
        .O(gene[19]),
        .I0(src18[1]),
        .I1(src18[2]),
        .I2(src18[3]),
        .I3(src18[4]),
        .I4(src18[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop19(
        .O(prop[19]),
        .I0(src18[1]),
        .I1(src18[2]),
        .I2(src18[3]),
        .I3(src18[4]),
        .I4(src18[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst20(
        .O5(gene[20]),
        .O6(prop[20]),
        .I0(src20[1]),
        .I1(src20[2]),
        .I2(src20[3]),
        .I3(src20[4]),
        .I4(src20[5]),
        .I5(src20[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene21(
        .O(gene[21]),
        .I0(src20[1]),
        .I1(src20[2]),
        .I2(src20[3]),
        .I3(src20[4]),
        .I4(src20[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop21(
        .O(prop[21]),
        .I0(src20[1]),
        .I1(src20[2]),
        .I2(src20[3]),
        .I3(src20[4]),
        .I4(src20[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst22(
        .O5(gene[22]),
        .O6(prop[22]),
        .I0(src22[1]),
        .I1(src22[2]),
        .I2(src22[3]),
        .I3(src22[4]),
        .I4(src22[5]),
        .I5(src22[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene23(
        .O(gene[23]),
        .I0(src22[1]),
        .I1(src22[2]),
        .I2(src22[3]),
        .I3(src22[4]),
        .I4(src22[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop23(
        .O(prop[23]),
        .I0(src22[1]),
        .I1(src22[2]),
        .I2(src22[3]),
        .I3(src22[4]),
        .I4(src22[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst24(
        .O5(gene[24]),
        .O6(prop[24]),
        .I0(src24[1]),
        .I1(src24[2]),
        .I2(src24[3]),
        .I3(src24[4]),
        .I4(src24[5]),
        .I5(src24[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene25(
        .O(gene[25]),
        .I0(src24[1]),
        .I1(src24[2]),
        .I2(src24[3]),
        .I3(src24[4]),
        .I4(src24[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop25(
        .O(prop[25]),
        .I0(src24[1]),
        .I1(src24[2]),
        .I2(src24[3]),
        .I3(src24[4]),
        .I4(src24[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst26(
        .O5(gene[26]),
        .O6(prop[26]),
        .I0(src26[1]),
        .I1(src26[2]),
        .I2(src26[3]),
        .I3(src26[4]),
        .I4(src26[5]),
        .I5(src26[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene27(
        .O(gene[27]),
        .I0(src26[1]),
        .I1(src26[2]),
        .I2(src26[3]),
        .I3(src26[4]),
        .I4(src26[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop27(
        .O(prop[27]),
        .I0(src26[1]),
        .I1(src26[2]),
        .I2(src26[3]),
        .I3(src26[4]),
        .I4(src26[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst28(
        .O5(gene[28]),
        .O6(prop[28]),
        .I0(src28[1]),
        .I1(src28[2]),
        .I2(src28[3]),
        .I3(src28[4]),
        .I4(src28[5]),
        .I5(src28[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene29(
        .O(gene[29]),
        .I0(src28[1]),
        .I1(src28[2]),
        .I2(src28[3]),
        .I3(src28[4]),
        .I4(src28[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop29(
        .O(prop[29]),
        .I0(src28[1]),
        .I1(src28[2]),
        .I2(src28[3]),
        .I3(src28[4]),
        .I4(src28[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst30(
        .O5(gene[30]),
        .O6(prop[30]),
        .I0(src30[1]),
        .I1(src30[2]),
        .I2(src30[3]),
        .I3(src30[4]),
        .I4(src30[5]),
        .I5(src30[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene31(
        .O(gene[31]),
        .I0(src30[1]),
        .I1(src30[2]),
        .I2(src30[3]),
        .I3(src30[4]),
        .I4(src30[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop31(
        .O(prop[31]),
        .I0(src30[1]),
        .I1(src30[2]),
        .I2(src30[3]),
        .I3(src30[4]),
        .I4(src30[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst32(
        .O5(gene[32]),
        .O6(prop[32]),
        .I0(src32[1]),
        .I1(src32[2]),
        .I2(src32[3]),
        .I3(src32[4]),
        .I4(src32[5]),
        .I5(src32[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene33(
        .O(gene[33]),
        .I0(src32[1]),
        .I1(src32[2]),
        .I2(src32[3]),
        .I3(src32[4]),
        .I4(src32[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop33(
        .O(prop[33]),
        .I0(src32[1]),
        .I1(src32[2]),
        .I2(src32[3]),
        .I3(src32[4]),
        .I4(src32[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst34(
        .O5(gene[34]),
        .O6(prop[34]),
        .I0(src34[1]),
        .I1(src34[2]),
        .I2(src34[3]),
        .I3(src34[4]),
        .I4(src34[5]),
        .I5(src34[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene35(
        .O(gene[35]),
        .I0(src34[1]),
        .I1(src34[2]),
        .I2(src34[3]),
        .I3(src34[4]),
        .I4(src34[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop35(
        .O(prop[35]),
        .I0(src34[1]),
        .I1(src34[2]),
        .I2(src34[3]),
        .I3(src34[4]),
        .I4(src34[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst36(
        .O5(gene[36]),
        .O6(prop[36]),
        .I0(src36[1]),
        .I1(src36[2]),
        .I2(src36[3]),
        .I3(src36[4]),
        .I4(src36[5]),
        .I5(src36[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene37(
        .O(gene[37]),
        .I0(src36[1]),
        .I1(src36[2]),
        .I2(src36[3]),
        .I3(src36[4]),
        .I4(src36[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop37(
        .O(prop[37]),
        .I0(src36[1]),
        .I1(src36[2]),
        .I2(src36[3]),
        .I3(src36[4]),
        .I4(src36[5])
    );
    LUT4 #(
        .INIT(16'h9600)
    ) lut4_gene38(
        .O(gene[38]),
        .I0(src38[0]),
        .I1(src38[1]),
        .I2(src38[2]),
        .I3(src38[3])
    );
    LUT4 #(
        .INIT(16'h6996)
    ) lut4_prop38(
        .O(prop[38]),
        .I0(src38[0]),
        .I1(src38[1]),
        .I2(src38[2]),
        .I3(src38[3])
    );
    LUT4 #(
        .INIT(16'he800)
    ) lut4_gene39(
        .O(gene[39]),
        .I0(src38[0]),
        .I1(src38[1]),
        .I2(src38[2]),
        .I3(src39[0])
    );
    LUT4 #(
        .INIT(16'h17e8)
    ) lut4_prop39(
        .O(prop[39]),
        .I0(src38[0]),
        .I1(src38[1]),
        .I2(src38[2]),
        .I3(src39[0])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst40(
        .O5(gene[40]),
        .O6(prop[40]),
        .I0(src40[1]),
        .I1(src40[2]),
        .I2(src40[3]),
        .I3(src40[4]),
        .I4(src40[5]),
        .I5(src40[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene41(
        .O(gene[41]),
        .I0(src40[1]),
        .I1(src40[2]),
        .I2(src40[3]),
        .I3(src40[4]),
        .I4(src40[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop41(
        .O(prop[41]),
        .I0(src40[1]),
        .I1(src40[2]),
        .I2(src40[3]),
        .I3(src40[4]),
        .I4(src40[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst42(
        .O5(gene[42]),
        .O6(prop[42]),
        .I0(src42[1]),
        .I1(src42[2]),
        .I2(src42[3]),
        .I3(src42[4]),
        .I4(src42[5]),
        .I5(src42[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene43(
        .O(gene[43]),
        .I0(src42[1]),
        .I1(src42[2]),
        .I2(src42[3]),
        .I3(src42[4]),
        .I4(src42[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop43(
        .O(prop[43]),
        .I0(src42[1]),
        .I1(src42[2]),
        .I2(src42[3]),
        .I3(src42[4]),
        .I4(src42[5])
    );
    CARRY4 carry4_inst0(
        .CO(carryout[3:0]),
        .O(out[3:0]),
        .CYINIT(1'h0),
        .CI(src0[0]),
        .DI(gene[3:0]),
        .S(prop[3:0])
    );
    CARRY4 carry4_inst1(
        .CO(carryout[7:4]),
        .O(out[7:4]),
        .CYINIT(1'h0),
        .CI(carryout[3]),
        .DI(gene[7:4]),
        .S(prop[7:4])
    );
    CARRY4 carry4_inst2(
        .CO(carryout[11:8]),
        .O(out[11:8]),
        .CYINIT(1'h0),
        .CI(carryout[7]),
        .DI(gene[11:8]),
        .S(prop[11:8])
    );
    CARRY4 carry4_inst3(
        .CO(carryout[15:12]),
        .O(out[15:12]),
        .CYINIT(1'h0),
        .CI(carryout[11]),
        .DI(gene[15:12]),
        .S(prop[15:12])
    );
    CARRY4 carry4_inst4(
        .CO(carryout[19:16]),
        .O(out[19:16]),
        .CYINIT(1'h0),
        .CI(carryout[15]),
        .DI(gene[19:16]),
        .S(prop[19:16])
    );
    CARRY4 carry4_inst5(
        .CO(carryout[23:20]),
        .O(out[23:20]),
        .CYINIT(1'h0),
        .CI(carryout[19]),
        .DI(gene[23:20]),
        .S(prop[23:20])
    );
    CARRY4 carry4_inst6(
        .CO(carryout[27:24]),
        .O(out[27:24]),
        .CYINIT(1'h0),
        .CI(carryout[23]),
        .DI(gene[27:24]),
        .S(prop[27:24])
    );
    CARRY4 carry4_inst7(
        .CO(carryout[31:28]),
        .O(out[31:28]),
        .CYINIT(1'h0),
        .CI(carryout[27]),
        .DI(gene[31:28]),
        .S(prop[31:28])
    );
    CARRY4 carry4_inst8(
        .CO(carryout[35:32]),
        .O(out[35:32]),
        .CYINIT(1'h0),
        .CI(carryout[31]),
        .DI(gene[35:32]),
        .S(prop[35:32])
    );
    CARRY4 carry4_inst9(
        .CO(carryout[39:36]),
        .O(out[39:36]),
        .CYINIT(1'h0),
        .CI(carryout[35]),
        .DI(gene[39:36]),
        .S(prop[39:36])
    );
    CARRY4 carry4_inst10(
        .CO(carryout[43:40]),
        .O(out[43:40]),
        .CYINIT(1'h0),
        .CI(carryout[39]),
        .DI(gene[43:40]),
        .S(prop[43:40])
    );
    assign dst = {carryout[43], out[43], out[42], out[41], out[40], out[39], out[38], out[37], out[36], out[35], out[34], out[33], out[32], out[31], out[30], out[29], out[28], out[27], out[26], out[25], out[24], out[23], out[22], out[21], out[20], out[19], out[18], out[17], out[16], out[15], out[14], out[13], out[12], out[11], out[10], out[9], out[8], out[7], out[6], out[5], out[4], out[3], out[2], out[1], out[0]};
endmodule

module gpc6060606060606060606060606060615_33(input [4:0] src0, input [0:0] src1, input [5:0] src2, input [5:0] src4, input [5:0] src6, input [5:0] src8, input [5:0] src10, input [5:0] src12, input [5:0] src14, input [5:0] src16, input [5:0] src18, input [5:0] src20, input [5:0] src22, input [5:0] src24, input [5:0] src26, input [5:0] src28, input [5:0] src30, output [32:0] dst);
    wire [31:0] gene;
    wire [31:0] prop;
    wire [31:0] out;
    wire [31:0] carryout;
    LUT4 #(
        .INIT(16'h9600)
    ) lut4_gene0(
        .O(gene[0]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src0[3]),
        .I3(src0[4])
    );
    LUT4 #(
        .INIT(16'h6996)
    ) lut4_prop0(
        .O(prop[0]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src0[3]),
        .I3(src0[4])
    );
    LUT4 #(
        .INIT(16'he800)
    ) lut4_gene1(
        .O(gene[1]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src0[3]),
        .I3(src1[0])
    );
    LUT4 #(
        .INIT(16'h17e8)
    ) lut4_prop1(
        .O(prop[1]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src0[3]),
        .I3(src1[0])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst2(
        .O5(gene[2]),
        .O6(prop[2]),
        .I0(src2[1]),
        .I1(src2[2]),
        .I2(src2[3]),
        .I3(src2[4]),
        .I4(src2[5]),
        .I5(src2[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene3(
        .O(gene[3]),
        .I0(src2[1]),
        .I1(src2[2]),
        .I2(src2[3]),
        .I3(src2[4]),
        .I4(src2[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop3(
        .O(prop[3]),
        .I0(src2[1]),
        .I1(src2[2]),
        .I2(src2[3]),
        .I3(src2[4]),
        .I4(src2[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst4(
        .O5(gene[4]),
        .O6(prop[4]),
        .I0(src4[1]),
        .I1(src4[2]),
        .I2(src4[3]),
        .I3(src4[4]),
        .I4(src4[5]),
        .I5(src4[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene5(
        .O(gene[5]),
        .I0(src4[1]),
        .I1(src4[2]),
        .I2(src4[3]),
        .I3(src4[4]),
        .I4(src4[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop5(
        .O(prop[5]),
        .I0(src4[1]),
        .I1(src4[2]),
        .I2(src4[3]),
        .I3(src4[4]),
        .I4(src4[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst6(
        .O5(gene[6]),
        .O6(prop[6]),
        .I0(src6[1]),
        .I1(src6[2]),
        .I2(src6[3]),
        .I3(src6[4]),
        .I4(src6[5]),
        .I5(src6[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene7(
        .O(gene[7]),
        .I0(src6[1]),
        .I1(src6[2]),
        .I2(src6[3]),
        .I3(src6[4]),
        .I4(src6[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop7(
        .O(prop[7]),
        .I0(src6[1]),
        .I1(src6[2]),
        .I2(src6[3]),
        .I3(src6[4]),
        .I4(src6[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst8(
        .O5(gene[8]),
        .O6(prop[8]),
        .I0(src8[1]),
        .I1(src8[2]),
        .I2(src8[3]),
        .I3(src8[4]),
        .I4(src8[5]),
        .I5(src8[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene9(
        .O(gene[9]),
        .I0(src8[1]),
        .I1(src8[2]),
        .I2(src8[3]),
        .I3(src8[4]),
        .I4(src8[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop9(
        .O(prop[9]),
        .I0(src8[1]),
        .I1(src8[2]),
        .I2(src8[3]),
        .I3(src8[4]),
        .I4(src8[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst10(
        .O5(gene[10]),
        .O6(prop[10]),
        .I0(src10[1]),
        .I1(src10[2]),
        .I2(src10[3]),
        .I3(src10[4]),
        .I4(src10[5]),
        .I5(src10[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene11(
        .O(gene[11]),
        .I0(src10[1]),
        .I1(src10[2]),
        .I2(src10[3]),
        .I3(src10[4]),
        .I4(src10[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop11(
        .O(prop[11]),
        .I0(src10[1]),
        .I1(src10[2]),
        .I2(src10[3]),
        .I3(src10[4]),
        .I4(src10[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst12(
        .O5(gene[12]),
        .O6(prop[12]),
        .I0(src12[1]),
        .I1(src12[2]),
        .I2(src12[3]),
        .I3(src12[4]),
        .I4(src12[5]),
        .I5(src12[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene13(
        .O(gene[13]),
        .I0(src12[1]),
        .I1(src12[2]),
        .I2(src12[3]),
        .I3(src12[4]),
        .I4(src12[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop13(
        .O(prop[13]),
        .I0(src12[1]),
        .I1(src12[2]),
        .I2(src12[3]),
        .I3(src12[4]),
        .I4(src12[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst14(
        .O5(gene[14]),
        .O6(prop[14]),
        .I0(src14[1]),
        .I1(src14[2]),
        .I2(src14[3]),
        .I3(src14[4]),
        .I4(src14[5]),
        .I5(src14[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene15(
        .O(gene[15]),
        .I0(src14[1]),
        .I1(src14[2]),
        .I2(src14[3]),
        .I3(src14[4]),
        .I4(src14[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop15(
        .O(prop[15]),
        .I0(src14[1]),
        .I1(src14[2]),
        .I2(src14[3]),
        .I3(src14[4]),
        .I4(src14[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst16(
        .O5(gene[16]),
        .O6(prop[16]),
        .I0(src16[1]),
        .I1(src16[2]),
        .I2(src16[3]),
        .I3(src16[4]),
        .I4(src16[5]),
        .I5(src16[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene17(
        .O(gene[17]),
        .I0(src16[1]),
        .I1(src16[2]),
        .I2(src16[3]),
        .I3(src16[4]),
        .I4(src16[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop17(
        .O(prop[17]),
        .I0(src16[1]),
        .I1(src16[2]),
        .I2(src16[3]),
        .I3(src16[4]),
        .I4(src16[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst18(
        .O5(gene[18]),
        .O6(prop[18]),
        .I0(src18[1]),
        .I1(src18[2]),
        .I2(src18[3]),
        .I3(src18[4]),
        .I4(src18[5]),
        .I5(src18[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene19(
        .O(gene[19]),
        .I0(src18[1]),
        .I1(src18[2]),
        .I2(src18[3]),
        .I3(src18[4]),
        .I4(src18[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop19(
        .O(prop[19]),
        .I0(src18[1]),
        .I1(src18[2]),
        .I2(src18[3]),
        .I3(src18[4]),
        .I4(src18[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst20(
        .O5(gene[20]),
        .O6(prop[20]),
        .I0(src20[1]),
        .I1(src20[2]),
        .I2(src20[3]),
        .I3(src20[4]),
        .I4(src20[5]),
        .I5(src20[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene21(
        .O(gene[21]),
        .I0(src20[1]),
        .I1(src20[2]),
        .I2(src20[3]),
        .I3(src20[4]),
        .I4(src20[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop21(
        .O(prop[21]),
        .I0(src20[1]),
        .I1(src20[2]),
        .I2(src20[3]),
        .I3(src20[4]),
        .I4(src20[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst22(
        .O5(gene[22]),
        .O6(prop[22]),
        .I0(src22[1]),
        .I1(src22[2]),
        .I2(src22[3]),
        .I3(src22[4]),
        .I4(src22[5]),
        .I5(src22[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene23(
        .O(gene[23]),
        .I0(src22[1]),
        .I1(src22[2]),
        .I2(src22[3]),
        .I3(src22[4]),
        .I4(src22[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop23(
        .O(prop[23]),
        .I0(src22[1]),
        .I1(src22[2]),
        .I2(src22[3]),
        .I3(src22[4]),
        .I4(src22[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst24(
        .O5(gene[24]),
        .O6(prop[24]),
        .I0(src24[1]),
        .I1(src24[2]),
        .I2(src24[3]),
        .I3(src24[4]),
        .I4(src24[5]),
        .I5(src24[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene25(
        .O(gene[25]),
        .I0(src24[1]),
        .I1(src24[2]),
        .I2(src24[3]),
        .I3(src24[4]),
        .I4(src24[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop25(
        .O(prop[25]),
        .I0(src24[1]),
        .I1(src24[2]),
        .I2(src24[3]),
        .I3(src24[4]),
        .I4(src24[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst26(
        .O5(gene[26]),
        .O6(prop[26]),
        .I0(src26[1]),
        .I1(src26[2]),
        .I2(src26[3]),
        .I3(src26[4]),
        .I4(src26[5]),
        .I5(src26[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene27(
        .O(gene[27]),
        .I0(src26[1]),
        .I1(src26[2]),
        .I2(src26[3]),
        .I3(src26[4]),
        .I4(src26[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop27(
        .O(prop[27]),
        .I0(src26[1]),
        .I1(src26[2]),
        .I2(src26[3]),
        .I3(src26[4]),
        .I4(src26[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst28(
        .O5(gene[28]),
        .O6(prop[28]),
        .I0(src28[1]),
        .I1(src28[2]),
        .I2(src28[3]),
        .I3(src28[4]),
        .I4(src28[5]),
        .I5(src28[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene29(
        .O(gene[29]),
        .I0(src28[1]),
        .I1(src28[2]),
        .I2(src28[3]),
        .I3(src28[4]),
        .I4(src28[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop29(
        .O(prop[29]),
        .I0(src28[1]),
        .I1(src28[2]),
        .I2(src28[3]),
        .I3(src28[4]),
        .I4(src28[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst30(
        .O5(gene[30]),
        .O6(prop[30]),
        .I0(src30[1]),
        .I1(src30[2]),
        .I2(src30[3]),
        .I3(src30[4]),
        .I4(src30[5]),
        .I5(src30[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene31(
        .O(gene[31]),
        .I0(src30[1]),
        .I1(src30[2]),
        .I2(src30[3]),
        .I3(src30[4]),
        .I4(src30[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop31(
        .O(prop[31]),
        .I0(src30[1]),
        .I1(src30[2]),
        .I2(src30[3]),
        .I3(src30[4]),
        .I4(src30[5])
    );
    CARRY4 carry4_inst0(
        .CO(carryout[3:0]),
        .O(out[3:0]),
        .CYINIT(1'h0),
        .CI(src0[0]),
        .DI(gene[3:0]),
        .S(prop[3:0])
    );
    CARRY4 carry4_inst1(
        .CO(carryout[7:4]),
        .O(out[7:4]),
        .CYINIT(1'h0),
        .CI(carryout[3]),
        .DI(gene[7:4]),
        .S(prop[7:4])
    );
    CARRY4 carry4_inst2(
        .CO(carryout[11:8]),
        .O(out[11:8]),
        .CYINIT(1'h0),
        .CI(carryout[7]),
        .DI(gene[11:8]),
        .S(prop[11:8])
    );
    CARRY4 carry4_inst3(
        .CO(carryout[15:12]),
        .O(out[15:12]),
        .CYINIT(1'h0),
        .CI(carryout[11]),
        .DI(gene[15:12]),
        .S(prop[15:12])
    );
    CARRY4 carry4_inst4(
        .CO(carryout[19:16]),
        .O(out[19:16]),
        .CYINIT(1'h0),
        .CI(carryout[15]),
        .DI(gene[19:16]),
        .S(prop[19:16])
    );
    CARRY4 carry4_inst5(
        .CO(carryout[23:20]),
        .O(out[23:20]),
        .CYINIT(1'h0),
        .CI(carryout[19]),
        .DI(gene[23:20]),
        .S(prop[23:20])
    );
    CARRY4 carry4_inst6(
        .CO(carryout[27:24]),
        .O(out[27:24]),
        .CYINIT(1'h0),
        .CI(carryout[23]),
        .DI(gene[27:24]),
        .S(prop[27:24])
    );
    CARRY4 carry4_inst7(
        .CO(carryout[31:28]),
        .O(out[31:28]),
        .CYINIT(1'h0),
        .CI(carryout[27]),
        .DI(gene[31:28]),
        .S(prop[31:28])
    );
    assign dst = {carryout[31], out[31], out[30], out[29], out[28], out[27], out[26], out[25], out[24], out[23], out[22], out[21], out[20], out[19], out[18], out[17], out[16], out[15], out[14], out[13], out[12], out[11], out[10], out[9], out[8], out[7], out[6], out[5], out[4], out[3], out[2], out[1], out[0]};
endmodule

module gpc615_5(input [4:0] src0, input [0:0] src1, input [5:0] src2, output [4:0] dst);
    wire [3:0] gene;
    wire [3:0] prop;
    wire [3:0] out;
    wire [3:0] carryout;
    LUT4 #(
        .INIT(16'h9600)
    ) lut4_gene0(
        .O(gene[0]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src0[3]),
        .I3(src0[4])
    );
    LUT4 #(
        .INIT(16'h6996)
    ) lut4_prop0(
        .O(prop[0]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src0[3]),
        .I3(src0[4])
    );
    LUT4 #(
        .INIT(16'he800)
    ) lut4_gene1(
        .O(gene[1]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src0[3]),
        .I3(src1[0])
    );
    LUT4 #(
        .INIT(16'h17e8)
    ) lut4_prop1(
        .O(prop[1]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src0[3]),
        .I3(src1[0])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst2(
        .O5(gene[2]),
        .O6(prop[2]),
        .I0(src2[1]),
        .I1(src2[2]),
        .I2(src2[3]),
        .I3(src2[4]),
        .I4(src2[5]),
        .I5(src2[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene3(
        .O(gene[3]),
        .I0(src2[1]),
        .I1(src2[2]),
        .I2(src2[3]),
        .I3(src2[4]),
        .I4(src2[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop3(
        .O(prop[3]),
        .I0(src2[1]),
        .I1(src2[2]),
        .I2(src2[3]),
        .I3(src2[4]),
        .I4(src2[5])
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

module gpc6060606060606060615_21(input [4:0] src0, input [0:0] src1, input [5:0] src2, input [5:0] src4, input [5:0] src6, input [5:0] src8, input [5:0] src10, input [5:0] src12, input [5:0] src14, input [5:0] src16, input [5:0] src18, output [20:0] dst);
    wire [19:0] gene;
    wire [19:0] prop;
    wire [19:0] out;
    wire [19:0] carryout;
    LUT4 #(
        .INIT(16'h9600)
    ) lut4_gene0(
        .O(gene[0]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src0[3]),
        .I3(src0[4])
    );
    LUT4 #(
        .INIT(16'h6996)
    ) lut4_prop0(
        .O(prop[0]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src0[3]),
        .I3(src0[4])
    );
    LUT4 #(
        .INIT(16'he800)
    ) lut4_gene1(
        .O(gene[1]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src0[3]),
        .I3(src1[0])
    );
    LUT4 #(
        .INIT(16'h17e8)
    ) lut4_prop1(
        .O(prop[1]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src0[3]),
        .I3(src1[0])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst2(
        .O5(gene[2]),
        .O6(prop[2]),
        .I0(src2[1]),
        .I1(src2[2]),
        .I2(src2[3]),
        .I3(src2[4]),
        .I4(src2[5]),
        .I5(src2[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene3(
        .O(gene[3]),
        .I0(src2[1]),
        .I1(src2[2]),
        .I2(src2[3]),
        .I3(src2[4]),
        .I4(src2[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop3(
        .O(prop[3]),
        .I0(src2[1]),
        .I1(src2[2]),
        .I2(src2[3]),
        .I3(src2[4]),
        .I4(src2[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst4(
        .O5(gene[4]),
        .O6(prop[4]),
        .I0(src4[1]),
        .I1(src4[2]),
        .I2(src4[3]),
        .I3(src4[4]),
        .I4(src4[5]),
        .I5(src4[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene5(
        .O(gene[5]),
        .I0(src4[1]),
        .I1(src4[2]),
        .I2(src4[3]),
        .I3(src4[4]),
        .I4(src4[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop5(
        .O(prop[5]),
        .I0(src4[1]),
        .I1(src4[2]),
        .I2(src4[3]),
        .I3(src4[4]),
        .I4(src4[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst6(
        .O5(gene[6]),
        .O6(prop[6]),
        .I0(src6[1]),
        .I1(src6[2]),
        .I2(src6[3]),
        .I3(src6[4]),
        .I4(src6[5]),
        .I5(src6[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene7(
        .O(gene[7]),
        .I0(src6[1]),
        .I1(src6[2]),
        .I2(src6[3]),
        .I3(src6[4]),
        .I4(src6[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop7(
        .O(prop[7]),
        .I0(src6[1]),
        .I1(src6[2]),
        .I2(src6[3]),
        .I3(src6[4]),
        .I4(src6[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst8(
        .O5(gene[8]),
        .O6(prop[8]),
        .I0(src8[1]),
        .I1(src8[2]),
        .I2(src8[3]),
        .I3(src8[4]),
        .I4(src8[5]),
        .I5(src8[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene9(
        .O(gene[9]),
        .I0(src8[1]),
        .I1(src8[2]),
        .I2(src8[3]),
        .I3(src8[4]),
        .I4(src8[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop9(
        .O(prop[9]),
        .I0(src8[1]),
        .I1(src8[2]),
        .I2(src8[3]),
        .I3(src8[4]),
        .I4(src8[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst10(
        .O5(gene[10]),
        .O6(prop[10]),
        .I0(src10[1]),
        .I1(src10[2]),
        .I2(src10[3]),
        .I3(src10[4]),
        .I4(src10[5]),
        .I5(src10[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene11(
        .O(gene[11]),
        .I0(src10[1]),
        .I1(src10[2]),
        .I2(src10[3]),
        .I3(src10[4]),
        .I4(src10[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop11(
        .O(prop[11]),
        .I0(src10[1]),
        .I1(src10[2]),
        .I2(src10[3]),
        .I3(src10[4]),
        .I4(src10[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst12(
        .O5(gene[12]),
        .O6(prop[12]),
        .I0(src12[1]),
        .I1(src12[2]),
        .I2(src12[3]),
        .I3(src12[4]),
        .I4(src12[5]),
        .I5(src12[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene13(
        .O(gene[13]),
        .I0(src12[1]),
        .I1(src12[2]),
        .I2(src12[3]),
        .I3(src12[4]),
        .I4(src12[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop13(
        .O(prop[13]),
        .I0(src12[1]),
        .I1(src12[2]),
        .I2(src12[3]),
        .I3(src12[4]),
        .I4(src12[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst14(
        .O5(gene[14]),
        .O6(prop[14]),
        .I0(src14[1]),
        .I1(src14[2]),
        .I2(src14[3]),
        .I3(src14[4]),
        .I4(src14[5]),
        .I5(src14[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene15(
        .O(gene[15]),
        .I0(src14[1]),
        .I1(src14[2]),
        .I2(src14[3]),
        .I3(src14[4]),
        .I4(src14[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop15(
        .O(prop[15]),
        .I0(src14[1]),
        .I1(src14[2]),
        .I2(src14[3]),
        .I3(src14[4]),
        .I4(src14[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst16(
        .O5(gene[16]),
        .O6(prop[16]),
        .I0(src16[1]),
        .I1(src16[2]),
        .I2(src16[3]),
        .I3(src16[4]),
        .I4(src16[5]),
        .I5(src16[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene17(
        .O(gene[17]),
        .I0(src16[1]),
        .I1(src16[2]),
        .I2(src16[3]),
        .I3(src16[4]),
        .I4(src16[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop17(
        .O(prop[17]),
        .I0(src16[1]),
        .I1(src16[2]),
        .I2(src16[3]),
        .I3(src16[4]),
        .I4(src16[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst18(
        .O5(gene[18]),
        .O6(prop[18]),
        .I0(src18[1]),
        .I1(src18[2]),
        .I2(src18[3]),
        .I3(src18[4]),
        .I4(src18[5]),
        .I5(src18[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene19(
        .O(gene[19]),
        .I0(src18[1]),
        .I1(src18[2]),
        .I2(src18[3]),
        .I3(src18[4]),
        .I4(src18[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop19(
        .O(prop[19]),
        .I0(src18[1]),
        .I1(src18[2]),
        .I2(src18[3]),
        .I3(src18[4]),
        .I4(src18[5])
    );
    CARRY4 carry4_inst0(
        .CO(carryout[3:0]),
        .O(out[3:0]),
        .CYINIT(1'h0),
        .CI(src0[0]),
        .DI(gene[3:0]),
        .S(prop[3:0])
    );
    CARRY4 carry4_inst1(
        .CO(carryout[7:4]),
        .O(out[7:4]),
        .CYINIT(1'h0),
        .CI(carryout[3]),
        .DI(gene[7:4]),
        .S(prop[7:4])
    );
    CARRY4 carry4_inst2(
        .CO(carryout[11:8]),
        .O(out[11:8]),
        .CYINIT(1'h0),
        .CI(carryout[7]),
        .DI(gene[11:8]),
        .S(prop[11:8])
    );
    CARRY4 carry4_inst3(
        .CO(carryout[15:12]),
        .O(out[15:12]),
        .CYINIT(1'h0),
        .CI(carryout[11]),
        .DI(gene[15:12]),
        .S(prop[15:12])
    );
    CARRY4 carry4_inst4(
        .CO(carryout[19:16]),
        .O(out[19:16]),
        .CYINIT(1'h0),
        .CI(carryout[15]),
        .DI(gene[19:16]),
        .S(prop[19:16])
    );
    assign dst = {carryout[19], out[19], out[18], out[17], out[16], out[15], out[14], out[13], out[12], out[11], out[10], out[9], out[8], out[7], out[6], out[5], out[4], out[3], out[2], out[1], out[0]};
endmodule

module gpc60606060606_13(input [5:0] src0, input [5:0] src2, input [5:0] src4, input [5:0] src6, input [5:0] src8, input [5:0] src10, output [12:0] dst);
    wire [11:0] gene;
    wire [11:0] prop;
    wire [11:0] out;
    wire [11:0] carryout;
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst0(
        .O5(gene[0]),
        .O6(prop[0]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src0[3]),
        .I3(src0[4]),
        .I4(src0[5]),
        .I5(src0[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene1(
        .O(gene[1]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src0[3]),
        .I3(src0[4]),
        .I4(src0[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop1(
        .O(prop[1]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src0[3]),
        .I3(src0[4]),
        .I4(src0[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst2(
        .O5(gene[2]),
        .O6(prop[2]),
        .I0(src2[1]),
        .I1(src2[2]),
        .I2(src2[3]),
        .I3(src2[4]),
        .I4(src2[5]),
        .I5(src2[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene3(
        .O(gene[3]),
        .I0(src2[1]),
        .I1(src2[2]),
        .I2(src2[3]),
        .I3(src2[4]),
        .I4(src2[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop3(
        .O(prop[3]),
        .I0(src2[1]),
        .I1(src2[2]),
        .I2(src2[3]),
        .I3(src2[4]),
        .I4(src2[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst4(
        .O5(gene[4]),
        .O6(prop[4]),
        .I0(src4[1]),
        .I1(src4[2]),
        .I2(src4[3]),
        .I3(src4[4]),
        .I4(src4[5]),
        .I5(src4[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene5(
        .O(gene[5]),
        .I0(src4[1]),
        .I1(src4[2]),
        .I2(src4[3]),
        .I3(src4[4]),
        .I4(src4[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop5(
        .O(prop[5]),
        .I0(src4[1]),
        .I1(src4[2]),
        .I2(src4[3]),
        .I3(src4[4]),
        .I4(src4[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst6(
        .O5(gene[6]),
        .O6(prop[6]),
        .I0(src6[1]),
        .I1(src6[2]),
        .I2(src6[3]),
        .I3(src6[4]),
        .I4(src6[5]),
        .I5(src6[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene7(
        .O(gene[7]),
        .I0(src6[1]),
        .I1(src6[2]),
        .I2(src6[3]),
        .I3(src6[4]),
        .I4(src6[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop7(
        .O(prop[7]),
        .I0(src6[1]),
        .I1(src6[2]),
        .I2(src6[3]),
        .I3(src6[4]),
        .I4(src6[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst8(
        .O5(gene[8]),
        .O6(prop[8]),
        .I0(src8[1]),
        .I1(src8[2]),
        .I2(src8[3]),
        .I3(src8[4]),
        .I4(src8[5]),
        .I5(src8[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene9(
        .O(gene[9]),
        .I0(src8[1]),
        .I1(src8[2]),
        .I2(src8[3]),
        .I3(src8[4]),
        .I4(src8[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop9(
        .O(prop[9]),
        .I0(src8[1]),
        .I1(src8[2]),
        .I2(src8[3]),
        .I3(src8[4]),
        .I4(src8[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst10(
        .O5(gene[10]),
        .O6(prop[10]),
        .I0(src10[1]),
        .I1(src10[2]),
        .I2(src10[3]),
        .I3(src10[4]),
        .I4(src10[5]),
        .I5(src10[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene11(
        .O(gene[11]),
        .I0(src10[1]),
        .I1(src10[2]),
        .I2(src10[3]),
        .I3(src10[4]),
        .I4(src10[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop11(
        .O(prop[11]),
        .I0(src10[1]),
        .I1(src10[2]),
        .I2(src10[3]),
        .I3(src10[4]),
        .I4(src10[5])
    );
    CARRY4 carry4_inst0(
        .CO(carryout[3:0]),
        .O(out[3:0]),
        .CYINIT(1'h0),
        .CI(1'h0),
        .DI(gene[3:0]),
        .S(prop[3:0])
    );
    CARRY4 carry4_inst1(
        .CO(carryout[7:4]),
        .O(out[7:4]),
        .CYINIT(1'h0),
        .CI(carryout[3]),
        .DI(gene[7:4]),
        .S(prop[7:4])
    );
    CARRY4 carry4_inst2(
        .CO(carryout[11:8]),
        .O(out[11:8]),
        .CYINIT(1'h0),
        .CI(carryout[7]),
        .DI(gene[11:8]),
        .S(prop[11:8])
    );
    assign dst = {carryout[11], out[11], out[10], out[9], out[8], out[7], out[6], out[5], out[4], out[3], out[2], out[1], out[0]};
endmodule

module gpc6060615_9(input [4:0] src0, input [0:0] src1, input [5:0] src2, input [5:0] src4, input [5:0] src6, output [8:0] dst);
    wire [7:0] gene;
    wire [7:0] prop;
    wire [7:0] out;
    wire [7:0] carryout;
    LUT4 #(
        .INIT(16'h9600)
    ) lut4_gene0(
        .O(gene[0]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src0[3]),
        .I3(src0[4])
    );
    LUT4 #(
        .INIT(16'h6996)
    ) lut4_prop0(
        .O(prop[0]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src0[3]),
        .I3(src0[4])
    );
    LUT4 #(
        .INIT(16'he800)
    ) lut4_gene1(
        .O(gene[1]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src0[3]),
        .I3(src1[0])
    );
    LUT4 #(
        .INIT(16'h17e8)
    ) lut4_prop1(
        .O(prop[1]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src0[3]),
        .I3(src1[0])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst2(
        .O5(gene[2]),
        .O6(prop[2]),
        .I0(src2[1]),
        .I1(src2[2]),
        .I2(src2[3]),
        .I3(src2[4]),
        .I4(src2[5]),
        .I5(src2[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene3(
        .O(gene[3]),
        .I0(src2[1]),
        .I1(src2[2]),
        .I2(src2[3]),
        .I3(src2[4]),
        .I4(src2[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop3(
        .O(prop[3]),
        .I0(src2[1]),
        .I1(src2[2]),
        .I2(src2[3]),
        .I3(src2[4]),
        .I4(src2[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst4(
        .O5(gene[4]),
        .O6(prop[4]),
        .I0(src4[1]),
        .I1(src4[2]),
        .I2(src4[3]),
        .I3(src4[4]),
        .I4(src4[5]),
        .I5(src4[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene5(
        .O(gene[5]),
        .I0(src4[1]),
        .I1(src4[2]),
        .I2(src4[3]),
        .I3(src4[4]),
        .I4(src4[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop5(
        .O(prop[5]),
        .I0(src4[1]),
        .I1(src4[2]),
        .I2(src4[3]),
        .I3(src4[4]),
        .I4(src4[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst6(
        .O5(gene[6]),
        .O6(prop[6]),
        .I0(src6[1]),
        .I1(src6[2]),
        .I2(src6[3]),
        .I3(src6[4]),
        .I4(src6[5]),
        .I5(src6[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene7(
        .O(gene[7]),
        .I0(src6[1]),
        .I1(src6[2]),
        .I2(src6[3]),
        .I3(src6[4]),
        .I4(src6[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop7(
        .O(prop[7]),
        .I0(src6[1]),
        .I1(src6[2]),
        .I2(src6[3]),
        .I3(src6[4]),
        .I4(src6[5])
    );
    CARRY4 carry4_inst0(
        .CO(carryout[3:0]),
        .O(out[3:0]),
        .CYINIT(1'h0),
        .CI(src0[0]),
        .DI(gene[3:0]),
        .S(prop[3:0])
    );
    CARRY4 carry4_inst1(
        .CO(carryout[7:4]),
        .O(out[7:4]),
        .CYINIT(1'h0),
        .CI(carryout[3]),
        .DI(gene[7:4]),
        .S(prop[7:4])
    );
    assign dst = {carryout[7], out[7], out[6], out[5], out[4], out[3], out[2], out[1], out[0]};
endmodule

module gpc606_5(input [5:0] src0, input [5:0] src2, output [4:0] dst);
    wire [3:0] gene;
    wire [3:0] prop;
    wire [3:0] out;
    wire [3:0] carryout;
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst0(
        .O5(gene[0]),
        .O6(prop[0]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src0[3]),
        .I3(src0[4]),
        .I4(src0[5]),
        .I5(src0[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene1(
        .O(gene[1]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src0[3]),
        .I3(src0[4]),
        .I4(src0[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop1(
        .O(prop[1]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src0[3]),
        .I3(src0[4]),
        .I4(src0[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst2(
        .O5(gene[2]),
        .O6(prop[2]),
        .I0(src2[1]),
        .I1(src2[2]),
        .I2(src2[3]),
        .I3(src2[4]),
        .I4(src2[5]),
        .I5(src2[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene3(
        .O(gene[3]),
        .I0(src2[1]),
        .I1(src2[2]),
        .I2(src2[3]),
        .I3(src2[4]),
        .I4(src2[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop3(
        .O(prop[3]),
        .I0(src2[1]),
        .I1(src2[2]),
        .I2(src2[3]),
        .I3(src2[4]),
        .I4(src2[5])
    );
    CARRY4 carry4_inst0(
        .CO(carryout[3:0]),
        .O(out[3:0]),
        .CYINIT(1'h0),
        .CI(1'h0),
        .DI(gene[3:0]),
        .S(prop[3:0])
    );
    assign dst = {carryout[3], out[3], out[2], out[1], out[0]};
endmodule

module gpc60606060615_13(input [4:0] src0, input [0:0] src1, input [5:0] src2, input [5:0] src4, input [5:0] src6, input [5:0] src8, input [5:0] src10, output [12:0] dst);
    wire [11:0] gene;
    wire [11:0] prop;
    wire [11:0] out;
    wire [11:0] carryout;
    LUT4 #(
        .INIT(16'h9600)
    ) lut4_gene0(
        .O(gene[0]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src0[3]),
        .I3(src0[4])
    );
    LUT4 #(
        .INIT(16'h6996)
    ) lut4_prop0(
        .O(prop[0]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src0[3]),
        .I3(src0[4])
    );
    LUT4 #(
        .INIT(16'he800)
    ) lut4_gene1(
        .O(gene[1]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src0[3]),
        .I3(src1[0])
    );
    LUT4 #(
        .INIT(16'h17e8)
    ) lut4_prop1(
        .O(prop[1]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src0[3]),
        .I3(src1[0])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst2(
        .O5(gene[2]),
        .O6(prop[2]),
        .I0(src2[1]),
        .I1(src2[2]),
        .I2(src2[3]),
        .I3(src2[4]),
        .I4(src2[5]),
        .I5(src2[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene3(
        .O(gene[3]),
        .I0(src2[1]),
        .I1(src2[2]),
        .I2(src2[3]),
        .I3(src2[4]),
        .I4(src2[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop3(
        .O(prop[3]),
        .I0(src2[1]),
        .I1(src2[2]),
        .I2(src2[3]),
        .I3(src2[4]),
        .I4(src2[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst4(
        .O5(gene[4]),
        .O6(prop[4]),
        .I0(src4[1]),
        .I1(src4[2]),
        .I2(src4[3]),
        .I3(src4[4]),
        .I4(src4[5]),
        .I5(src4[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene5(
        .O(gene[5]),
        .I0(src4[1]),
        .I1(src4[2]),
        .I2(src4[3]),
        .I3(src4[4]),
        .I4(src4[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop5(
        .O(prop[5]),
        .I0(src4[1]),
        .I1(src4[2]),
        .I2(src4[3]),
        .I3(src4[4]),
        .I4(src4[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst6(
        .O5(gene[6]),
        .O6(prop[6]),
        .I0(src6[1]),
        .I1(src6[2]),
        .I2(src6[3]),
        .I3(src6[4]),
        .I4(src6[5]),
        .I5(src6[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene7(
        .O(gene[7]),
        .I0(src6[1]),
        .I1(src6[2]),
        .I2(src6[3]),
        .I3(src6[4]),
        .I4(src6[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop7(
        .O(prop[7]),
        .I0(src6[1]),
        .I1(src6[2]),
        .I2(src6[3]),
        .I3(src6[4]),
        .I4(src6[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst8(
        .O5(gene[8]),
        .O6(prop[8]),
        .I0(src8[1]),
        .I1(src8[2]),
        .I2(src8[3]),
        .I3(src8[4]),
        .I4(src8[5]),
        .I5(src8[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene9(
        .O(gene[9]),
        .I0(src8[1]),
        .I1(src8[2]),
        .I2(src8[3]),
        .I3(src8[4]),
        .I4(src8[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop9(
        .O(prop[9]),
        .I0(src8[1]),
        .I1(src8[2]),
        .I2(src8[3]),
        .I3(src8[4]),
        .I4(src8[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst10(
        .O5(gene[10]),
        .O6(prop[10]),
        .I0(src10[1]),
        .I1(src10[2]),
        .I2(src10[3]),
        .I3(src10[4]),
        .I4(src10[5]),
        .I5(src10[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene11(
        .O(gene[11]),
        .I0(src10[1]),
        .I1(src10[2]),
        .I2(src10[3]),
        .I3(src10[4]),
        .I4(src10[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop11(
        .O(prop[11]),
        .I0(src10[1]),
        .I1(src10[2]),
        .I2(src10[3]),
        .I3(src10[4]),
        .I4(src10[5])
    );
    CARRY4 carry4_inst0(
        .CO(carryout[3:0]),
        .O(out[3:0]),
        .CYINIT(1'h0),
        .CI(src0[0]),
        .DI(gene[3:0]),
        .S(prop[3:0])
    );
    CARRY4 carry4_inst1(
        .CO(carryout[7:4]),
        .O(out[7:4]),
        .CYINIT(1'h0),
        .CI(carryout[3]),
        .DI(gene[7:4]),
        .S(prop[7:4])
    );
    CARRY4 carry4_inst2(
        .CO(carryout[11:8]),
        .O(out[11:8]),
        .CYINIT(1'h0),
        .CI(carryout[7]),
        .DI(gene[11:8]),
        .S(prop[11:8])
    );
    assign dst = {carryout[11], out[11], out[10], out[9], out[8], out[7], out[6], out[5], out[4], out[3], out[2], out[1], out[0]};
endmodule

module gpc6060606060606060606_21(input [5:0] src0, input [5:0] src2, input [5:0] src4, input [5:0] src6, input [5:0] src8, input [5:0] src10, input [5:0] src12, input [5:0] src14, input [5:0] src16, input [5:0] src18, output [20:0] dst);
    wire [19:0] gene;
    wire [19:0] prop;
    wire [19:0] out;
    wire [19:0] carryout;
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst0(
        .O5(gene[0]),
        .O6(prop[0]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src0[3]),
        .I3(src0[4]),
        .I4(src0[5]),
        .I5(src0[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene1(
        .O(gene[1]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src0[3]),
        .I3(src0[4]),
        .I4(src0[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop1(
        .O(prop[1]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src0[3]),
        .I3(src0[4]),
        .I4(src0[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst2(
        .O5(gene[2]),
        .O6(prop[2]),
        .I0(src2[1]),
        .I1(src2[2]),
        .I2(src2[3]),
        .I3(src2[4]),
        .I4(src2[5]),
        .I5(src2[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene3(
        .O(gene[3]),
        .I0(src2[1]),
        .I1(src2[2]),
        .I2(src2[3]),
        .I3(src2[4]),
        .I4(src2[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop3(
        .O(prop[3]),
        .I0(src2[1]),
        .I1(src2[2]),
        .I2(src2[3]),
        .I3(src2[4]),
        .I4(src2[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst4(
        .O5(gene[4]),
        .O6(prop[4]),
        .I0(src4[1]),
        .I1(src4[2]),
        .I2(src4[3]),
        .I3(src4[4]),
        .I4(src4[5]),
        .I5(src4[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene5(
        .O(gene[5]),
        .I0(src4[1]),
        .I1(src4[2]),
        .I2(src4[3]),
        .I3(src4[4]),
        .I4(src4[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop5(
        .O(prop[5]),
        .I0(src4[1]),
        .I1(src4[2]),
        .I2(src4[3]),
        .I3(src4[4]),
        .I4(src4[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst6(
        .O5(gene[6]),
        .O6(prop[6]),
        .I0(src6[1]),
        .I1(src6[2]),
        .I2(src6[3]),
        .I3(src6[4]),
        .I4(src6[5]),
        .I5(src6[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene7(
        .O(gene[7]),
        .I0(src6[1]),
        .I1(src6[2]),
        .I2(src6[3]),
        .I3(src6[4]),
        .I4(src6[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop7(
        .O(prop[7]),
        .I0(src6[1]),
        .I1(src6[2]),
        .I2(src6[3]),
        .I3(src6[4]),
        .I4(src6[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst8(
        .O5(gene[8]),
        .O6(prop[8]),
        .I0(src8[1]),
        .I1(src8[2]),
        .I2(src8[3]),
        .I3(src8[4]),
        .I4(src8[5]),
        .I5(src8[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene9(
        .O(gene[9]),
        .I0(src8[1]),
        .I1(src8[2]),
        .I2(src8[3]),
        .I3(src8[4]),
        .I4(src8[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop9(
        .O(prop[9]),
        .I0(src8[1]),
        .I1(src8[2]),
        .I2(src8[3]),
        .I3(src8[4]),
        .I4(src8[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst10(
        .O5(gene[10]),
        .O6(prop[10]),
        .I0(src10[1]),
        .I1(src10[2]),
        .I2(src10[3]),
        .I3(src10[4]),
        .I4(src10[5]),
        .I5(src10[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene11(
        .O(gene[11]),
        .I0(src10[1]),
        .I1(src10[2]),
        .I2(src10[3]),
        .I3(src10[4]),
        .I4(src10[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop11(
        .O(prop[11]),
        .I0(src10[1]),
        .I1(src10[2]),
        .I2(src10[3]),
        .I3(src10[4]),
        .I4(src10[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst12(
        .O5(gene[12]),
        .O6(prop[12]),
        .I0(src12[1]),
        .I1(src12[2]),
        .I2(src12[3]),
        .I3(src12[4]),
        .I4(src12[5]),
        .I5(src12[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene13(
        .O(gene[13]),
        .I0(src12[1]),
        .I1(src12[2]),
        .I2(src12[3]),
        .I3(src12[4]),
        .I4(src12[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop13(
        .O(prop[13]),
        .I0(src12[1]),
        .I1(src12[2]),
        .I2(src12[3]),
        .I3(src12[4]),
        .I4(src12[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst14(
        .O5(gene[14]),
        .O6(prop[14]),
        .I0(src14[1]),
        .I1(src14[2]),
        .I2(src14[3]),
        .I3(src14[4]),
        .I4(src14[5]),
        .I5(src14[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene15(
        .O(gene[15]),
        .I0(src14[1]),
        .I1(src14[2]),
        .I2(src14[3]),
        .I3(src14[4]),
        .I4(src14[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop15(
        .O(prop[15]),
        .I0(src14[1]),
        .I1(src14[2]),
        .I2(src14[3]),
        .I3(src14[4]),
        .I4(src14[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst16(
        .O5(gene[16]),
        .O6(prop[16]),
        .I0(src16[1]),
        .I1(src16[2]),
        .I2(src16[3]),
        .I3(src16[4]),
        .I4(src16[5]),
        .I5(src16[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene17(
        .O(gene[17]),
        .I0(src16[1]),
        .I1(src16[2]),
        .I2(src16[3]),
        .I3(src16[4]),
        .I4(src16[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop17(
        .O(prop[17]),
        .I0(src16[1]),
        .I1(src16[2]),
        .I2(src16[3]),
        .I3(src16[4]),
        .I4(src16[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst18(
        .O5(gene[18]),
        .O6(prop[18]),
        .I0(src18[1]),
        .I1(src18[2]),
        .I2(src18[3]),
        .I3(src18[4]),
        .I4(src18[5]),
        .I5(src18[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene19(
        .O(gene[19]),
        .I0(src18[1]),
        .I1(src18[2]),
        .I2(src18[3]),
        .I3(src18[4]),
        .I4(src18[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop19(
        .O(prop[19]),
        .I0(src18[1]),
        .I1(src18[2]),
        .I2(src18[3]),
        .I3(src18[4]),
        .I4(src18[5])
    );
    CARRY4 carry4_inst0(
        .CO(carryout[3:0]),
        .O(out[3:0]),
        .CYINIT(1'h0),
        .CI(1'h0),
        .DI(gene[3:0]),
        .S(prop[3:0])
    );
    CARRY4 carry4_inst1(
        .CO(carryout[7:4]),
        .O(out[7:4]),
        .CYINIT(1'h0),
        .CI(carryout[3]),
        .DI(gene[7:4]),
        .S(prop[7:4])
    );
    CARRY4 carry4_inst2(
        .CO(carryout[11:8]),
        .O(out[11:8]),
        .CYINIT(1'h0),
        .CI(carryout[7]),
        .DI(gene[11:8]),
        .S(prop[11:8])
    );
    CARRY4 carry4_inst3(
        .CO(carryout[15:12]),
        .O(out[15:12]),
        .CYINIT(1'h0),
        .CI(carryout[11]),
        .DI(gene[15:12]),
        .S(prop[15:12])
    );
    CARRY4 carry4_inst4(
        .CO(carryout[19:16]),
        .O(out[19:16]),
        .CYINIT(1'h0),
        .CI(carryout[15]),
        .DI(gene[19:16]),
        .S(prop[19:16])
    );
    assign dst = {carryout[19], out[19], out[18], out[17], out[16], out[15], out[14], out[13], out[12], out[11], out[10], out[9], out[8], out[7], out[6], out[5], out[4], out[3], out[2], out[1], out[0]};
endmodule

module gpc6140606_9(input [5:0] src0, input [5:0] src2, input [3:0] src4, input [0:0] src5, input [5:0] src6, output [8:0] dst);
    wire [7:0] gene;
    wire [7:0] prop;
    wire [7:0] out;
    wire [7:0] carryout;
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst0(
        .O5(gene[0]),
        .O6(prop[0]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src0[3]),
        .I3(src0[4]),
        .I4(src0[5]),
        .I5(src0[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene1(
        .O(gene[1]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src0[3]),
        .I3(src0[4]),
        .I4(src0[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop1(
        .O(prop[1]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src0[3]),
        .I3(src0[4]),
        .I4(src0[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst2(
        .O5(gene[2]),
        .O6(prop[2]),
        .I0(src2[1]),
        .I1(src2[2]),
        .I2(src2[3]),
        .I3(src2[4]),
        .I4(src2[5]),
        .I5(src2[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene3(
        .O(gene[3]),
        .I0(src2[1]),
        .I1(src2[2]),
        .I2(src2[3]),
        .I3(src2[4]),
        .I4(src2[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop3(
        .O(prop[3]),
        .I0(src2[1]),
        .I1(src2[2]),
        .I2(src2[3]),
        .I3(src2[4]),
        .I4(src2[5])
    );
    LUT4 #(
        .INIT(16'h9600)
    ) lut4_gene4(
        .O(gene[4]),
        .I0(src4[0]),
        .I1(src4[1]),
        .I2(src4[2]),
        .I3(src4[3])
    );
    LUT4 #(
        .INIT(16'h6996)
    ) lut4_prop4(
        .O(prop[4]),
        .I0(src4[0]),
        .I1(src4[1]),
        .I2(src4[2]),
        .I3(src4[3])
    );
    LUT4 #(
        .INIT(16'he800)
    ) lut4_gene5(
        .O(gene[5]),
        .I0(src4[0]),
        .I1(src4[1]),
        .I2(src4[2]),
        .I3(src5[0])
    );
    LUT4 #(
        .INIT(16'h17e8)
    ) lut4_prop5(
        .O(prop[5]),
        .I0(src4[0]),
        .I1(src4[1]),
        .I2(src4[2]),
        .I3(src5[0])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst6(
        .O5(gene[6]),
        .O6(prop[6]),
        .I0(src6[1]),
        .I1(src6[2]),
        .I2(src6[3]),
        .I3(src6[4]),
        .I4(src6[5]),
        .I5(src6[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene7(
        .O(gene[7]),
        .I0(src6[1]),
        .I1(src6[2]),
        .I2(src6[3]),
        .I3(src6[4]),
        .I4(src6[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop7(
        .O(prop[7]),
        .I0(src6[1]),
        .I1(src6[2]),
        .I2(src6[3]),
        .I3(src6[4]),
        .I4(src6[5])
    );
    CARRY4 carry4_inst0(
        .CO(carryout[3:0]),
        .O(out[3:0]),
        .CYINIT(1'h0),
        .CI(1'h0),
        .DI(gene[3:0]),
        .S(prop[3:0])
    );
    CARRY4 carry4_inst1(
        .CO(carryout[7:4]),
        .O(out[7:4]),
        .CYINIT(1'h0),
        .CI(carryout[3]),
        .DI(gene[7:4]),
        .S(prop[7:4])
    );
    assign dst = {carryout[7], out[7], out[6], out[5], out[4], out[3], out[2], out[1], out[0]};
endmodule

module gpc6060606_9(input [5:0] src0, input [5:0] src2, input [5:0] src4, input [5:0] src6, output [8:0] dst);
    wire [7:0] gene;
    wire [7:0] prop;
    wire [7:0] out;
    wire [7:0] carryout;
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst0(
        .O5(gene[0]),
        .O6(prop[0]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src0[3]),
        .I3(src0[4]),
        .I4(src0[5]),
        .I5(src0[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene1(
        .O(gene[1]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src0[3]),
        .I3(src0[4]),
        .I4(src0[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop1(
        .O(prop[1]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src0[3]),
        .I3(src0[4]),
        .I4(src0[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst2(
        .O5(gene[2]),
        .O6(prop[2]),
        .I0(src2[1]),
        .I1(src2[2]),
        .I2(src2[3]),
        .I3(src2[4]),
        .I4(src2[5]),
        .I5(src2[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene3(
        .O(gene[3]),
        .I0(src2[1]),
        .I1(src2[2]),
        .I2(src2[3]),
        .I3(src2[4]),
        .I4(src2[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop3(
        .O(prop[3]),
        .I0(src2[1]),
        .I1(src2[2]),
        .I2(src2[3]),
        .I3(src2[4]),
        .I4(src2[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst4(
        .O5(gene[4]),
        .O6(prop[4]),
        .I0(src4[1]),
        .I1(src4[2]),
        .I2(src4[3]),
        .I3(src4[4]),
        .I4(src4[5]),
        .I5(src4[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene5(
        .O(gene[5]),
        .I0(src4[1]),
        .I1(src4[2]),
        .I2(src4[3]),
        .I3(src4[4]),
        .I4(src4[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop5(
        .O(prop[5]),
        .I0(src4[1]),
        .I1(src4[2]),
        .I2(src4[3]),
        .I3(src4[4]),
        .I4(src4[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst6(
        .O5(gene[6]),
        .O6(prop[6]),
        .I0(src6[1]),
        .I1(src6[2]),
        .I2(src6[3]),
        .I3(src6[4]),
        .I4(src6[5]),
        .I5(src6[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene7(
        .O(gene[7]),
        .I0(src6[1]),
        .I1(src6[2]),
        .I2(src6[3]),
        .I3(src6[4]),
        .I4(src6[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop7(
        .O(prop[7]),
        .I0(src6[1]),
        .I1(src6[2]),
        .I2(src6[3]),
        .I3(src6[4]),
        .I4(src6[5])
    );
    CARRY4 carry4_inst0(
        .CO(carryout[3:0]),
        .O(out[3:0]),
        .CYINIT(1'h0),
        .CI(1'h0),
        .DI(gene[3:0]),
        .S(prop[3:0])
    );
    CARRY4 carry4_inst1(
        .CO(carryout[7:4]),
        .O(out[7:4]),
        .CYINIT(1'h0),
        .CI(carryout[3]),
        .DI(gene[7:4]),
        .S(prop[7:4])
    );
    assign dst = {carryout[7], out[7], out[6], out[5], out[4], out[3], out[2], out[1], out[0]};
endmodule

module gpc606060606060606_17(input [5:0] src0, input [5:0] src2, input [5:0] src4, input [5:0] src6, input [5:0] src8, input [5:0] src10, input [5:0] src12, input [5:0] src14, output [16:0] dst);
    wire [15:0] gene;
    wire [15:0] prop;
    wire [15:0] out;
    wire [15:0] carryout;
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst0(
        .O5(gene[0]),
        .O6(prop[0]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src0[3]),
        .I3(src0[4]),
        .I4(src0[5]),
        .I5(src0[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene1(
        .O(gene[1]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src0[3]),
        .I3(src0[4]),
        .I4(src0[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop1(
        .O(prop[1]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src0[3]),
        .I3(src0[4]),
        .I4(src0[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst2(
        .O5(gene[2]),
        .O6(prop[2]),
        .I0(src2[1]),
        .I1(src2[2]),
        .I2(src2[3]),
        .I3(src2[4]),
        .I4(src2[5]),
        .I5(src2[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene3(
        .O(gene[3]),
        .I0(src2[1]),
        .I1(src2[2]),
        .I2(src2[3]),
        .I3(src2[4]),
        .I4(src2[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop3(
        .O(prop[3]),
        .I0(src2[1]),
        .I1(src2[2]),
        .I2(src2[3]),
        .I3(src2[4]),
        .I4(src2[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst4(
        .O5(gene[4]),
        .O6(prop[4]),
        .I0(src4[1]),
        .I1(src4[2]),
        .I2(src4[3]),
        .I3(src4[4]),
        .I4(src4[5]),
        .I5(src4[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene5(
        .O(gene[5]),
        .I0(src4[1]),
        .I1(src4[2]),
        .I2(src4[3]),
        .I3(src4[4]),
        .I4(src4[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop5(
        .O(prop[5]),
        .I0(src4[1]),
        .I1(src4[2]),
        .I2(src4[3]),
        .I3(src4[4]),
        .I4(src4[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst6(
        .O5(gene[6]),
        .O6(prop[6]),
        .I0(src6[1]),
        .I1(src6[2]),
        .I2(src6[3]),
        .I3(src6[4]),
        .I4(src6[5]),
        .I5(src6[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene7(
        .O(gene[7]),
        .I0(src6[1]),
        .I1(src6[2]),
        .I2(src6[3]),
        .I3(src6[4]),
        .I4(src6[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop7(
        .O(prop[7]),
        .I0(src6[1]),
        .I1(src6[2]),
        .I2(src6[3]),
        .I3(src6[4]),
        .I4(src6[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst8(
        .O5(gene[8]),
        .O6(prop[8]),
        .I0(src8[1]),
        .I1(src8[2]),
        .I2(src8[3]),
        .I3(src8[4]),
        .I4(src8[5]),
        .I5(src8[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene9(
        .O(gene[9]),
        .I0(src8[1]),
        .I1(src8[2]),
        .I2(src8[3]),
        .I3(src8[4]),
        .I4(src8[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop9(
        .O(prop[9]),
        .I0(src8[1]),
        .I1(src8[2]),
        .I2(src8[3]),
        .I3(src8[4]),
        .I4(src8[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst10(
        .O5(gene[10]),
        .O6(prop[10]),
        .I0(src10[1]),
        .I1(src10[2]),
        .I2(src10[3]),
        .I3(src10[4]),
        .I4(src10[5]),
        .I5(src10[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene11(
        .O(gene[11]),
        .I0(src10[1]),
        .I1(src10[2]),
        .I2(src10[3]),
        .I3(src10[4]),
        .I4(src10[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop11(
        .O(prop[11]),
        .I0(src10[1]),
        .I1(src10[2]),
        .I2(src10[3]),
        .I3(src10[4]),
        .I4(src10[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst12(
        .O5(gene[12]),
        .O6(prop[12]),
        .I0(src12[1]),
        .I1(src12[2]),
        .I2(src12[3]),
        .I3(src12[4]),
        .I4(src12[5]),
        .I5(src12[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene13(
        .O(gene[13]),
        .I0(src12[1]),
        .I1(src12[2]),
        .I2(src12[3]),
        .I3(src12[4]),
        .I4(src12[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop13(
        .O(prop[13]),
        .I0(src12[1]),
        .I1(src12[2]),
        .I2(src12[3]),
        .I3(src12[4]),
        .I4(src12[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst14(
        .O5(gene[14]),
        .O6(prop[14]),
        .I0(src14[1]),
        .I1(src14[2]),
        .I2(src14[3]),
        .I3(src14[4]),
        .I4(src14[5]),
        .I5(src14[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene15(
        .O(gene[15]),
        .I0(src14[1]),
        .I1(src14[2]),
        .I2(src14[3]),
        .I3(src14[4]),
        .I4(src14[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop15(
        .O(prop[15]),
        .I0(src14[1]),
        .I1(src14[2]),
        .I2(src14[3]),
        .I3(src14[4]),
        .I4(src14[5])
    );
    CARRY4 carry4_inst0(
        .CO(carryout[3:0]),
        .O(out[3:0]),
        .CYINIT(1'h0),
        .CI(1'h0),
        .DI(gene[3:0]),
        .S(prop[3:0])
    );
    CARRY4 carry4_inst1(
        .CO(carryout[7:4]),
        .O(out[7:4]),
        .CYINIT(1'h0),
        .CI(carryout[3]),
        .DI(gene[7:4]),
        .S(prop[7:4])
    );
    CARRY4 carry4_inst2(
        .CO(carryout[11:8]),
        .O(out[11:8]),
        .CYINIT(1'h0),
        .CI(carryout[7]),
        .DI(gene[11:8]),
        .S(prop[11:8])
    );
    CARRY4 carry4_inst3(
        .CO(carryout[15:12]),
        .O(out[15:12]),
        .CYINIT(1'h0),
        .CI(carryout[11]),
        .DI(gene[15:12]),
        .S(prop[15:12])
    );
    assign dst = {carryout[15], out[15], out[14], out[13], out[12], out[11], out[10], out[9], out[8], out[7], out[6], out[5], out[4], out[3], out[2], out[1], out[0]};
endmodule

module gpc6140433_9(input [2:0] src0, input [2:0] src1, input [3:0] src2, input [3:0] src4, input [0:0] src5, input [5:0] src6, output [8:0] dst);
    wire [7:0] gene;
    wire [7:0] prop;
    wire [7:0] out;
    wire [7:0] carryout;
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
    LUT3 #(
        .INIT(8'h60)
    ) lut3_gene1(
        .O(gene[1]),
        .I0(src1[0]),
        .I1(src1[1]),
        .I2(src1[2])
    );
    LUT3 #(
        .INIT(8'h96)
    ) lut3_prop1(
        .O(prop[1]),
        .I0(src1[0]),
        .I1(src1[1]),
        .I2(src1[2])
    );
    LUT6_2 #(
        .INIT(64'h8778788778878778)
    ) lut6_2_inst2(
        .O5(gene[2]),
        .O6(prop[2]),
        .I0(src1[0]),
        .I1(src1[1]),
        .I2(src2[1]),
        .I3(src2[2]),
        .I4(src2[3]),
        .I5(src2[0])
    );
    LUT5 #(
        .INIT(32'h80000000)
    ) lut5_gene3(
        .O(gene[3]),
        .I0(src1[0]),
        .I1(src1[1]),
        .I2(src2[1]),
        .I3(src2[2]),
        .I4(src2[3])
    );
    LUT5 #(
        .INIT(32'h7ff8f880)
    ) lut5_prop3(
        .O(prop[3]),
        .I0(src1[0]),
        .I1(src1[1]),
        .I2(src2[1]),
        .I3(src2[2]),
        .I4(src2[3])
    );
    LUT4 #(
        .INIT(16'h9600)
    ) lut4_gene4(
        .O(gene[4]),
        .I0(src4[0]),
        .I1(src4[1]),
        .I2(src4[2]),
        .I3(src4[3])
    );
    LUT4 #(
        .INIT(16'h6996)
    ) lut4_prop4(
        .O(prop[4]),
        .I0(src4[0]),
        .I1(src4[1]),
        .I2(src4[2]),
        .I3(src4[3])
    );
    LUT4 #(
        .INIT(16'he800)
    ) lut4_gene5(
        .O(gene[5]),
        .I0(src4[0]),
        .I1(src4[1]),
        .I2(src4[2]),
        .I3(src5[0])
    );
    LUT4 #(
        .INIT(16'h17e8)
    ) lut4_prop5(
        .O(prop[5]),
        .I0(src4[0]),
        .I1(src4[1]),
        .I2(src4[2]),
        .I3(src5[0])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst6(
        .O5(gene[6]),
        .O6(prop[6]),
        .I0(src6[1]),
        .I1(src6[2]),
        .I2(src6[3]),
        .I3(src6[4]),
        .I4(src6[5]),
        .I5(src6[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene7(
        .O(gene[7]),
        .I0(src6[1]),
        .I1(src6[2]),
        .I2(src6[3]),
        .I3(src6[4]),
        .I4(src6[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop7(
        .O(prop[7]),
        .I0(src6[1]),
        .I1(src6[2]),
        .I2(src6[3]),
        .I3(src6[4]),
        .I4(src6[5])
    );
    CARRY4 carry4_inst0(
        .CO(carryout[3:0]),
        .O(out[3:0]),
        .CYINIT(1'h0),
        .CI(src0[0]),
        .DI(gene[3:0]),
        .S(prop[3:0])
    );
    CARRY4 carry4_inst1(
        .CO(carryout[7:4]),
        .O(out[7:4]),
        .CYINIT(1'h0),
        .CI(carryout[3]),
        .DI(gene[7:4]),
        .S(prop[7:4])
    );
    assign dst = {carryout[7], out[7], out[6], out[5], out[4], out[3], out[2], out[1], out[0]};
endmodule

module gpc606061415_11(input [4:0] src0, input [0:0] src1, input [3:0] src2, input [0:0] src3, input [5:0] src4, input [5:0] src6, input [5:0] src8, output [10:0] dst);
    wire [9:0] gene;
    wire [9:0] prop;
    wire [11:0] out;
    wire [11:0] carryout;
    LUT4 #(
        .INIT(16'h9600)
    ) lut4_gene0(
        .O(gene[0]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src0[3]),
        .I3(src0[4])
    );
    LUT4 #(
        .INIT(16'h6996)
    ) lut4_prop0(
        .O(prop[0]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src0[3]),
        .I3(src0[4])
    );
    LUT4 #(
        .INIT(16'he800)
    ) lut4_gene1(
        .O(gene[1]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src0[3]),
        .I3(src1[0])
    );
    LUT4 #(
        .INIT(16'h17e8)
    ) lut4_prop1(
        .O(prop[1]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src0[3]),
        .I3(src1[0])
    );
    LUT4 #(
        .INIT(16'h9600)
    ) lut4_gene2(
        .O(gene[2]),
        .I0(src2[0]),
        .I1(src2[1]),
        .I2(src2[2]),
        .I3(src2[3])
    );
    LUT4 #(
        .INIT(16'h6996)
    ) lut4_prop2(
        .O(prop[2]),
        .I0(src2[0]),
        .I1(src2[1]),
        .I2(src2[2]),
        .I3(src2[3])
    );
    LUT4 #(
        .INIT(16'he800)
    ) lut4_gene3(
        .O(gene[3]),
        .I0(src2[0]),
        .I1(src2[1]),
        .I2(src2[2]),
        .I3(src3[0])
    );
    LUT4 #(
        .INIT(16'h17e8)
    ) lut4_prop3(
        .O(prop[3]),
        .I0(src2[0]),
        .I1(src2[1]),
        .I2(src2[2]),
        .I3(src3[0])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst4(
        .O5(gene[4]),
        .O6(prop[4]),
        .I0(src4[1]),
        .I1(src4[2]),
        .I2(src4[3]),
        .I3(src4[4]),
        .I4(src4[5]),
        .I5(src4[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene5(
        .O(gene[5]),
        .I0(src4[1]),
        .I1(src4[2]),
        .I2(src4[3]),
        .I3(src4[4]),
        .I4(src4[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop5(
        .O(prop[5]),
        .I0(src4[1]),
        .I1(src4[2]),
        .I2(src4[3]),
        .I3(src4[4]),
        .I4(src4[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst6(
        .O5(gene[6]),
        .O6(prop[6]),
        .I0(src6[1]),
        .I1(src6[2]),
        .I2(src6[3]),
        .I3(src6[4]),
        .I4(src6[5]),
        .I5(src6[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene7(
        .O(gene[7]),
        .I0(src6[1]),
        .I1(src6[2]),
        .I2(src6[3]),
        .I3(src6[4]),
        .I4(src6[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop7(
        .O(prop[7]),
        .I0(src6[1]),
        .I1(src6[2]),
        .I2(src6[3]),
        .I3(src6[4]),
        .I4(src6[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst8(
        .O5(gene[8]),
        .O6(prop[8]),
        .I0(src8[1]),
        .I1(src8[2]),
        .I2(src8[3]),
        .I3(src8[4]),
        .I4(src8[5]),
        .I5(src8[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene9(
        .O(gene[9]),
        .I0(src8[1]),
        .I1(src8[2]),
        .I2(src8[3]),
        .I3(src8[4]),
        .I4(src8[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop9(
        .O(prop[9]),
        .I0(src8[1]),
        .I1(src8[2]),
        .I2(src8[3]),
        .I3(src8[4]),
        .I4(src8[5])
    );
    CARRY4 carry4_inst0(
        .CO(carryout[3:0]),
        .O(out[3:0]),
        .CYINIT(1'h0),
        .CI(src0[0]),
        .DI(gene[3:0]),
        .S(prop[3:0])
    );
    CARRY4 carry4_inst1(
        .CO(carryout[7:4]),
        .O(out[7:4]),
        .CYINIT(1'h0),
        .CI(carryout[3]),
        .DI(gene[7:4]),
        .S(prop[7:4])
    );
    CARRY4 carry4_inst2(
        .CO(carryout[11:8]),
        .O(out[11:8]),
        .CYINIT(1'h0),
        .CI(carryout[7]),
        .DI({2'h0, gene[9:8]}),
        .S({2'h0, prop[9:8]})
    );
    assign dst = {carryout[9], out[9], out[8], out[7], out[6], out[5], out[4], out[3], out[2], out[1], out[0]};
endmodule

module gpc215_4(input [4:0] src0, input [0:0] src1, input [1:0] src2, output [3:0] dst);
    wire [2:0] gene;
    wire [2:0] prop;
    wire [3:0] out;
    wire [3:0] carryout;
    LUT4 #(
        .INIT(16'h9600)
    ) lut4_gene0(
        .O(gene[0]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src0[3]),
        .I3(src0[4])
    );
    LUT4 #(
        .INIT(16'h6996)
    ) lut4_prop0(
        .O(prop[0]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src0[3]),
        .I3(src0[4])
    );
    LUT4 #(
        .INIT(16'he800)
    ) lut4_gene1(
        .O(gene[1]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src0[3]),
        .I3(src1[0])
    );
    LUT4 #(
        .INIT(16'h17e8)
    ) lut4_prop1(
        .O(prop[1]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src0[3]),
        .I3(src1[0])
    );
    LUT2 #(
        .INIT(4'h8)
    ) lut2_gene2(
        .O(gene[2]),
        .I0(src2[0]),
        .I1(src2[1])
    );
    LUT2 #(
        .INIT(4'h6)
    ) lut2_prop2(
        .O(prop[2]),
        .I0(src2[0]),
        .I1(src2[1])
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

module gpc606060606140606060614063_26(input [2:0] src0, input [5:0] src1, input [3:0] src3, input [0:0] src4, input [5:0] src5, input [5:0] src7, input [5:0] src9, input [5:0] src11, input [3:0] src13, input [0:0] src14, input [5:0] src15, input [5:0] src17, input [5:0] src19, input [5:0] src21, input [5:0] src23, output [25:0] dst);
    wire [24:0] gene;
    wire [24:0] prop;
    wire [27:0] out;
    wire [27:0] carryout;
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
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene2(
        .O(gene[2]),
        .I0(src1[1]),
        .I1(src1[2]),
        .I2(src1[3]),
        .I3(src1[4]),
        .I4(src1[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop2(
        .O(prop[2]),
        .I0(src1[1]),
        .I1(src1[2]),
        .I2(src1[3]),
        .I3(src1[4]),
        .I4(src1[5])
    );
    LUT4 #(
        .INIT(16'h9600)
    ) lut4_gene3(
        .O(gene[3]),
        .I0(src3[0]),
        .I1(src3[1]),
        .I2(src3[2]),
        .I3(src3[3])
    );
    LUT4 #(
        .INIT(16'h6996)
    ) lut4_prop3(
        .O(prop[3]),
        .I0(src3[0]),
        .I1(src3[1]),
        .I2(src3[2]),
        .I3(src3[3])
    );
    LUT4 #(
        .INIT(16'he800)
    ) lut4_gene4(
        .O(gene[4]),
        .I0(src3[0]),
        .I1(src3[1]),
        .I2(src3[2]),
        .I3(src4[0])
    );
    LUT4 #(
        .INIT(16'h17e8)
    ) lut4_prop4(
        .O(prop[4]),
        .I0(src3[0]),
        .I1(src3[1]),
        .I2(src3[2]),
        .I3(src4[0])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst5(
        .O5(gene[5]),
        .O6(prop[5]),
        .I0(src5[1]),
        .I1(src5[2]),
        .I2(src5[3]),
        .I3(src5[4]),
        .I4(src5[5]),
        .I5(src5[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene6(
        .O(gene[6]),
        .I0(src5[1]),
        .I1(src5[2]),
        .I2(src5[3]),
        .I3(src5[4]),
        .I4(src5[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop6(
        .O(prop[6]),
        .I0(src5[1]),
        .I1(src5[2]),
        .I2(src5[3]),
        .I3(src5[4]),
        .I4(src5[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst7(
        .O5(gene[7]),
        .O6(prop[7]),
        .I0(src7[1]),
        .I1(src7[2]),
        .I2(src7[3]),
        .I3(src7[4]),
        .I4(src7[5]),
        .I5(src7[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene8(
        .O(gene[8]),
        .I0(src7[1]),
        .I1(src7[2]),
        .I2(src7[3]),
        .I3(src7[4]),
        .I4(src7[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop8(
        .O(prop[8]),
        .I0(src7[1]),
        .I1(src7[2]),
        .I2(src7[3]),
        .I3(src7[4]),
        .I4(src7[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst9(
        .O5(gene[9]),
        .O6(prop[9]),
        .I0(src9[1]),
        .I1(src9[2]),
        .I2(src9[3]),
        .I3(src9[4]),
        .I4(src9[5]),
        .I5(src9[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene10(
        .O(gene[10]),
        .I0(src9[1]),
        .I1(src9[2]),
        .I2(src9[3]),
        .I3(src9[4]),
        .I4(src9[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop10(
        .O(prop[10]),
        .I0(src9[1]),
        .I1(src9[2]),
        .I2(src9[3]),
        .I3(src9[4]),
        .I4(src9[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst11(
        .O5(gene[11]),
        .O6(prop[11]),
        .I0(src11[1]),
        .I1(src11[2]),
        .I2(src11[3]),
        .I3(src11[4]),
        .I4(src11[5]),
        .I5(src11[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene12(
        .O(gene[12]),
        .I0(src11[1]),
        .I1(src11[2]),
        .I2(src11[3]),
        .I3(src11[4]),
        .I4(src11[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop12(
        .O(prop[12]),
        .I0(src11[1]),
        .I1(src11[2]),
        .I2(src11[3]),
        .I3(src11[4]),
        .I4(src11[5])
    );
    LUT4 #(
        .INIT(16'h9600)
    ) lut4_gene13(
        .O(gene[13]),
        .I0(src13[0]),
        .I1(src13[1]),
        .I2(src13[2]),
        .I3(src13[3])
    );
    LUT4 #(
        .INIT(16'h6996)
    ) lut4_prop13(
        .O(prop[13]),
        .I0(src13[0]),
        .I1(src13[1]),
        .I2(src13[2]),
        .I3(src13[3])
    );
    LUT4 #(
        .INIT(16'he800)
    ) lut4_gene14(
        .O(gene[14]),
        .I0(src13[0]),
        .I1(src13[1]),
        .I2(src13[2]),
        .I3(src14[0])
    );
    LUT4 #(
        .INIT(16'h17e8)
    ) lut4_prop14(
        .O(prop[14]),
        .I0(src13[0]),
        .I1(src13[1]),
        .I2(src13[2]),
        .I3(src14[0])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst15(
        .O5(gene[15]),
        .O6(prop[15]),
        .I0(src15[1]),
        .I1(src15[2]),
        .I2(src15[3]),
        .I3(src15[4]),
        .I4(src15[5]),
        .I5(src15[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene16(
        .O(gene[16]),
        .I0(src15[1]),
        .I1(src15[2]),
        .I2(src15[3]),
        .I3(src15[4]),
        .I4(src15[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop16(
        .O(prop[16]),
        .I0(src15[1]),
        .I1(src15[2]),
        .I2(src15[3]),
        .I3(src15[4]),
        .I4(src15[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst17(
        .O5(gene[17]),
        .O6(prop[17]),
        .I0(src17[1]),
        .I1(src17[2]),
        .I2(src17[3]),
        .I3(src17[4]),
        .I4(src17[5]),
        .I5(src17[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene18(
        .O(gene[18]),
        .I0(src17[1]),
        .I1(src17[2]),
        .I2(src17[3]),
        .I3(src17[4]),
        .I4(src17[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop18(
        .O(prop[18]),
        .I0(src17[1]),
        .I1(src17[2]),
        .I2(src17[3]),
        .I3(src17[4]),
        .I4(src17[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst19(
        .O5(gene[19]),
        .O6(prop[19]),
        .I0(src19[1]),
        .I1(src19[2]),
        .I2(src19[3]),
        .I3(src19[4]),
        .I4(src19[5]),
        .I5(src19[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene20(
        .O(gene[20]),
        .I0(src19[1]),
        .I1(src19[2]),
        .I2(src19[3]),
        .I3(src19[4]),
        .I4(src19[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop20(
        .O(prop[20]),
        .I0(src19[1]),
        .I1(src19[2]),
        .I2(src19[3]),
        .I3(src19[4]),
        .I4(src19[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst21(
        .O5(gene[21]),
        .O6(prop[21]),
        .I0(src21[1]),
        .I1(src21[2]),
        .I2(src21[3]),
        .I3(src21[4]),
        .I4(src21[5]),
        .I5(src21[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene22(
        .O(gene[22]),
        .I0(src21[1]),
        .I1(src21[2]),
        .I2(src21[3]),
        .I3(src21[4]),
        .I4(src21[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop22(
        .O(prop[22]),
        .I0(src21[1]),
        .I1(src21[2]),
        .I2(src21[3]),
        .I3(src21[4]),
        .I4(src21[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst23(
        .O5(gene[23]),
        .O6(prop[23]),
        .I0(src23[1]),
        .I1(src23[2]),
        .I2(src23[3]),
        .I3(src23[4]),
        .I4(src23[5]),
        .I5(src23[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene24(
        .O(gene[24]),
        .I0(src23[1]),
        .I1(src23[2]),
        .I2(src23[3]),
        .I3(src23[4]),
        .I4(src23[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop24(
        .O(prop[24]),
        .I0(src23[1]),
        .I1(src23[2]),
        .I2(src23[3]),
        .I3(src23[4]),
        .I4(src23[5])
    );
    CARRY4 carry4_inst0(
        .CO(carryout[3:0]),
        .O(out[3:0]),
        .CYINIT(1'h0),
        .CI(src0[0]),
        .DI(gene[3:0]),
        .S(prop[3:0])
    );
    CARRY4 carry4_inst1(
        .CO(carryout[7:4]),
        .O(out[7:4]),
        .CYINIT(1'h0),
        .CI(carryout[3]),
        .DI(gene[7:4]),
        .S(prop[7:4])
    );
    CARRY4 carry4_inst2(
        .CO(carryout[11:8]),
        .O(out[11:8]),
        .CYINIT(1'h0),
        .CI(carryout[7]),
        .DI(gene[11:8]),
        .S(prop[11:8])
    );
    CARRY4 carry4_inst3(
        .CO(carryout[15:12]),
        .O(out[15:12]),
        .CYINIT(1'h0),
        .CI(carryout[11]),
        .DI(gene[15:12]),
        .S(prop[15:12])
    );
    CARRY4 carry4_inst4(
        .CO(carryout[19:16]),
        .O(out[19:16]),
        .CYINIT(1'h0),
        .CI(carryout[15]),
        .DI(gene[19:16]),
        .S(prop[19:16])
    );
    CARRY4 carry4_inst5(
        .CO(carryout[23:20]),
        .O(out[23:20]),
        .CYINIT(1'h0),
        .CI(carryout[19]),
        .DI(gene[23:20]),
        .S(prop[23:20])
    );
    CARRY4 carry4_inst6(
        .CO(carryout[27:24]),
        .O(out[27:24]),
        .CYINIT(1'h0),
        .CI(carryout[23]),
        .DI({3'h0, gene[24:24]}),
        .S({3'h0, prop[24:24]})
    );
    assign dst = {carryout[24], out[24], out[23], out[22], out[21], out[20], out[19], out[18], out[17], out[16], out[15], out[14], out[13], out[12], out[11], out[10], out[9], out[8], out[7], out[6], out[5], out[4], out[3], out[2], out[1], out[0]};
endmodule

module gpc1315222214222221413152222222222221341252222116212431316_56(input [5:0] src0, input [0:0] src1, input [2:0] src2, input [0:0] src3, input [2:0] src4, input [3:0] src5, input [1:0] src6, input [0:0] src7, input [1:0] src8, input [5:0] src9, input [0:0] src10, input [0:0] src11, input [1:0] src12, input [1:0] src13, input [1:0] src14, input [1:0] src15, input [4:0] src16, input [1:0] src17, input [0:0] src18, input [3:0] src19, input [2:0] src20, input [0:0] src21, input [1:0] src22, input [1:0] src23, input [1:0] src24, input [1:0] src25, input [1:0] src26, input [1:0] src27, input [1:0] src28, input [1:0] src29, input [1:0] src30, input [1:0] src31, input [1:0] src32, input [1:0] src33, input [4:0] src34, input [0:0] src35, input [2:0] src36, input [0:0] src37, input [3:0] src38, input [0:0] src39, input [1:0] src40, input [1:0] src41, input [1:0] src42, input [1:0] src43, input [1:0] src44, input [3:0] src45, input [0:0] src46, input [1:0] src47, input [1:0] src48, input [1:0] src49, input [1:0] src50, input [4:0] src51, input [0:0] src52, input [2:0] src53, input [0:0] src54, output [55:0] dst);
    wire [54:0] gene;
    wire [54:0] prop;
    wire [55:0] out;
    wire [55:0] carryout;
    LUT5 #(
        .INIT(32'h69960000)
    ) lut5_gene0(
        .O(gene[0]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src0[3]),
        .I3(src0[4]),
        .I4(src0[5])
    );
    LUT5 #(
        .INIT(32'h96696996)
    ) lut5_prop0(
        .O(prop[0]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src0[3]),
        .I3(src0[4]),
        .I4(src0[5])
    );
    LUT5 #(
        .INIT(32'h76608000)
    ) lut5_gene1(
        .O(gene[1]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src0[3]),
        .I3(src0[4]),
        .I4(src1[0])
    );
    LUT5 #(
        .INIT(32'h81177ee8)
    ) lut5_prop1(
        .O(prop[1]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src0[3]),
        .I3(src0[4]),
        .I4(src1[0])
    );
    LUT6_2 #(
        .INIT(64'h7f80807f807f7f80)
    ) lut6_2_inst2(
        .O5(gene[2]),
        .O6(prop[2]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src1[0]),
        .I3(src2[1]),
        .I4(src2[2]),
        .I5(src2[0])
    );
    LUT6_2 #(
        .INIT(64'h7f7fffff808000)
    ) lut6_2_inst3(
        .O5(gene[3]),
        .O6(prop[3]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src1[0]),
        .I3(src2[1]),
        .I4(src2[2]),
        .I5(src3[0])
    );
    LUT3 #(
        .INIT(8'h60)
    ) lut3_gene4(
        .O(gene[4]),
        .I0(src4[0]),
        .I1(src4[1]),
        .I2(src4[2])
    );
    LUT3 #(
        .INIT(8'h96)
    ) lut3_prop4(
        .O(prop[4]),
        .I0(src4[0]),
        .I1(src4[1]),
        .I2(src4[2])
    );
    LUT6_2 #(
        .INIT(64'h966969963cc3c33c)
    ) lut6_2_inst5(
        .O5(gene[5]),
        .O6(prop[5]),
        .I0(src4[1]),
        .I1(src5[0]),
        .I2(src5[1]),
        .I3(src5[2]),
        .I4(src5[3]),
        .I5(src4[0])
    );
    LUT6_2 #(
        .INIT(64'h7ee8811781177ee8)
    ) lut6_2_inst6(
        .O5(gene[6]),
        .O6(prop[6]),
        .I0(src5[0]),
        .I1(src5[1]),
        .I2(src5[2]),
        .I3(src5[3]),
        .I4(src6[1]),
        .I5(src6[0])
    );
    LUT6_2 #(
        .INIT(64'h1177ffffee88000)
    ) lut6_2_inst7(
        .O5(gene[7]),
        .O6(prop[7]),
        .I0(src5[0]),
        .I1(src5[1]),
        .I2(src5[2]),
        .I3(src5[3]),
        .I4(src6[1]),
        .I5(src7[0])
    );
    LUT2 #(
        .INIT(4'h8)
    ) lut2_gene8(
        .O(gene[8]),
        .I0(src8[0]),
        .I1(src8[1])
    );
    LUT2 #(
        .INIT(4'h6)
    ) lut2_prop8(
        .O(prop[8]),
        .I0(src8[0]),
        .I1(src8[1])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst9(
        .O5(gene[9]),
        .O6(prop[9]),
        .I0(src9[1]),
        .I1(src9[2]),
        .I2(src9[3]),
        .I3(src9[4]),
        .I4(src9[5]),
        .I5(src9[0])
    );
    LUT6_2 #(
        .INIT(64'he8818117177e7ee8)
    ) lut6_2_inst10(
        .O5(gene[10]),
        .O6(prop[10]),
        .I0(src9[1]),
        .I1(src9[2]),
        .I2(src9[3]),
        .I3(src9[4]),
        .I4(src9[5]),
        .I5(src10[0])
    );
    LUT6_2 #(
        .INIT(64'h177f7fffe8808000)
    ) lut6_2_inst11(
        .O5(gene[11]),
        .O6(prop[11]),
        .I0(src9[1]),
        .I1(src9[2]),
        .I2(src9[3]),
        .I3(src9[4]),
        .I4(src9[5]),
        .I5(src11[0])
    );
    LUT2 #(
        .INIT(4'h8)
    ) lut2_gene12(
        .O(gene[12]),
        .I0(src12[0]),
        .I1(src12[1])
    );
    LUT2 #(
        .INIT(4'h6)
    ) lut2_prop12(
        .O(prop[12]),
        .I0(src12[0]),
        .I1(src12[1])
    );
    LUT2 #(
        .INIT(4'h8)
    ) lut2_gene13(
        .O(gene[13]),
        .I0(src13[0]),
        .I1(src13[1])
    );
    LUT2 #(
        .INIT(4'h6)
    ) lut2_prop13(
        .O(prop[13]),
        .I0(src13[0]),
        .I1(src13[1])
    );
    LUT2 #(
        .INIT(4'h8)
    ) lut2_gene14(
        .O(gene[14]),
        .I0(src14[0]),
        .I1(src14[1])
    );
    LUT2 #(
        .INIT(4'h6)
    ) lut2_prop14(
        .O(prop[14]),
        .I0(src14[0]),
        .I1(src14[1])
    );
    LUT2 #(
        .INIT(4'h8)
    ) lut2_gene15(
        .O(gene[15]),
        .I0(src15[0]),
        .I1(src15[1])
    );
    LUT2 #(
        .INIT(4'h6)
    ) lut2_prop15(
        .O(prop[15]),
        .I0(src15[0]),
        .I1(src15[1])
    );
    LUT5 #(
        .INIT(32'h69960000)
    ) lut5_gene16(
        .O(gene[16]),
        .I0(src16[0]),
        .I1(src16[1]),
        .I2(src16[2]),
        .I3(src16[3]),
        .I4(src16[4])
    );
    LUT5 #(
        .INIT(32'h96696996)
    ) lut5_prop16(
        .O(prop[16]),
        .I0(src16[0]),
        .I1(src16[1]),
        .I2(src16[2]),
        .I3(src16[3]),
        .I4(src16[4])
    );
    LUT6_2 #(
        .INIT(64'h7ee8811781177ee8)
    ) lut6_2_inst17(
        .O5(gene[17]),
        .O6(prop[17]),
        .I0(src16[0]),
        .I1(src16[1]),
        .I2(src16[2]),
        .I3(src16[3]),
        .I4(src17[1]),
        .I5(src17[0])
    );
    LUT6_2 #(
        .INIT(64'h1177ffffee88000)
    ) lut6_2_inst18(
        .O5(gene[18]),
        .O6(prop[18]),
        .I0(src16[0]),
        .I1(src16[1]),
        .I2(src16[2]),
        .I3(src16[3]),
        .I4(src17[1]),
        .I5(src18[0])
    );
    LUT4 #(
        .INIT(16'h9600)
    ) lut4_gene19(
        .O(gene[19]),
        .I0(src19[0]),
        .I1(src19[1]),
        .I2(src19[2]),
        .I3(src19[3])
    );
    LUT4 #(
        .INIT(16'h6996)
    ) lut4_prop19(
        .O(prop[19]),
        .I0(src19[0]),
        .I1(src19[1]),
        .I2(src19[2]),
        .I3(src19[3])
    );
    LUT6_2 #(
        .INIT(64'h17e8e817e81717e8)
    ) lut6_2_inst20(
        .O5(gene[20]),
        .O6(prop[20]),
        .I0(src19[0]),
        .I1(src19[1]),
        .I2(src19[2]),
        .I3(src20[1]),
        .I4(src20[2]),
        .I5(src20[0])
    );
    LUT6_2 #(
        .INIT(64'h1717ffffe8e800)
    ) lut6_2_inst21(
        .O5(gene[21]),
        .O6(prop[21]),
        .I0(src19[0]),
        .I1(src19[1]),
        .I2(src19[2]),
        .I3(src20[1]),
        .I4(src20[2]),
        .I5(src21[0])
    );
    LUT2 #(
        .INIT(4'h8)
    ) lut2_gene22(
        .O(gene[22]),
        .I0(src22[0]),
        .I1(src22[1])
    );
    LUT2 #(
        .INIT(4'h6)
    ) lut2_prop22(
        .O(prop[22]),
        .I0(src22[0]),
        .I1(src22[1])
    );
    LUT2 #(
        .INIT(4'h8)
    ) lut2_gene23(
        .O(gene[23]),
        .I0(src23[0]),
        .I1(src23[1])
    );
    LUT2 #(
        .INIT(4'h6)
    ) lut2_prop23(
        .O(prop[23]),
        .I0(src23[0]),
        .I1(src23[1])
    );
    LUT2 #(
        .INIT(4'h8)
    ) lut2_gene24(
        .O(gene[24]),
        .I0(src24[0]),
        .I1(src24[1])
    );
    LUT2 #(
        .INIT(4'h6)
    ) lut2_prop24(
        .O(prop[24]),
        .I0(src24[0]),
        .I1(src24[1])
    );
    LUT2 #(
        .INIT(4'h8)
    ) lut2_gene25(
        .O(gene[25]),
        .I0(src25[0]),
        .I1(src25[1])
    );
    LUT2 #(
        .INIT(4'h6)
    ) lut2_prop25(
        .O(prop[25]),
        .I0(src25[0]),
        .I1(src25[1])
    );
    LUT2 #(
        .INIT(4'h8)
    ) lut2_gene26(
        .O(gene[26]),
        .I0(src26[0]),
        .I1(src26[1])
    );
    LUT2 #(
        .INIT(4'h6)
    ) lut2_prop26(
        .O(prop[26]),
        .I0(src26[0]),
        .I1(src26[1])
    );
    LUT2 #(
        .INIT(4'h8)
    ) lut2_gene27(
        .O(gene[27]),
        .I0(src27[0]),
        .I1(src27[1])
    );
    LUT2 #(
        .INIT(4'h6)
    ) lut2_prop27(
        .O(prop[27]),
        .I0(src27[0]),
        .I1(src27[1])
    );
    LUT2 #(
        .INIT(4'h8)
    ) lut2_gene28(
        .O(gene[28]),
        .I0(src28[0]),
        .I1(src28[1])
    );
    LUT2 #(
        .INIT(4'h6)
    ) lut2_prop28(
        .O(prop[28]),
        .I0(src28[0]),
        .I1(src28[1])
    );
    LUT2 #(
        .INIT(4'h8)
    ) lut2_gene29(
        .O(gene[29]),
        .I0(src29[0]),
        .I1(src29[1])
    );
    LUT2 #(
        .INIT(4'h6)
    ) lut2_prop29(
        .O(prop[29]),
        .I0(src29[0]),
        .I1(src29[1])
    );
    LUT2 #(
        .INIT(4'h8)
    ) lut2_gene30(
        .O(gene[30]),
        .I0(src30[0]),
        .I1(src30[1])
    );
    LUT2 #(
        .INIT(4'h6)
    ) lut2_prop30(
        .O(prop[30]),
        .I0(src30[0]),
        .I1(src30[1])
    );
    LUT2 #(
        .INIT(4'h8)
    ) lut2_gene31(
        .O(gene[31]),
        .I0(src31[0]),
        .I1(src31[1])
    );
    LUT2 #(
        .INIT(4'h6)
    ) lut2_prop31(
        .O(prop[31]),
        .I0(src31[0]),
        .I1(src31[1])
    );
    LUT2 #(
        .INIT(4'h8)
    ) lut2_gene32(
        .O(gene[32]),
        .I0(src32[0]),
        .I1(src32[1])
    );
    LUT2 #(
        .INIT(4'h6)
    ) lut2_prop32(
        .O(prop[32]),
        .I0(src32[0]),
        .I1(src32[1])
    );
    LUT2 #(
        .INIT(4'h8)
    ) lut2_gene33(
        .O(gene[33]),
        .I0(src33[0]),
        .I1(src33[1])
    );
    LUT2 #(
        .INIT(4'h6)
    ) lut2_prop33(
        .O(prop[33]),
        .I0(src33[0]),
        .I1(src33[1])
    );
    LUT5 #(
        .INIT(32'h69960000)
    ) lut5_gene34(
        .O(gene[34]),
        .I0(src34[0]),
        .I1(src34[1]),
        .I2(src34[2]),
        .I3(src34[3]),
        .I4(src34[4])
    );
    LUT5 #(
        .INIT(32'h96696996)
    ) lut5_prop34(
        .O(prop[34]),
        .I0(src34[0]),
        .I1(src34[1]),
        .I2(src34[2]),
        .I3(src34[3]),
        .I4(src34[4])
    );
    LUT5 #(
        .INIT(32'h76608000)
    ) lut5_gene35(
        .O(gene[35]),
        .I0(src34[0]),
        .I1(src34[1]),
        .I2(src34[2]),
        .I3(src34[3]),
        .I4(src35[0])
    );
    LUT5 #(
        .INIT(32'h81177ee8)
    ) lut5_prop35(
        .O(prop[35]),
        .I0(src34[0]),
        .I1(src34[1]),
        .I2(src34[2]),
        .I3(src34[3]),
        .I4(src35[0])
    );
    LUT6_2 #(
        .INIT(64'h7f80807f807f7f80)
    ) lut6_2_inst36(
        .O5(gene[36]),
        .O6(prop[36]),
        .I0(src34[0]),
        .I1(src34[1]),
        .I2(src35[0]),
        .I3(src36[1]),
        .I4(src36[2]),
        .I5(src36[0])
    );
    LUT6_2 #(
        .INIT(64'h7f7fffff808000)
    ) lut6_2_inst37(
        .O5(gene[37]),
        .O6(prop[37]),
        .I0(src34[0]),
        .I1(src34[1]),
        .I2(src35[0]),
        .I3(src36[1]),
        .I4(src36[2]),
        .I5(src37[0])
    );
    LUT4 #(
        .INIT(16'h9600)
    ) lut4_gene38(
        .O(gene[38]),
        .I0(src38[0]),
        .I1(src38[1]),
        .I2(src38[2]),
        .I3(src38[3])
    );
    LUT4 #(
        .INIT(16'h6996)
    ) lut4_prop38(
        .O(prop[38]),
        .I0(src38[0]),
        .I1(src38[1]),
        .I2(src38[2]),
        .I3(src38[3])
    );
    LUT4 #(
        .INIT(16'he800)
    ) lut4_gene39(
        .O(gene[39]),
        .I0(src38[0]),
        .I1(src38[1]),
        .I2(src38[2]),
        .I3(src39[0])
    );
    LUT4 #(
        .INIT(16'h17e8)
    ) lut4_prop39(
        .O(prop[39]),
        .I0(src38[0]),
        .I1(src38[1]),
        .I2(src38[2]),
        .I3(src39[0])
    );
    LUT2 #(
        .INIT(4'h8)
    ) lut2_gene40(
        .O(gene[40]),
        .I0(src40[0]),
        .I1(src40[1])
    );
    LUT2 #(
        .INIT(4'h6)
    ) lut2_prop40(
        .O(prop[40]),
        .I0(src40[0]),
        .I1(src40[1])
    );
    LUT2 #(
        .INIT(4'h8)
    ) lut2_gene41(
        .O(gene[41]),
        .I0(src41[0]),
        .I1(src41[1])
    );
    LUT2 #(
        .INIT(4'h6)
    ) lut2_prop41(
        .O(prop[41]),
        .I0(src41[0]),
        .I1(src41[1])
    );
    LUT2 #(
        .INIT(4'h8)
    ) lut2_gene42(
        .O(gene[42]),
        .I0(src42[0]),
        .I1(src42[1])
    );
    LUT2 #(
        .INIT(4'h6)
    ) lut2_prop42(
        .O(prop[42]),
        .I0(src42[0]),
        .I1(src42[1])
    );
    LUT2 #(
        .INIT(4'h8)
    ) lut2_gene43(
        .O(gene[43]),
        .I0(src43[0]),
        .I1(src43[1])
    );
    LUT2 #(
        .INIT(4'h6)
    ) lut2_prop43(
        .O(prop[43]),
        .I0(src43[0]),
        .I1(src43[1])
    );
    LUT2 #(
        .INIT(4'h8)
    ) lut2_gene44(
        .O(gene[44]),
        .I0(src44[0]),
        .I1(src44[1])
    );
    LUT2 #(
        .INIT(4'h6)
    ) lut2_prop44(
        .O(prop[44]),
        .I0(src44[0]),
        .I1(src44[1])
    );
    LUT4 #(
        .INIT(16'h9600)
    ) lut4_gene45(
        .O(gene[45]),
        .I0(src45[0]),
        .I1(src45[1]),
        .I2(src45[2]),
        .I3(src45[3])
    );
    LUT4 #(
        .INIT(16'h6996)
    ) lut4_prop45(
        .O(prop[45]),
        .I0(src45[0]),
        .I1(src45[1]),
        .I2(src45[2]),
        .I3(src45[3])
    );
    LUT4 #(
        .INIT(16'he800)
    ) lut4_gene46(
        .O(gene[46]),
        .I0(src45[0]),
        .I1(src45[1]),
        .I2(src45[2]),
        .I3(src46[0])
    );
    LUT4 #(
        .INIT(16'h17e8)
    ) lut4_prop46(
        .O(prop[46]),
        .I0(src45[0]),
        .I1(src45[1]),
        .I2(src45[2]),
        .I3(src46[0])
    );
    LUT2 #(
        .INIT(4'h8)
    ) lut2_gene47(
        .O(gene[47]),
        .I0(src47[0]),
        .I1(src47[1])
    );
    LUT2 #(
        .INIT(4'h6)
    ) lut2_prop47(
        .O(prop[47]),
        .I0(src47[0]),
        .I1(src47[1])
    );
    LUT2 #(
        .INIT(4'h8)
    ) lut2_gene48(
        .O(gene[48]),
        .I0(src48[0]),
        .I1(src48[1])
    );
    LUT2 #(
        .INIT(4'h6)
    ) lut2_prop48(
        .O(prop[48]),
        .I0(src48[0]),
        .I1(src48[1])
    );
    LUT2 #(
        .INIT(4'h8)
    ) lut2_gene49(
        .O(gene[49]),
        .I0(src49[0]),
        .I1(src49[1])
    );
    LUT2 #(
        .INIT(4'h6)
    ) lut2_prop49(
        .O(prop[49]),
        .I0(src49[0]),
        .I1(src49[1])
    );
    LUT2 #(
        .INIT(4'h8)
    ) lut2_gene50(
        .O(gene[50]),
        .I0(src50[0]),
        .I1(src50[1])
    );
    LUT2 #(
        .INIT(4'h6)
    ) lut2_prop50(
        .O(prop[50]),
        .I0(src50[0]),
        .I1(src50[1])
    );
    LUT5 #(
        .INIT(32'h69960000)
    ) lut5_gene51(
        .O(gene[51]),
        .I0(src51[0]),
        .I1(src51[1]),
        .I2(src51[2]),
        .I3(src51[3]),
        .I4(src51[4])
    );
    LUT5 #(
        .INIT(32'h96696996)
    ) lut5_prop51(
        .O(prop[51]),
        .I0(src51[0]),
        .I1(src51[1]),
        .I2(src51[2]),
        .I3(src51[3]),
        .I4(src51[4])
    );
    LUT5 #(
        .INIT(32'h76608000)
    ) lut5_gene52(
        .O(gene[52]),
        .I0(src51[0]),
        .I1(src51[1]),
        .I2(src51[2]),
        .I3(src51[3]),
        .I4(src52[0])
    );
    LUT5 #(
        .INIT(32'h81177ee8)
    ) lut5_prop52(
        .O(prop[52]),
        .I0(src51[0]),
        .I1(src51[1]),
        .I2(src51[2]),
        .I3(src51[3]),
        .I4(src52[0])
    );
    LUT6_2 #(
        .INIT(64'h7f80807f807f7f80)
    ) lut6_2_inst53(
        .O5(gene[53]),
        .O6(prop[53]),
        .I0(src51[0]),
        .I1(src51[1]),
        .I2(src52[0]),
        .I3(src53[1]),
        .I4(src53[2]),
        .I5(src53[0])
    );
    LUT6_2 #(
        .INIT(64'h7f7fffff808000)
    ) lut6_2_inst54(
        .O5(gene[54]),
        .O6(prop[54]),
        .I0(src51[0]),
        .I1(src51[1]),
        .I2(src52[0]),
        .I3(src53[1]),
        .I4(src53[2]),
        .I5(src54[0])
    );
    CARRY4 carry4_inst0(
        .CO(carryout[3:0]),
        .O(out[3:0]),
        .CYINIT(1'h0),
        .CI(src0[0]),
        .DI(gene[3:0]),
        .S(prop[3:0])
    );
    CARRY4 carry4_inst1(
        .CO(carryout[7:4]),
        .O(out[7:4]),
        .CYINIT(1'h0),
        .CI(carryout[3]),
        .DI(gene[7:4]),
        .S(prop[7:4])
    );
    CARRY4 carry4_inst2(
        .CO(carryout[11:8]),
        .O(out[11:8]),
        .CYINIT(1'h0),
        .CI(carryout[7]),
        .DI(gene[11:8]),
        .S(prop[11:8])
    );
    CARRY4 carry4_inst3(
        .CO(carryout[15:12]),
        .O(out[15:12]),
        .CYINIT(1'h0),
        .CI(carryout[11]),
        .DI(gene[15:12]),
        .S(prop[15:12])
    );
    CARRY4 carry4_inst4(
        .CO(carryout[19:16]),
        .O(out[19:16]),
        .CYINIT(1'h0),
        .CI(carryout[15]),
        .DI(gene[19:16]),
        .S(prop[19:16])
    );
    CARRY4 carry4_inst5(
        .CO(carryout[23:20]),
        .O(out[23:20]),
        .CYINIT(1'h0),
        .CI(carryout[19]),
        .DI(gene[23:20]),
        .S(prop[23:20])
    );
    CARRY4 carry4_inst6(
        .CO(carryout[27:24]),
        .O(out[27:24]),
        .CYINIT(1'h0),
        .CI(carryout[23]),
        .DI(gene[27:24]),
        .S(prop[27:24])
    );
    CARRY4 carry4_inst7(
        .CO(carryout[31:28]),
        .O(out[31:28]),
        .CYINIT(1'h0),
        .CI(carryout[27]),
        .DI(gene[31:28]),
        .S(prop[31:28])
    );
    CARRY4 carry4_inst8(
        .CO(carryout[35:32]),
        .O(out[35:32]),
        .CYINIT(1'h0),
        .CI(carryout[31]),
        .DI(gene[35:32]),
        .S(prop[35:32])
    );
    CARRY4 carry4_inst9(
        .CO(carryout[39:36]),
        .O(out[39:36]),
        .CYINIT(1'h0),
        .CI(carryout[35]),
        .DI(gene[39:36]),
        .S(prop[39:36])
    );
    CARRY4 carry4_inst10(
        .CO(carryout[43:40]),
        .O(out[43:40]),
        .CYINIT(1'h0),
        .CI(carryout[39]),
        .DI(gene[43:40]),
        .S(prop[43:40])
    );
    CARRY4 carry4_inst11(
        .CO(carryout[47:44]),
        .O(out[47:44]),
        .CYINIT(1'h0),
        .CI(carryout[43]),
        .DI(gene[47:44]),
        .S(prop[47:44])
    );
    CARRY4 carry4_inst12(
        .CO(carryout[51:48]),
        .O(out[51:48]),
        .CYINIT(1'h0),
        .CI(carryout[47]),
        .DI(gene[51:48]),
        .S(prop[51:48])
    );
    CARRY4 carry4_inst13(
        .CO(carryout[55:52]),
        .O(out[55:52]),
        .CYINIT(1'h0),
        .CI(carryout[51]),
        .DI({1'h0, gene[54:52]}),
        .S({1'h0, prop[54:52]})
    );
    assign dst = {carryout[54], out[54], out[53], out[52], out[51], out[50], out[49], out[48], out[47], out[46], out[45], out[44], out[43], out[42], out[41], out[40], out[39], out[38], out[37], out[36], out[35], out[34], out[33], out[32], out[31], out[30], out[29], out[28], out[27], out[26], out[25], out[24], out[23], out[22], out[21], out[20], out[19], out[18], out[17], out[16], out[15], out[14], out[13], out[12], out[11], out[10], out[9], out[8], out[7], out[6], out[5], out[4], out[3], out[2], out[1], out[0]};
endmodule

module compressor(
      input [0:0] src0,
      input [1:0] src1,
      input [2:0] src2,
      input [3:0] src3,
      input [4:0] src4,
      input [5:0] src5,
      input [6:0] src6,
      input [7:0] src7,
      input [8:0] src8,
      input [9:0] src9,
      input [10:0] src10,
      input [11:0] src11,
      input [12:0] src12,
      input [13:0] src13,
      input [14:0] src14,
      input [15:0] src15,
      input [16:0] src16,
      input [17:0] src17,
      input [18:0] src18,
      input [19:0] src19,
      input [20:0] src20,
      input [21:0] src21,
      input [22:0] src22,
      input [23:0] src23,
      input [24:0] src24,
      input [25:0] src25,
      input [26:0] src26,
      input [27:0] src27,
      input [28:0] src28,
      input [27:0] src29,
      input [26:0] src30,
      input [25:0] src31,
      input [24:0] src32,
      input [23:0] src33,
      input [22:0] src34,
      input [21:0] src35,
      input [20:0] src36,
      input [19:0] src37,
      input [18:0] src38,
      input [17:0] src39,
      input [16:0] src40,
      input [15:0] src41,
      input [14:0] src42,
      input [13:0] src43,
      input [12:0] src44,
      input [11:0] src45,
      input [10:0] src46,
      input [9:0] src47,
      input [8:0] src48,
      input [7:0] src49,
      input [6:0] src50,
      input [5:0] src51,
      input [4:0] src52,
      input [3:0] src53,
      input [2:0] src54,
      input [1:0] src55,
      input [0:0] src56,
      output [0:0] dst0,
      output [0:0] dst1,
      output [0:0] dst2,
      output [0:0] dst3,
      output [0:0] dst4,
      output [0:0] dst5,
      output [0:0] dst6,
      output [0:0] dst7,
      output [0:0] dst8,
      output [0:0] dst9,
      output [0:0] dst10,
      output [0:0] dst11,
      output [0:0] dst12,
      output [0:0] dst13,
      output [0:0] dst14,
      output [0:0] dst15,
      output [0:0] dst16,
      output [0:0] dst17,
      output [0:0] dst18,
      output [0:0] dst19,
      output [0:0] dst20,
      output [0:0] dst21,
      output [0:0] dst22,
      output [0:0] dst23,
      output [0:0] dst24,
      output [0:0] dst25,
      output [0:0] dst26,
      output [0:0] dst27,
      output [0:0] dst28,
      output [0:0] dst29,
      output [0:0] dst30,
      output [0:0] dst31,
      output [0:0] dst32,
      output [0:0] dst33,
      output [0:0] dst34,
      output [0:0] dst35,
      output [0:0] dst36,
      output [0:0] dst37,
      output [0:0] dst38,
      output [0:0] dst39,
      output [0:0] dst40,
      output [0:0] dst41,
      output [0:0] dst42,
      output [0:0] dst43,
      output [0:0] dst44,
      output [0:0] dst45,
      output [0:0] dst46,
      output [0:0] dst47,
      output [0:0] dst48,
      output [0:0] dst49,
      output [0:0] dst50,
      output [0:0] dst51,
      output [0:0] dst52,
      output [0:0] dst53,
      output [0:0] dst54,
      output [0:0] dst55,
      output [0:0] dst56,
      output [0:0] dst57);

   wire [0:0] stage0_0;
   wire [1:0] stage0_1;
   wire [2:0] stage0_2;
   wire [3:0] stage0_3;
   wire [4:0] stage0_4;
   wire [5:0] stage0_5;
   wire [6:0] stage0_6;
   wire [7:0] stage0_7;
   wire [8:0] stage0_8;
   wire [9:0] stage0_9;
   wire [10:0] stage0_10;
   wire [11:0] stage0_11;
   wire [12:0] stage0_12;
   wire [13:0] stage0_13;
   wire [14:0] stage0_14;
   wire [15:0] stage0_15;
   wire [16:0] stage0_16;
   wire [17:0] stage0_17;
   wire [18:0] stage0_18;
   wire [19:0] stage0_19;
   wire [20:0] stage0_20;
   wire [21:0] stage0_21;
   wire [22:0] stage0_22;
   wire [23:0] stage0_23;
   wire [24:0] stage0_24;
   wire [25:0] stage0_25;
   wire [26:0] stage0_26;
   wire [27:0] stage0_27;
   wire [28:0] stage0_28;
   wire [27:0] stage0_29;
   wire [26:0] stage0_30;
   wire [25:0] stage0_31;
   wire [24:0] stage0_32;
   wire [23:0] stage0_33;
   wire [22:0] stage0_34;
   wire [21:0] stage0_35;
   wire [20:0] stage0_36;
   wire [19:0] stage0_37;
   wire [18:0] stage0_38;
   wire [17:0] stage0_39;
   wire [16:0] stage0_40;
   wire [15:0] stage0_41;
   wire [14:0] stage0_42;
   wire [13:0] stage0_43;
   wire [12:0] stage0_44;
   wire [11:0] stage0_45;
   wire [10:0] stage0_46;
   wire [9:0] stage0_47;
   wire [8:0] stage0_48;
   wire [7:0] stage0_49;
   wire [6:0] stage0_50;
   wire [5:0] stage0_51;
   wire [4:0] stage0_52;
   wire [3:0] stage0_53;
   wire [2:0] stage0_54;
   wire [1:0] stage0_55;
   wire [0:0] stage0_56;
   wire [0:0] stage1_0;
   wire [1:0] stage1_1;
   wire [2:0] stage1_2;
   wire [3:0] stage1_3;
   wire [4:0] stage1_4;
   wire [5:0] stage1_5;
   wire [6:0] stage1_6;
   wire [7:0] stage1_7;
   wire [4:0] stage1_8;
   wire [5:0] stage1_9;
   wire [5:0] stage1_10;
   wire [7:0] stage1_11;
   wire [4:0] stage1_12;
   wire [5:0] stage1_13;
   wire [5:0] stage1_14;
   wire [4:0] stage1_15;
   wire [8:0] stage1_16;
   wire [10:0] stage1_17;
   wire [5:0] stage1_18;
   wire [8:0] stage1_19;
   wire [7:0] stage1_20;
   wire [9:0] stage1_21;
   wire [6:0] stage1_22;
   wire [11:0] stage1_23;
   wire [7:0] stage1_24;
   wire [10:0] stage1_25;
   wire [9:0] stage1_26;
   wire [17:0] stage1_27;
   wire [11:0] stage1_28;
   wire [16:0] stage1_29;
   wire [16:0] stage1_30;
   wire [13:0] stage1_31;
   wire [12:0] stage1_32;
   wire [11:0] stage1_33;
   wire [12:0] stage1_34;
   wire [14:0] stage1_35;
   wire [7:0] stage1_36;
   wire [7:0] stage1_37;
   wire [6:0] stage1_38;
   wire [5:0] stage1_39;
   wire [5:0] stage1_40;
   wire [9:0] stage1_41;
   wire [4:0] stage1_42;
   wire [6:0] stage1_43;
   wire [6:0] stage1_44;
   wire [9:0] stage1_45;
   wire [3:0] stage1_46;
   wire [8:0] stage1_47;
   wire [4:0] stage1_48;
   wire [3:0] stage1_49;
   wire [8:0] stage1_50;
   wire [0:0] stage1_51;
   wire [5:0] stage1_52;
   wire [4:0] stage1_53;
   wire [2:0] stage1_54;
   wire [1:0] stage1_55;
   wire [0:0] stage1_56;
   wire [0:0] stage2_0;
   wire [1:0] stage2_1;
   wire [2:0] stage2_2;
   wire [3:0] stage2_3;
   wire [4:0] stage2_4;
   wire [1:0] stage2_5;
   wire [1:0] stage2_6;
   wire [3:0] stage2_7;
   wire [1:0] stage2_8;
   wire [1:0] stage2_9;
   wire [1:0] stage2_10;
   wire [3:0] stage2_11;
   wire [1:0] stage2_12;
   wire [7:0] stage2_13;
   wire [0:0] stage2_14;
   wire [5:0] stage2_15;
   wire [3:0] stage2_16;
   wire [6:0] stage2_17;
   wire [1:0] stage2_18;
   wire [4:0] stage2_19;
   wire [3:0] stage2_20;
   wire [3:0] stage2_21;
   wire [2:0] stage2_22;
   wire [2:0] stage2_23;
   wire [3:0] stage2_24;
   wire [5:0] stage2_25;
   wire [5:0] stage2_26;
   wire [3:0] stage2_27;
   wire [5:0] stage2_28;
   wire [4:0] stage2_29;
   wire [5:0] stage2_30;
   wire [5:0] stage2_31;
   wire [5:0] stage2_32;
   wire [4:0] stage2_33;
   wire [4:0] stage2_34;
   wire [5:0] stage2_35;
   wire [5:0] stage2_36;
   wire [3:0] stage2_37;
   wire [3:0] stage2_38;
   wire [2:0] stage2_39;
   wire [1:0] stage2_40;
   wire [5:0] stage2_41;
   wire [1:0] stage2_42;
   wire [2:0] stage2_43;
   wire [2:0] stage2_44;
   wire [5:0] stage2_45;
   wire [5:0] stage2_46;
   wire [4:0] stage2_47;
   wire [5:0] stage2_48;
   wire [0:0] stage2_49;
   wire [5:0] stage2_50;
   wire [1:0] stage2_51;
   wire [0:0] stage2_52;
   wire [5:0] stage2_53;
   wire [3:0] stage2_54;
   wire [1:0] stage2_55;
   wire [0:0] stage2_56;
   wire [0:0] stage3_0;
   wire [0:0] stage3_1;
   wire [0:0] stage3_2;
   wire [0:0] stage3_3;
   wire [5:0] stage3_4;
   wire [0:0] stage3_5;
   wire [1:0] stage3_6;
   wire [0:0] stage3_7;
   wire [2:0] stage3_8;
   wire [2:0] stage3_9;
   wire [1:0] stage3_10;
   wire [0:0] stage3_11;
   wire [1:0] stage3_12;
   wire [4:0] stage3_13;
   wire [0:0] stage3_14;
   wire [0:0] stage3_15;
   wire [1:0] stage3_16;
   wire [1:0] stage3_17;
   wire [1:0] stage3_18;
   wire [1:0] stage3_19;
   wire [4:0] stage3_20;
   wire [1:0] stage3_21;
   wire [0:0] stage3_22;
   wire [3:0] stage3_23;
   wire [2:0] stage3_24;
   wire [0:0] stage3_25;
   wire [1:0] stage3_26;
   wire [1:0] stage3_27;
   wire [1:0] stage3_28;
   wire [1:0] stage3_29;
   wire [1:0] stage3_30;
   wire [1:0] stage3_31;
   wire [1:0] stage3_32;
   wire [1:0] stage3_33;
   wire [1:0] stage3_34;
   wire [1:0] stage3_35;
   wire [1:0] stage3_36;
   wire [1:0] stage3_37;
   wire [4:0] stage3_38;
   wire [0:0] stage3_39;
   wire [2:0] stage3_40;
   wire [0:0] stage3_41;
   wire [2:0] stage3_42;
   wire [0:0] stage3_43;
   wire [1:0] stage3_44;
   wire [1:0] stage3_45;
   wire [1:0] stage3_46;
   wire [1:0] stage3_47;
   wire [1:0] stage3_48;
   wire [2:0] stage3_49;
   wire [0:0] stage3_50;
   wire [1:0] stage3_51;
   wire [1:0] stage3_52;
   wire [0:0] stage3_53;
   wire [1:0] stage3_54;
   wire [3:0] stage3_55;
   wire [0:0] stage3_56;
   wire [0:0] stage3_57;
   wire [0:0] stage4_0;
   wire [0:0] stage4_1;
   wire [0:0] stage4_2;
   wire [0:0] stage4_3;
   wire [0:0] stage4_4;
   wire [0:0] stage4_5;
   wire [0:0] stage4_6;
   wire [0:0] stage4_7;
   wire [0:0] stage4_8;
   wire [0:0] stage4_9;
   wire [0:0] stage4_10;
   wire [0:0] stage4_11;
   wire [0:0] stage4_12;
   wire [0:0] stage4_13;
   wire [0:0] stage4_14;
   wire [0:0] stage4_15;
   wire [0:0] stage4_16;
   wire [0:0] stage4_17;
   wire [0:0] stage4_18;
   wire [0:0] stage4_19;
   wire [0:0] stage4_20;
   wire [0:0] stage4_21;
   wire [0:0] stage4_22;
   wire [0:0] stage4_23;
   wire [0:0] stage4_24;
   wire [0:0] stage4_25;
   wire [0:0] stage4_26;
   wire [0:0] stage4_27;
   wire [0:0] stage4_28;
   wire [0:0] stage4_29;
   wire [0:0] stage4_30;
   wire [0:0] stage4_31;
   wire [0:0] stage4_32;
   wire [0:0] stage4_33;
   wire [0:0] stage4_34;
   wire [0:0] stage4_35;
   wire [0:0] stage4_36;
   wire [0:0] stage4_37;
   wire [0:0] stage4_38;
   wire [0:0] stage4_39;
   wire [0:0] stage4_40;
   wire [0:0] stage4_41;
   wire [0:0] stage4_42;
   wire [0:0] stage4_43;
   wire [0:0] stage4_44;
   wire [0:0] stage4_45;
   wire [0:0] stage4_46;
   wire [0:0] stage4_47;
   wire [0:0] stage4_48;
   wire [0:0] stage4_49;
   wire [0:0] stage4_50;
   wire [0:0] stage4_51;
   wire [0:0] stage4_52;
   wire [0:0] stage4_53;
   wire [0:0] stage4_54;
   wire [0:0] stage4_55;
   wire [0:0] stage4_56;
   wire [0:0] stage4_57;

   assign stage0_0 = src0;
   assign stage0_1 = src1;
   assign stage0_2 = src2;
   assign stage0_3 = src3;
   assign stage0_4 = src4;
   assign stage0_5 = src5;
   assign stage0_6 = src6;
   assign stage0_7 = src7;
   assign stage0_8 = src8;
   assign stage0_9 = src9;
   assign stage0_10 = src10;
   assign stage0_11 = src11;
   assign stage0_12 = src12;
   assign stage0_13 = src13;
   assign stage0_14 = src14;
   assign stage0_15 = src15;
   assign stage0_16 = src16;
   assign stage0_17 = src17;
   assign stage0_18 = src18;
   assign stage0_19 = src19;
   assign stage0_20 = src20;
   assign stage0_21 = src21;
   assign stage0_22 = src22;
   assign stage0_23 = src23;
   assign stage0_24 = src24;
   assign stage0_25 = src25;
   assign stage0_26 = src26;
   assign stage0_27 = src27;
   assign stage0_28 = src28;
   assign stage0_29 = src29;
   assign stage0_30 = src30;
   assign stage0_31 = src31;
   assign stage0_32 = src32;
   assign stage0_33 = src33;
   assign stage0_34 = src34;
   assign stage0_35 = src35;
   assign stage0_36 = src36;
   assign stage0_37 = src37;
   assign stage0_38 = src38;
   assign stage0_39 = src39;
   assign stage0_40 = src40;
   assign stage0_41 = src41;
   assign stage0_42 = src42;
   assign stage0_43 = src43;
   assign stage0_44 = src44;
   assign stage0_45 = src45;
   assign stage0_46 = src46;
   assign stage0_47 = src47;
   assign stage0_48 = src48;
   assign stage0_49 = src49;
   assign stage0_50 = src50;
   assign stage0_51 = src51;
   assign stage0_52 = src52;
   assign stage0_53 = src53;
   assign stage0_54 = src54;
   assign stage0_55 = src55;
   assign stage0_56 = src56;
   assign dst0 = stage4_0;
   assign dst1 = stage4_1;
   assign dst2 = stage4_2;
   assign dst3 = stage4_3;
   assign dst4 = stage4_4;
   assign dst5 = stage4_5;
   assign dst6 = stage4_6;
   assign dst7 = stage4_7;
   assign dst8 = stage4_8;
   assign dst9 = stage4_9;
   assign dst10 = stage4_10;
   assign dst11 = stage4_11;
   assign dst12 = stage4_12;
   assign dst13 = stage4_13;
   assign dst14 = stage4_14;
   assign dst15 = stage4_15;
   assign dst16 = stage4_16;
   assign dst17 = stage4_17;
   assign dst18 = stage4_18;
   assign dst19 = stage4_19;
   assign dst20 = stage4_20;
   assign dst21 = stage4_21;
   assign dst22 = stage4_22;
   assign dst23 = stage4_23;
   assign dst24 = stage4_24;
   assign dst25 = stage4_25;
   assign dst26 = stage4_26;
   assign dst27 = stage4_27;
   assign dst28 = stage4_28;
   assign dst29 = stage4_29;
   assign dst30 = stage4_30;
   assign dst31 = stage4_31;
   assign dst32 = stage4_32;
   assign dst33 = stage4_33;
   assign dst34 = stage4_34;
   assign dst35 = stage4_35;
   assign dst36 = stage4_36;
   assign dst37 = stage4_37;
   assign dst38 = stage4_38;
   assign dst39 = stage4_39;
   assign dst40 = stage4_40;
   assign dst41 = stage4_41;
   assign dst42 = stage4_42;
   assign dst43 = stage4_43;
   assign dst44 = stage4_44;
   assign dst45 = stage4_45;
   assign dst46 = stage4_46;
   assign dst47 = stage4_47;
   assign dst48 = stage4_48;
   assign dst49 = stage4_49;
   assign dst50 = stage4_50;
   assign dst51 = stage4_51;
   assign dst52 = stage4_52;
   assign dst53 = stage4_53;
   assign dst54 = stage4_54;
   assign dst55 = stage4_55;
   assign dst56 = stage4_56;
   assign dst57 = stage4_57;
   assign stage1_0[0:0] = stage0_0[0:0];
   assign stage1_1[1:0] = stage0_1[1:0];
   assign stage1_2[2:0] = stage0_2[2:0];
   assign stage1_3[3:0] = stage0_3[3:0];
   assign stage1_4[4:0] = stage0_4[4:0];
   assign stage1_5[5:0] = stage0_5[5:0];
   assign stage1_6[6:0] = stage0_6[6:0];
   assign stage1_7[7:0] = stage0_7[7:0];
   assign stage1_8[4:1] = stage0_8[8:5];
   assign stage1_9[5:2] = stage0_9[9:6];
   assign stage1_10[5:2] = stage0_10[10:7];
   assign stage1_11[7:2] = stage0_11[11:6];
   assign stage1_12[4:3] = stage0_12[12:11];
   assign stage1_13[5:4] = stage0_13[13:12];
   assign stage1_14[5:4] = stage0_14[14:13];
   assign stage1_16[8:5] = stage0_16[16:13];
   assign stage1_17[10:5] = stage0_17[17:12];
   assign stage1_18[5:5] = stage0_18[18:18];
   assign stage1_19[8:6] = stage0_19[19:17];
   assign stage1_20[7:6] = stage0_20[20:19];
   assign stage1_21[9:6] = stage0_21[21:18];
   assign stage1_23[11:7] = stage0_23[23:19];
   assign stage1_24[7:7] = stage0_24[24:24];
   assign stage1_25[10:8] = stage0_25[25:23];
   assign stage1_26[9:8] = stage0_26[26:25];
   assign stage1_27[17:8] = stage0_27[27:18];
   assign stage1_28[11:7] = stage0_28[28:24];
   assign stage1_29[16:7] = stage0_29[27:18];
   assign stage1_30[16:8] = stage0_30[26:18];
   assign stage1_31[13:6] = stage0_31[25:18];
   assign stage1_32[12:6] = stage0_32[24:18];
   assign stage1_33[11:6] = stage0_33[23:18];
   assign stage1_34[12:7] = stage0_34[22:17];
   assign stage1_35[14:6] = stage0_35[21:13];
   assign stage1_36[7:5] = stage0_36[20:18];
   assign stage1_37[7:6] = stage0_37[19:18];
   assign stage1_38[6:6] = stage0_38[18:18];
   assign stage1_41[9:6] = stage0_41[15:12];
   assign stage1_43[6:5] = stage0_43[13:12];
   assign stage1_44[6:6] = stage0_44[12:12];
   assign stage1_45[9:4] = stage0_45[11:6];
   assign stage1_47[8:3] = stage0_47[9:4];
   assign stage1_48[4:3] = stage0_48[8:7];
   assign stage1_49[3:2] = stage0_49[7:6];
   assign stage1_50[8:2] = stage0_50[6:0];
   assign stage1_52[5:1] = stage0_52[4:0];
   assign stage1_53[4:1] = stage0_53[3:0];
   assign stage1_54[2:0] = stage0_54[2:0];
   assign stage1_55[1:0] = stage0_55[1:0];
   assign stage1_56[0:0] = stage0_56[0:0];
   assign stage2_0[0:0] = stage1_0[0:0];
   assign stage2_1[1:0] = stage1_1[1:0];
   assign stage2_2[2:0] = stage1_2[2:0];
   assign stage2_3[3:0] = stage1_3[3:0];
   assign stage2_4[4:0] = stage1_4[4:0];
   assign stage2_5[1:1] = stage1_5[5:5];
   assign stage2_7[3:2] = stage1_7[7:6];
   assign stage2_11[3:2] = stage1_11[7:6];
   assign stage2_13[7:2] = stage1_13[5:0];
   assign stage2_15[5:1] = stage1_15[4:0];
   assign stage2_16[3:1] = stage1_16[8:6];
   assign stage2_17[6:2] = stage1_17[10:6];
   assign stage2_19[4:2] = stage1_19[8:6];
   assign stage2_20[3:2] = stage1_20[7:6];
   assign stage2_26[5:4] = stage1_26[9:8];
   assign stage2_34[4:4] = stage1_34[12:12];
   assign stage2_36[5:5] = stage1_36[7:7];
   assign stage2_38[3:3] = stage1_38[6:6];
   assign stage2_41[5:2] = stage1_41[9:6];
   assign stage2_43[2:2] = stage1_43[6:6];
   assign stage2_44[2:2] = stage1_44[6:6];
   assign stage2_45[5:2] = stage1_45[9:6];
   assign stage2_46[5:2] = stage1_46[3:0];
   assign stage2_47[4:2] = stage1_47[8:6];
   assign stage2_48[5:1] = stage1_48[4:0];
   assign stage2_50[5:2] = stage1_50[8:5];
   assign stage2_53[5:1] = stage1_53[4:0];
   assign stage2_54[3:1] = stage1_54[2:0];
   assign stage2_55[1:0] = stage1_55[1:0];
   assign stage2_56[0:0] = stage1_56[0:0];
   assign stage3_0[0:0] = stage2_0[0:0];
   assign stage3_4[5:1] = stage2_4[4:0];
   assign stage3_6[1:1] = stage2_6[1:1];
   assign stage3_8[2:1] = stage2_8[1:0];
   assign stage3_9[2:1] = stage2_9[1:0];
   assign stage3_10[1:0] = stage2_10[1:0];
   assign stage3_12[1:1] = stage2_12[1:1];
   assign stage3_13[4:1] = stage2_13[7:4];
   assign stage3_20[4:1] = stage2_20[3:0];
   assign stage3_23[3:1] = stage2_23[2:0];
   assign stage3_24[2:2] = stage2_24[3:3];
   assign stage3_38[4:2] = stage2_38[3:1];
   assign stage3_40[2:1] = stage2_40[1:0];
   assign stage3_42[2:1] = stage2_42[1:0];
   assign stage3_49[2:2] = stage2_49[0:0];
   assign stage3_55[3:2] = stage2_55[1:0];
   assign stage4_0[0:0] = stage3_0[0:0];
   assign stage4_1[0:0] = stage3_1[0:0];
   assign stage4_2[0:0] = stage3_2[0:0];
   assign stage4_3[0:0] = stage3_3[0:0];

   gpc60606060606060606060606060606060615_37 chain0_0(
         .src0(stage0_8[4:0]),
         .src1(stage0_9[0:0]),
         .src2(stage0_10[5:0]),
         .src4(stage0_12[5:0]),
         .src6(stage0_14[5:0]),
         .src8(stage0_16[5:0]),
         .src10(stage0_18[5:0]),
         .src12(stage0_20[5:0]),
         .src14(stage0_22[5:0]),
         .src16(stage0_24[5:0]),
         .src18(stage0_26[5:0]),
         .src20(stage0_28[5:0]),
         .src22(stage0_30[5:0]),
         .src24(stage0_32[5:0]),
         .src26(stage0_34[5:0]),
         .src28(stage0_36[5:0]),
         .src30(stage0_38[5:0]),
         .src32(stage0_40[5:0]),
         .src34(stage0_42[5:0]),
         .dst({stage1_44[0], stage1_43[0], stage1_42[0], stage1_41[0], stage1_40[0], stage1_39[0], stage1_38[0], stage1_37[0], stage1_36[0], stage1_35[0], stage1_34[0], stage1_33[0], stage1_32[0], stage1_31[0], stage1_30[0], stage1_29[0], stage1_28[0], stage1_27[0], stage1_26[0], stage1_25[0], stage1_24[0], stage1_23[0], stage1_22[0], stage1_21[0], stage1_20[0], stage1_19[0], stage1_18[0], stage1_17[0], stage1_16[0], stage1_15[0], stage1_14[0], stage1_13[0], stage1_12[0], stage1_11[0], stage1_10[0], stage1_9[0], stage1_8[0]})
   );
   gpc6061406060606060606060606060606060606060615_45 chain0_1(
         .src0(stage0_9[5:1]),
         .src1(stage0_10[6:6]),
         .src2(stage0_11[5:0]),
         .src4(stage0_13[5:0]),
         .src6(stage0_15[5:0]),
         .src8(stage0_17[5:0]),
         .src10(stage0_19[5:0]),
         .src12(stage0_21[5:0]),
         .src14(stage0_23[5:0]),
         .src16(stage0_25[5:0]),
         .src18(stage0_27[5:0]),
         .src20(stage0_29[5:0]),
         .src22(stage0_31[5:0]),
         .src24(stage0_33[5:0]),
         .src26(stage0_35[5:0]),
         .src28(stage0_37[5:0]),
         .src30(stage0_39[5:0]),
         .src32(stage0_41[5:0]),
         .src34(stage0_43[5:0]),
         .src36(stage0_45[5:0]),
         .src38(stage0_47[3:0]),
         .src39(stage0_48[0:0]),
         .src40(stage0_49[5:0]),
         .src42(stage0_51[5:0]),
         .dst({stage1_53[0], stage1_52[0], stage1_51[0], stage1_50[0], stage1_49[0], stage1_48[0], stage1_47[0], stage1_46[0], stage1_45[0], stage1_44[1], stage1_43[1], stage1_42[1], stage1_41[1], stage1_40[1], stage1_39[1], stage1_38[1], stage1_37[1], stage1_36[1], stage1_35[1], stage1_34[1], stage1_33[1], stage1_32[1], stage1_31[1], stage1_30[1], stage1_29[1], stage1_28[1], stage1_27[1], stage1_26[1], stage1_25[1], stage1_24[1], stage1_23[1], stage1_22[1], stage1_21[1], stage1_20[1], stage1_19[1], stage1_18[1], stage1_17[1], stage1_16[1], stage1_15[1], stage1_14[1], stage1_13[1], stage1_12[1], stage1_11[1], stage1_10[1], stage1_9[1]})
   );
   gpc6060606060606060606060606060615_33 chain0_2(
         .src0(stage0_12[10:6]),
         .src1(stage0_13[6:6]),
         .src2(stage0_14[11:6]),
         .src4(stage0_16[11:6]),
         .src6(stage0_18[11:6]),
         .src8(stage0_20[11:6]),
         .src10(stage0_22[11:6]),
         .src12(stage0_24[11:6]),
         .src14(stage0_26[11:6]),
         .src16(stage0_28[11:6]),
         .src18(stage0_30[11:6]),
         .src20(stage0_32[11:6]),
         .src22(stage0_34[11:6]),
         .src24(stage0_36[11:6]),
         .src26(stage0_38[11:6]),
         .src28(stage0_40[11:6]),
         .src30(stage0_42[11:6]),
         .dst({stage1_44[2], stage1_43[2], stage1_42[2], stage1_41[2], stage1_40[2], stage1_39[2], stage1_38[2], stage1_37[2], stage1_36[2], stage1_35[2], stage1_34[2], stage1_33[2], stage1_32[2], stage1_31[2], stage1_30[2], stage1_29[2], stage1_28[2], stage1_27[2], stage1_26[2], stage1_25[2], stage1_24[2], stage1_23[2], stage1_22[2], stage1_21[2], stage1_20[2], stage1_19[2], stage1_18[2], stage1_17[2], stage1_16[2], stage1_15[2], stage1_14[2], stage1_13[2], stage1_12[2]})
   );
   gpc615_5 chain0_3(
         .src0(stage0_13[11:7]),
         .src1(stage0_14[12:12]),
         .src2(stage0_15[11:6]),
         .dst({stage1_17[3], stage1_16[3], stage1_15[3], stage1_14[3], stage1_13[3]})
   );
   gpc6060606060606060615_21 chain0_4(
         .src0({stage0_15[15:12], 1'h0}),
         .src1(stage0_16[12:12]),
         .src2(stage0_17[11:6]),
         .src4(stage0_19[11:6]),
         .src6(stage0_21[11:6]),
         .src8(stage0_23[11:6]),
         .src10(stage0_25[11:6]),
         .src12(stage0_27[11:6]),
         .src14(stage0_29[11:6]),
         .src16(stage0_31[11:6]),
         .src18(stage0_33[11:6]),
         .dst({stage1_35[3], stage1_34[3], stage1_33[3], stage1_32[3], stage1_31[3], stage1_30[3], stage1_29[3], stage1_28[3], stage1_27[3], stage1_26[3], stage1_25[3], stage1_24[3], stage1_23[3], stage1_22[3], stage1_21[3], stage1_20[3], stage1_19[3], stage1_18[3], stage1_17[4], stage1_16[4], stage1_15[4]})
   );
   gpc60606060606_13 chain0_5(
         .src0(stage0_18[17:12]),
         .src2(stage0_20[17:12]),
         .src4(stage0_22[17:12]),
         .src6(stage0_24[17:12]),
         .src8(stage0_26[17:12]),
         .src10(stage0_28[17:12]),
         .dst({stage1_30[4], stage1_29[4], stage1_28[4], stage1_27[4], stage1_26[4], stage1_25[4], stage1_24[4], stage1_23[4], stage1_22[4], stage1_21[4], stage1_20[4], stage1_19[4], stage1_18[4]})
   );
   gpc6060615_9 chain0_6(
         .src0(stage0_19[16:12]),
         .src1(stage0_20[18:18]),
         .src2(stage0_21[17:12]),
         .src4(stage0_23[17:12]),
         .src6(stage0_25[17:12]),
         .dst({stage1_27[5], stage1_26[5], stage1_25[5], stage1_24[5], stage1_23[5], stage1_22[5], stage1_21[5], stage1_20[5], stage1_19[5]})
   );
   gpc6060615_9 chain0_7(
         .src0(stage0_22[22:18]),
         .src1(stage0_23[18:18]),
         .src2(stage0_24[23:18]),
         .src4(stage0_26[23:18]),
         .src6(stage0_28[23:18]),
         .dst({stage1_30[5], stage1_29[5], stage1_28[5], stage1_27[6], stage1_26[6], stage1_25[6], stage1_24[6], stage1_23[6], stage1_22[6]})
   );
   gpc6060606060606060615_21 chain0_8(
         .src0(stage0_25[22:18]),
         .src1(stage0_26[24:24]),
         .src2(stage0_27[17:12]),
         .src4(stage0_29[17:12]),
         .src6(stage0_31[17:12]),
         .src8(stage0_33[17:12]),
         .src10(stage0_35[11:6]),
         .src12(stage0_37[11:6]),
         .src14(stage0_39[11:6]),
         .src16(stage0_41[11:6]),
         .src18(stage0_43[11:6]),
         .dst({stage1_45[1], stage1_44[3], stage1_43[3], stage1_42[3], stage1_41[3], stage1_40[3], stage1_39[3], stage1_38[3], stage1_37[3], stage1_36[3], stage1_35[4], stage1_34[4], stage1_33[4], stage1_32[4], stage1_31[4], stage1_30[6], stage1_29[6], stage1_28[6], stage1_27[7], stage1_26[7], stage1_25[7]})
   );
   gpc606_5 chain0_9(
         .src0(stage0_30[17:12]),
         .src2(stage0_32[17:12]),
         .dst({stage1_34[5], stage1_33[5], stage1_32[5], stage1_31[5], stage1_30[7]})
   );
   gpc60606060615_13 chain0_10(
         .src0(stage0_34[16:12]),
         .src1(stage0_35[12:12]),
         .src2(stage0_36[17:12]),
         .src4(stage0_38[17:12]),
         .src6({stage0_40[16:12], 1'h0}),
         .src8({stage0_42[14:12], 3'h0}),
         .src10(stage0_44[5:0]),
         .dst({stage1_46[1], stage1_45[2], stage1_44[4], stage1_43[4], stage1_42[4], stage1_41[4], stage1_40[4], stage1_39[4], stage1_38[4], stage1_37[4], stage1_36[4], stage1_35[5], stage1_34[6]})
   );
   gpc606_5 chain0_11(
         .src0(stage0_37[17:12]),
         .src2(stage0_39[17:12]),
         .dst({stage1_41[5], stage1_40[5], stage1_39[5], stage1_38[5], stage1_37[5]})
   );
   gpc606_5 chain0_12(
         .src0(stage0_44[11:6]),
         .src2(stage0_46[5:0]),
         .dst({stage1_48[1], stage1_47[1], stage1_46[2], stage1_45[3], stage1_44[5]})
   );
   gpc606_5 chain0_13(
         .src0({stage0_46[10:6], 1'h0}),
         .src2(stage0_48[6:1]),
         .dst({stage1_50[1], stage1_49[1], stage1_48[2], stage1_47[2], stage1_46[3]})
   );
   gpc6060615_9 chain1_0(
         .src0(stage1_5[4:0]),
         .src1(stage1_6[0:0]),
         .src2(stage1_7[5:0]),
         .src4(stage1_9[5:0]),
         .src6(stage1_11[5:0]),
         .dst({stage2_13[0], stage2_12[0], stage2_11[0], stage2_10[0], stage2_9[0], stage2_8[0], stage2_7[0], stage2_6[0], stage2_5[0]})
   );
   gpc6060606060606060606_21 chain1_1(
         .src0(stage1_6[6:1]),
         .src2({stage1_8[4:0], 1'h0}),
         .src4(stage1_10[5:0]),
         .src6({stage1_12[4:0], 1'h0}),
         .src8(stage1_14[5:0]),
         .src10(stage1_16[5:0]),
         .src12(stage1_18[5:0]),
         .src14(stage1_20[5:0]),
         .src16(stage1_22[5:0]),
         .src18(stage1_24[5:0]),
         .dst({stage2_26[0], stage2_25[0], stage2_24[0], stage2_23[0], stage2_22[0], stage2_21[0], stage2_20[0], stage2_19[0], stage2_18[0], stage2_17[0], stage2_16[0], stage2_15[0], stage2_14[0], stage2_13[1], stage2_12[1], stage2_11[1], stage2_10[1], stage2_9[1], stage2_8[1], stage2_7[1], stage2_6[1]})
   );
   gpc606_5 chain1_2(
         .src0(stage1_17[5:0]),
         .src2(stage1_19[5:0]),
         .dst({stage2_21[1], stage2_20[1], stage2_19[1], stage2_18[1], stage2_17[1]})
   );
   gpc615_5 chain1_3(
         .src0(stage1_21[4:0]),
         .src1(stage1_22[6:6]),
         .src2(stage1_23[5:0]),
         .dst({stage2_25[1], stage2_24[1], stage2_23[1], stage2_22[1], stage2_21[2]})
   );
   gpc615_5 chain1_4(
         .src0(stage1_21[9:5]),
         .src1(1'h0),
         .src2(stage1_23[11:6]),
         .dst({stage2_25[2], stage2_24[2], stage2_23[2], stage2_22[2], stage2_21[3]})
   );
   gpc615_5 chain1_5(
         .src0({stage1_24[7:6], 3'h0}),
         .src1(stage1_25[0:0]),
         .src2(stage1_26[5:0]),
         .dst({stage2_28[0], stage2_27[0], stage2_26[1], stage2_25[3], stage2_24[3]})
   );
   gpc60606060615_13 chain1_6(
         .src0(stage1_25[5:1]),
         .src1(stage1_26[6:6]),
         .src2(stage1_27[5:0]),
         .src4(stage1_29[5:0]),
         .src6(stage1_31[5:0]),
         .src8(stage1_33[5:0]),
         .src10(stage1_35[5:0]),
         .dst({stage2_37[0], stage2_36[0], stage2_35[0], stage2_34[0], stage2_33[0], stage2_32[0], stage2_31[0], stage2_30[0], stage2_29[0], stage2_28[1], stage2_27[1], stage2_26[2], stage2_25[4]})
   );
   gpc6060615_9 chain1_7(
         .src0(stage1_25[10:6]),
         .src1(stage1_26[7:7]),
         .src2(stage1_27[11:6]),
         .src4(stage1_29[11:6]),
         .src6(stage1_31[11:6]),
         .dst({stage2_33[1], stage2_32[1], stage2_31[1], stage2_30[1], stage2_29[1], stage2_28[2], stage2_27[2], stage2_26[3], stage2_25[5]})
   );
   gpc6140606_9 chain1_8(
         .src0(stage1_27[17:12]),
         .src2({stage1_29[16:12], 1'h0}),
         .src4({stage1_31[13:12], 2'h0}),
         .src5(stage1_32[0:0]),
         .src6(stage1_33[11:6]),
         .dst({stage2_35[1], stage2_34[1], stage2_33[2], stage2_32[2], stage2_31[2], stage2_30[2], stage2_29[2], stage2_28[3], stage2_27[3]})
   );
   gpc6060606_9 chain1_9(
         .src0(stage1_28[5:0]),
         .src2(stage1_30[5:0]),
         .src4(stage1_32[6:1]),
         .src6(stage1_34[5:0]),
         .dst({stage2_36[1], stage2_35[2], stage2_34[2], stage2_33[3], stage2_32[3], stage2_31[3], stage2_30[3], stage2_29[3], stage2_28[4]})
   );
   gpc606_5 chain1_10(
         .src0(stage1_28[11:6]),
         .src2(stage1_30[11:6]),
         .dst({stage2_32[4], stage2_31[4], stage2_30[4], stage2_29[4], stage2_28[5]})
   );
   gpc606060606060606_17 chain1_11(
         .src0({stage1_30[16:12], 1'h0}),
         .src2(stage1_32[12:7]),
         .src4(stage1_34[11:6]),
         .src6(stage1_36[5:0]),
         .src8(stage1_38[5:0]),
         .src10(stage1_40[5:0]),
         .src12({stage1_42[4:0], 1'h0}),
         .src14(stage1_44[5:0]),
         .dst({stage2_46[0], stage2_45[0], stage2_44[0], stage2_43[0], stage2_42[0], stage2_41[0], stage2_40[0], stage2_39[0], stage2_38[0], stage2_37[1], stage2_36[2], stage2_35[3], stage2_34[3], stage2_33[4], stage2_32[5], stage2_31[5], stage2_30[5]})
   );
   gpc60606060606_13 chain1_12(
         .src0(stage1_35[11:6]),
         .src2(stage1_37[5:0]),
         .src4(stage1_39[5:0]),
         .src6(stage1_41[5:0]),
         .src8(stage1_43[5:0]),
         .src10(stage1_45[5:0]),
         .dst({stage2_47[0], stage2_46[1], stage2_45[1], stage2_44[1], stage2_43[1], stage2_42[1], stage2_41[1], stage2_40[1], stage2_39[1], stage2_38[1], stage2_37[2], stage2_36[3], stage2_35[4]})
   );
   gpc615_5 chain1_13(
         .src0({stage1_35[14:12], 2'h0}),
         .src1(stage1_36[6:6]),
         .src2({stage1_37[7:6], 4'h0}),
         .dst({stage2_39[2], stage2_38[2], stage2_37[3], stage2_36[4], stage2_35[5]})
   );
   gpc606_5 chain1_14(
         .src0(stage1_47[5:0]),
         .src2({stage1_49[3:0], 2'h0}),
         .dst({stage2_51[0], stage2_50[0], stage2_49[0], stage2_48[0], stage2_47[1]})
   );
   gpc615_5 chain1_15(
         .src0(stage1_50[4:0]),
         .src1(stage1_51[0:0]),
         .src2(stage1_52[5:0]),
         .dst({stage2_54[0], stage2_53[0], stage2_52[0], stage2_51[1], stage2_50[1]})
   );
   gpc6140433_9 chain2_0(
         .src0({stage2_1[1:0], 1'h0}),
         .src1(stage2_2[2:0]),
         .src2(stage2_3[3:0]),
         .src4({stage2_5[1:0], 2'h0}),
         .src5(stage2_6[0:0]),
         .src6({stage2_7[3:0], 2'h0}),
         .dst({stage3_9[0], stage3_8[0], stage3_7[0], stage3_6[0], stage3_5[0], stage3_4[0], stage3_3[0], stage3_2[0], stage3_1[0]})
   );
   gpc606061415_11 chain2_1(
         .src0({stage2_11[3:0], 1'h0}),
         .src1(stage2_12[0:0]),
         .src2(stage2_13[3:0]),
         .src3(stage2_14[0:0]),
         .src4(stage2_15[5:0]),
         .src6(stage2_17[5:0]),
         .src8({stage2_19[4:0], 1'h0}),
         .dst({stage3_21[0], stage3_20[0], stage3_19[0], stage3_18[0], stage3_17[0], stage3_16[0], stage3_15[0], stage3_14[0], stage3_13[0], stage3_12[0], stage3_11[0]})
   );
   gpc215_4 chain2_2(
         .src0({stage2_16[3:0], 1'h0}),
         .src1(stage2_17[6:6]),
         .src2(stage2_18[1:0]),
         .dst({stage3_19[1], stage3_18[1], stage3_17[1], stage3_16[1]})
   );
   gpc44_4 chain2_3(
         .src0(stage2_21[3:0]),
         .src1({stage2_22[2:0], 1'h0}),
         .dst({stage3_24[0], stage3_23[0], stage3_22[0], stage3_21[1]})
   );
   gpc606060606140606060614063_26 chain2_4(
         .src0(stage2_24[2:0]),
         .src1(stage2_25[5:0]),
         .src3(stage2_27[3:0]),
         .src4(stage2_28[0:0]),
         .src5({stage2_29[4:0], 1'h0}),
         .src7(stage2_31[5:0]),
         .src9({stage2_33[4:0], 1'h0}),
         .src11(stage2_35[5:0]),
         .src13(stage2_37[3:0]),
         .src14(stage2_38[0:0]),
         .src15({stage2_39[2:0], 3'h0}),
         .src17(stage2_41[5:0]),
         .src19({stage2_43[2:0], 3'h0}),
         .src21(stage2_45[5:0]),
         .src23({stage2_47[4:0], 1'h0}),
         .dst({stage3_49[0], stage3_48[0], stage3_47[0], stage3_46[0], stage3_45[0], stage3_44[0], stage3_43[0], stage3_42[0], stage3_41[0], stage3_40[0], stage3_39[0], stage3_38[0], stage3_37[0], stage3_36[0], stage3_35[0], stage3_34[0], stage3_33[0], stage3_32[0], stage3_31[0], stage3_30[0], stage3_29[0], stage3_28[0], stage3_27[0], stage3_26[0], stage3_25[0], stage3_24[1]})
   );
   gpc60606060606_13 chain2_5(
         .src0(stage2_26[5:0]),
         .src2({stage2_28[5:1], 1'h0}),
         .src4(stage2_30[5:0]),
         .src6(stage2_32[5:0]),
         .src8({stage2_34[4:0], 1'h0}),
         .src10(stage2_36[5:0]),
         .dst({stage3_38[1], stage3_37[1], stage3_36[1], stage3_35[1], stage3_34[1], stage3_33[1], stage3_32[1], stage3_31[1], stage3_30[1], stage3_29[1], stage3_28[1], stage3_27[1], stage3_26[1]})
   );
   gpc6060615_9 chain2_6(
         .src0({stage2_44[2:0], 2'h0}),
         .src1(1'h0),
         .src2(stage2_46[5:0]),
         .src4(stage2_48[5:0]),
         .src6(stage2_50[5:0]),
         .dst({stage3_52[0], stage3_51[0], stage3_50[0], stage3_49[1], stage3_48[1], stage3_47[1], stage3_46[1], stage3_45[1], stage3_44[1]})
   );
   gpc615_5 chain2_7(
         .src0({stage2_51[1:0], 3'h0}),
         .src1(stage2_52[0:0]),
         .src2(stage2_53[5:0]),
         .dst({stage3_55[0], stage3_54[0], stage3_53[0], stage3_52[1], stage3_51[1]})
   );
   wire dummy3_58_8;
   gpc606_5 chain2_8(
         .src0({stage2_54[3:0], 2'h0}),
         .src2({stage2_56[0:0], 5'h0}),
         .dst({dummy3_58_8, stage3_57[0], stage3_56[0], stage3_55[1], stage3_54[1]})
   );
   wire dummy4_58_0;
   wire dummy4_59_0;
   gpc1315222214222221413152222222222221341252222116212431316_56 chain3_0(
         .src0(stage3_4[5:0]),
         .src1(stage3_5[0:0]),
         .src2({stage3_6[1:0], 1'h0}),
         .src3(stage3_7[0:0]),
         .src4(stage3_8[2:0]),
         .src5({stage3_9[2:0], 1'h0}),
         .src6(stage3_10[1:0]),
         .src7(stage3_11[0:0]),
         .src8(stage3_12[1:0]),
         .src9({stage3_13[4:0], 1'h0}),
         .src10(stage3_14[0:0]),
         .src11(stage3_15[0:0]),
         .src12(stage3_16[1:0]),
         .src13(stage3_17[1:0]),
         .src14(stage3_18[1:0]),
         .src15(stage3_19[1:0]),
         .src16(stage3_20[4:0]),
         .src17(stage3_21[1:0]),
         .src18(stage3_22[0:0]),
         .src19(stage3_23[3:0]),
         .src20(stage3_24[2:0]),
         .src21(stage3_25[0:0]),
         .src22(stage3_26[1:0]),
         .src23(stage3_27[1:0]),
         .src24(stage3_28[1:0]),
         .src25(stage3_29[1:0]),
         .src26(stage3_30[1:0]),
         .src27(stage3_31[1:0]),
         .src28(stage3_32[1:0]),
         .src29(stage3_33[1:0]),
         .src30(stage3_34[1:0]),
         .src31(stage3_35[1:0]),
         .src32(stage3_36[1:0]),
         .src33(stage3_37[1:0]),
         .src34(stage3_38[4:0]),
         .src35(stage3_39[0:0]),
         .src36(stage3_40[2:0]),
         .src37(stage3_41[0:0]),
         .src38({stage3_42[2:0], 1'h0}),
         .src39(stage3_43[0:0]),
         .src40(stage3_44[1:0]),
         .src41(stage3_45[1:0]),
         .src42(stage3_46[1:0]),
         .src43(stage3_47[1:0]),
         .src44(stage3_48[1:0]),
         .src45({stage3_49[2:0], 1'h0}),
         .src46(stage3_50[0:0]),
         .src47(stage3_51[1:0]),
         .src48(stage3_52[1:0]),
         .src49({stage3_53[0:0], 1'h0}),
         .src50(stage3_54[1:0]),
         .src51({stage3_55[3:0], 1'h0}),
         .src52(stage3_56[0:0]),
         .src53({stage3_57[0:0], 2'h0}),
         .src54(1'h0),
         .dst({dummy4_59_0, dummy4_58_0, stage4_57[0], stage4_56[0], stage4_55[0], stage4_54[0], stage4_53[0], stage4_52[0], stage4_51[0], stage4_50[0], stage4_49[0], stage4_48[0], stage4_47[0], stage4_46[0], stage4_45[0], stage4_44[0], stage4_43[0], stage4_42[0], stage4_41[0], stage4_40[0], stage4_39[0], stage4_38[0], stage4_37[0], stage4_36[0], stage4_35[0], stage4_34[0], stage4_33[0], stage4_32[0], stage4_31[0], stage4_30[0], stage4_29[0], stage4_28[0], stage4_27[0], stage4_26[0], stage4_25[0], stage4_24[0], stage4_23[0], stage4_22[0], stage4_21[0], stage4_20[0], stage4_19[0], stage4_18[0], stage4_17[0], stage4_16[0], stage4_15[0], stage4_14[0], stage4_13[0], stage4_12[0], stage4_11[0], stage4_10[0], stage4_9[0], stage4_8[0], stage4_7[0], stage4_6[0], stage4_5[0], stage4_4[0]})
   );
endmodule
