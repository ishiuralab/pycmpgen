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

module gpc2063_5(input [2:0] src0, input [5:0] src1, input [1:0] src3, output [4:0] dst);
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
    LUT2 #(
        .INIT(4'h8)
    ) lut2_gene3(
        .O(gene[3]),
        .I0(src3[0]),
        .I1(src3[1])
    );
    LUT2 #(
        .INIT(4'h6)
    ) lut2_prop3(
        .O(prop[3]),
        .I0(src3[0]),
        .I1(src3[1])
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

module gpc14060615_9(input [4:0] src0, input [0:0] src1, input [5:0] src2, input [5:0] src4, input [3:0] src6, input [0:0] src7, output [8:0] dst);
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
    LUT4 #(
        .INIT(16'h9600)
    ) lut4_gene6(
        .O(gene[6]),
        .I0(src6[0]),
        .I1(src6[1]),
        .I2(src6[2]),
        .I3(src6[3])
    );
    LUT4 #(
        .INIT(16'h6996)
    ) lut4_prop6(
        .O(prop[6]),
        .I0(src6[0]),
        .I1(src6[1]),
        .I2(src6[2]),
        .I3(src6[3])
    );
    LUT4 #(
        .INIT(16'he800)
    ) lut4_gene7(
        .O(gene[7]),
        .I0(src6[0]),
        .I1(src6[1]),
        .I2(src6[2]),
        .I3(src7[0])
    );
    LUT4 #(
        .INIT(16'h17e8)
    ) lut4_prop7(
        .O(prop[7]),
        .I0(src6[0]),
        .I1(src6[1]),
        .I2(src6[2]),
        .I3(src7[0])
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

module gpc1406_5(input [5:0] src0, input [3:0] src2, input [0:0] src3, output [4:0] dst);
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

module gpc606060606060606060614060433_29(input [2:0] src0, input [2:0] src1, input [3:0] src2, input [5:0] src4, input [3:0] src6, input [0:0] src7, input [5:0] src8, input [5:0] src10, input [5:0] src12, input [5:0] src14, input [5:0] src16, input [5:0] src18, input [5:0] src20, input [5:0] src22, input [5:0] src24, input [5:0] src26, output [28:0] dst);
    wire [27:0] gene;
    wire [27:0] prop;
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
    LUT4 #(
        .INIT(16'h9600)
    ) lut4_gene6(
        .O(gene[6]),
        .I0(src6[0]),
        .I1(src6[1]),
        .I2(src6[2]),
        .I3(src6[3])
    );
    LUT4 #(
        .INIT(16'h6996)
    ) lut4_prop6(
        .O(prop[6]),
        .I0(src6[0]),
        .I1(src6[1]),
        .I2(src6[2]),
        .I3(src6[3])
    );
    LUT4 #(
        .INIT(16'he800)
    ) lut4_gene7(
        .O(gene[7]),
        .I0(src6[0]),
        .I1(src6[1]),
        .I2(src6[2]),
        .I3(src7[0])
    );
    LUT4 #(
        .INIT(16'h17e8)
    ) lut4_prop7(
        .O(prop[7]),
        .I0(src6[0]),
        .I1(src6[1]),
        .I2(src6[2]),
        .I3(src7[0])
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
    assign dst = {carryout[27], out[27], out[26], out[25], out[24], out[23], out[22], out[21], out[20], out[19], out[18], out[17], out[16], out[15], out[14], out[13], out[12], out[11], out[10], out[9], out[8], out[7], out[6], out[5], out[4], out[3], out[2], out[1], out[0]};
endmodule

module gpc2126_5(input [5:0] src0, input [1:0] src1, input [0:0] src2, input [1:0] src3, output [4:0] dst);
    wire [3:0] gene;
    wire [3:0] prop;
    wire [3:0] out;
    wire [3:0] carryout;
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
    LUT6_2 #(
        .INIT(64'h7ee8811781177ee8)
    ) lut6_2_inst1(
        .O5(gene[1]),
        .O6(prop[1]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src0[3]),
        .I3(src0[4]),
        .I4(src1[1]),
        .I5(src1[0])
    );
    LUT6_2 #(
        .INIT(64'h1177ffffee88000)
    ) lut6_2_inst2(
        .O5(gene[2]),
        .O6(prop[2]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src0[3]),
        .I3(src0[4]),
        .I4(src1[1]),
        .I5(src2[0])
    );
    LUT2 #(
        .INIT(4'h8)
    ) lut2_gene3(
        .O(gene[3]),
        .I0(src3[0]),
        .I1(src3[1])
    );
    LUT2 #(
        .INIT(4'h6)
    ) lut2_prop3(
        .O(prop[3]),
        .I0(src3[0]),
        .I1(src3[1])
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

module gpc2134212513151316_17(input [5:0] src0, input [0:0] src1, input [2:0] src2, input [0:0] src3, input [4:0] src4, input [0:0] src5, input [2:0] src6, input [0:0] src7, input [4:0] src8, input [1:0] src9, input [0:0] src10, input [1:0] src11, input [3:0] src12, input [2:0] src13, input [0:0] src14, input [1:0] src15, output [16:0] dst);
    wire [15:0] gene;
    wire [15:0] prop;
    wire [15:0] out;
    wire [15:0] carryout;
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
    LUT5 #(
        .INIT(32'h69960000)
    ) lut5_gene4(
        .O(gene[4]),
        .I0(src4[0]),
        .I1(src4[1]),
        .I2(src4[2]),
        .I3(src4[3]),
        .I4(src4[4])
    );
    LUT5 #(
        .INIT(32'h96696996)
    ) lut5_prop4(
        .O(prop[4]),
        .I0(src4[0]),
        .I1(src4[1]),
        .I2(src4[2]),
        .I3(src4[3]),
        .I4(src4[4])
    );
    LUT5 #(
        .INIT(32'h76608000)
    ) lut5_gene5(
        .O(gene[5]),
        .I0(src4[0]),
        .I1(src4[1]),
        .I2(src4[2]),
        .I3(src4[3]),
        .I4(src5[0])
    );
    LUT5 #(
        .INIT(32'h81177ee8)
    ) lut5_prop5(
        .O(prop[5]),
        .I0(src4[0]),
        .I1(src4[1]),
        .I2(src4[2]),
        .I3(src4[3]),
        .I4(src5[0])
    );
    LUT6_2 #(
        .INIT(64'h7f80807f807f7f80)
    ) lut6_2_inst6(
        .O5(gene[6]),
        .O6(prop[6]),
        .I0(src4[0]),
        .I1(src4[1]),
        .I2(src5[0]),
        .I3(src6[1]),
        .I4(src6[2]),
        .I5(src6[0])
    );
    LUT6_2 #(
        .INIT(64'h7f7fffff808000)
    ) lut6_2_inst7(
        .O5(gene[7]),
        .O6(prop[7]),
        .I0(src4[0]),
        .I1(src4[1]),
        .I2(src5[0]),
        .I3(src6[1]),
        .I4(src6[2]),
        .I5(src7[0])
    );
    LUT5 #(
        .INIT(32'h69960000)
    ) lut5_gene8(
        .O(gene[8]),
        .I0(src8[0]),
        .I1(src8[1]),
        .I2(src8[2]),
        .I3(src8[3]),
        .I4(src8[4])
    );
    LUT5 #(
        .INIT(32'h96696996)
    ) lut5_prop8(
        .O(prop[8]),
        .I0(src8[0]),
        .I1(src8[1]),
        .I2(src8[2]),
        .I3(src8[3]),
        .I4(src8[4])
    );
    LUT6_2 #(
        .INIT(64'h7ee8811781177ee8)
    ) lut6_2_inst9(
        .O5(gene[9]),
        .O6(prop[9]),
        .I0(src8[0]),
        .I1(src8[1]),
        .I2(src8[2]),
        .I3(src8[3]),
        .I4(src9[1]),
        .I5(src9[0])
    );
    LUT6_2 #(
        .INIT(64'h1177ffffee88000)
    ) lut6_2_inst10(
        .O5(gene[10]),
        .O6(prop[10]),
        .I0(src8[0]),
        .I1(src8[1]),
        .I2(src8[2]),
        .I3(src8[3]),
        .I4(src9[1]),
        .I5(src10[0])
    );
    LUT2 #(
        .INIT(4'h8)
    ) lut2_gene11(
        .O(gene[11]),
        .I0(src11[0]),
        .I1(src11[1])
    );
    LUT2 #(
        .INIT(4'h6)
    ) lut2_prop11(
        .O(prop[11]),
        .I0(src11[0]),
        .I1(src11[1])
    );
    LUT4 #(
        .INIT(16'h9600)
    ) lut4_gene12(
        .O(gene[12]),
        .I0(src12[0]),
        .I1(src12[1]),
        .I2(src12[2]),
        .I3(src12[3])
    );
    LUT4 #(
        .INIT(16'h6996)
    ) lut4_prop12(
        .O(prop[12]),
        .I0(src12[0]),
        .I1(src12[1]),
        .I2(src12[2]),
        .I3(src12[3])
    );
    LUT6_2 #(
        .INIT(64'h17e8e817e81717e8)
    ) lut6_2_inst13(
        .O5(gene[13]),
        .O6(prop[13]),
        .I0(src12[0]),
        .I1(src12[1]),
        .I2(src12[2]),
        .I3(src13[1]),
        .I4(src13[2]),
        .I5(src13[0])
    );
    LUT6_2 #(
        .INIT(64'h1717ffffe8e800)
    ) lut6_2_inst14(
        .O5(gene[14]),
        .O6(prop[14]),
        .I0(src12[0]),
        .I1(src12[1]),
        .I2(src12[2]),
        .I3(src13[1]),
        .I4(src13[2]),
        .I5(src14[0])
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
    assign dst = {carryout[15], out[15], out[14], out[13], out[12], out[11], out[10], out[9], out[8], out[7], out[6], out[5], out[4], out[3], out[2], out[1], out[0]};
endmodule

module gpc1316_5(input [5:0] src0, input [0:0] src1, input [2:0] src2, input [0:0] src3, output [4:0] dst);
    wire [3:0] gene;
    wire [3:0] prop;
    wire [3:0] out;
    wire [3:0] carryout;
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

module gpc1243134222141243132421162116_29(input [5:0] src0, input [0:0] src1, input [0:0] src2, input [1:0] src3, input [5:0] src4, input [0:0] src5, input [0:0] src6, input [1:0] src7, input [3:0] src8, input [1:0] src9, input [2:0] src10, input [0:0] src11, input [2:0] src12, input [3:0] src13, input [1:0] src14, input [0:0] src15, input [3:0] src16, input [0:0] src17, input [1:0] src18, input [1:0] src19, input [1:0] src20, input [3:0] src21, input [2:0] src22, input [0:0] src23, input [2:0] src24, input [3:0] src25, input [1:0] src26, input [0:0] src27, output [28:0] dst);
    wire [27:0] gene;
    wire [27:0] prop;
    wire [27:0] out;
    wire [27:0] carryout;
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
    LUT6_2 #(
        .INIT(64'he8818117177e7ee8)
    ) lut6_2_inst1(
        .O5(gene[1]),
        .O6(prop[1]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src0[3]),
        .I3(src0[4]),
        .I4(src0[5]),
        .I5(src1[0])
    );
    LUT6_2 #(
        .INIT(64'h177f7fffe8808000)
    ) lut6_2_inst2(
        .O5(gene[2]),
        .O6(prop[2]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src0[3]),
        .I3(src0[4]),
        .I4(src0[5]),
        .I5(src2[0])
    );
    LUT2 #(
        .INIT(4'h8)
    ) lut2_gene3(
        .O(gene[3]),
        .I0(src3[0]),
        .I1(src3[1])
    );
    LUT2 #(
        .INIT(4'h6)
    ) lut2_prop3(
        .O(prop[3]),
        .I0(src3[0]),
        .I1(src3[1])
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
    LUT6_2 #(
        .INIT(64'he8818117177e7ee8)
    ) lut6_2_inst5(
        .O5(gene[5]),
        .O6(prop[5]),
        .I0(src4[1]),
        .I1(src4[2]),
        .I2(src4[3]),
        .I3(src4[4]),
        .I4(src4[5]),
        .I5(src5[0])
    );
    LUT6_2 #(
        .INIT(64'h177f7fffe8808000)
    ) lut6_2_inst6(
        .O5(gene[6]),
        .O6(prop[6]),
        .I0(src4[1]),
        .I1(src4[2]),
        .I2(src4[3]),
        .I3(src4[4]),
        .I4(src4[5]),
        .I5(src6[0])
    );
    LUT2 #(
        .INIT(4'h8)
    ) lut2_gene7(
        .O(gene[7]),
        .I0(src7[0]),
        .I1(src7[1])
    );
    LUT2 #(
        .INIT(4'h6)
    ) lut2_prop7(
        .O(prop[7]),
        .I0(src7[0]),
        .I1(src7[1])
    );
    LUT4 #(
        .INIT(16'h9600)
    ) lut4_gene8(
        .O(gene[8]),
        .I0(src8[0]),
        .I1(src8[1]),
        .I2(src8[2]),
        .I3(src8[3])
    );
    LUT4 #(
        .INIT(16'h6996)
    ) lut4_prop8(
        .O(prop[8]),
        .I0(src8[0]),
        .I1(src8[1]),
        .I2(src8[2]),
        .I3(src8[3])
    );
    LUT5 #(
        .INIT(32'he8e800)
    ) lut5_gene9(
        .O(gene[9]),
        .I0(src8[0]),
        .I1(src8[1]),
        .I2(src8[2]),
        .I3(src9[0]),
        .I4(src9[1])
    );
    LUT5 #(
        .INIT(32'he81717e8)
    ) lut5_prop9(
        .O(prop[9]),
        .I0(src8[0]),
        .I1(src8[1]),
        .I2(src8[2]),
        .I3(src9[0]),
        .I4(src9[1])
    );
    LUT5 #(
        .INIT(32'h80080880)
    ) lut5_gene10(
        .O(gene[10]),
        .I0(src9[0]),
        .I1(src9[1]),
        .I2(src10[0]),
        .I3(src10[1]),
        .I4(src10[2])
    );
    LUT5 #(
        .INIT(32'h78878778)
    ) lut5_prop10(
        .O(prop[10]),
        .I0(src9[0]),
        .I1(src9[1]),
        .I2(src10[0]),
        .I3(src10[1]),
        .I4(src10[2])
    );
    LUT4 #(
        .INIT(16'he800)
    ) lut4_gene11(
        .O(gene[11]),
        .I0(src10[0]),
        .I1(src10[1]),
        .I2(src10[2]),
        .I3(src11[0])
    );
    LUT4 #(
        .INIT(16'h17e8)
    ) lut4_prop11(
        .O(prop[11]),
        .I0(src10[0]),
        .I1(src10[1]),
        .I2(src10[2]),
        .I3(src11[0])
    );
    LUT3 #(
        .INIT(8'h60)
    ) lut3_gene12(
        .O(gene[12]),
        .I0(src12[0]),
        .I1(src12[1]),
        .I2(src12[2])
    );
    LUT3 #(
        .INIT(8'h96)
    ) lut3_prop12(
        .O(prop[12]),
        .I0(src12[0]),
        .I1(src12[1]),
        .I2(src12[2])
    );
    LUT6_2 #(
        .INIT(64'h966969963cc3c33c)
    ) lut6_2_inst13(
        .O5(gene[13]),
        .O6(prop[13]),
        .I0(src12[1]),
        .I1(src13[0]),
        .I2(src13[1]),
        .I3(src13[2]),
        .I4(src13[3]),
        .I5(src12[0])
    );
    LUT6_2 #(
        .INIT(64'h7ee8811781177ee8)
    ) lut6_2_inst14(
        .O5(gene[14]),
        .O6(prop[14]),
        .I0(src13[0]),
        .I1(src13[1]),
        .I2(src13[2]),
        .I3(src13[3]),
        .I4(src14[1]),
        .I5(src14[0])
    );
    LUT6_2 #(
        .INIT(64'h1177ffffee88000)
    ) lut6_2_inst15(
        .O5(gene[15]),
        .O6(prop[15]),
        .I0(src13[0]),
        .I1(src13[1]),
        .I2(src13[2]),
        .I3(src13[3]),
        .I4(src14[1]),
        .I5(src15[0])
    );
    LUT4 #(
        .INIT(16'h9600)
    ) lut4_gene16(
        .O(gene[16]),
        .I0(src16[0]),
        .I1(src16[1]),
        .I2(src16[2]),
        .I3(src16[3])
    );
    LUT4 #(
        .INIT(16'h6996)
    ) lut4_prop16(
        .O(prop[16]),
        .I0(src16[0]),
        .I1(src16[1]),
        .I2(src16[2]),
        .I3(src16[3])
    );
    LUT4 #(
        .INIT(16'he800)
    ) lut4_gene17(
        .O(gene[17]),
        .I0(src16[0]),
        .I1(src16[1]),
        .I2(src16[2]),
        .I3(src17[0])
    );
    LUT4 #(
        .INIT(16'h17e8)
    ) lut4_prop17(
        .O(prop[17]),
        .I0(src16[0]),
        .I1(src16[1]),
        .I2(src16[2]),
        .I3(src17[0])
    );
    LUT2 #(
        .INIT(4'h8)
    ) lut2_gene18(
        .O(gene[18]),
        .I0(src18[0]),
        .I1(src18[1])
    );
    LUT2 #(
        .INIT(4'h6)
    ) lut2_prop18(
        .O(prop[18]),
        .I0(src18[0]),
        .I1(src18[1])
    );
    LUT2 #(
        .INIT(4'h8)
    ) lut2_gene19(
        .O(gene[19]),
        .I0(src19[0]),
        .I1(src19[1])
    );
    LUT2 #(
        .INIT(4'h6)
    ) lut2_prop19(
        .O(prop[19]),
        .I0(src19[0]),
        .I1(src19[1])
    );
    LUT2 #(
        .INIT(4'h8)
    ) lut2_gene20(
        .O(gene[20]),
        .I0(src20[0]),
        .I1(src20[1])
    );
    LUT2 #(
        .INIT(4'h6)
    ) lut2_prop20(
        .O(prop[20]),
        .I0(src20[0]),
        .I1(src20[1])
    );
    LUT4 #(
        .INIT(16'h9600)
    ) lut4_gene21(
        .O(gene[21]),
        .I0(src21[0]),
        .I1(src21[1]),
        .I2(src21[2]),
        .I3(src21[3])
    );
    LUT4 #(
        .INIT(16'h6996)
    ) lut4_prop21(
        .O(prop[21]),
        .I0(src21[0]),
        .I1(src21[1]),
        .I2(src21[2]),
        .I3(src21[3])
    );
    LUT6_2 #(
        .INIT(64'h17e8e817e81717e8)
    ) lut6_2_inst22(
        .O5(gene[22]),
        .O6(prop[22]),
        .I0(src21[0]),
        .I1(src21[1]),
        .I2(src21[2]),
        .I3(src22[1]),
        .I4(src22[2]),
        .I5(src22[0])
    );
    LUT6_2 #(
        .INIT(64'h1717ffffe8e800)
    ) lut6_2_inst23(
        .O5(gene[23]),
        .O6(prop[23]),
        .I0(src21[0]),
        .I1(src21[1]),
        .I2(src21[2]),
        .I3(src22[1]),
        .I4(src22[2]),
        .I5(src23[0])
    );
    LUT3 #(
        .INIT(8'h60)
    ) lut3_gene24(
        .O(gene[24]),
        .I0(src24[0]),
        .I1(src24[1]),
        .I2(src24[2])
    );
    LUT3 #(
        .INIT(8'h96)
    ) lut3_prop24(
        .O(prop[24]),
        .I0(src24[0]),
        .I1(src24[1]),
        .I2(src24[2])
    );
    LUT6_2 #(
        .INIT(64'h966969963cc3c33c)
    ) lut6_2_inst25(
        .O5(gene[25]),
        .O6(prop[25]),
        .I0(src24[1]),
        .I1(src25[0]),
        .I2(src25[1]),
        .I3(src25[2]),
        .I4(src25[3]),
        .I5(src24[0])
    );
    LUT6_2 #(
        .INIT(64'h7ee8811781177ee8)
    ) lut6_2_inst26(
        .O5(gene[26]),
        .O6(prop[26]),
        .I0(src25[0]),
        .I1(src25[1]),
        .I2(src25[2]),
        .I3(src25[3]),
        .I4(src26[1]),
        .I5(src26[0])
    );
    LUT6_2 #(
        .INIT(64'h1177ffffee88000)
    ) lut6_2_inst27(
        .O5(gene[27]),
        .O6(prop[27]),
        .I0(src25[0]),
        .I1(src25[1]),
        .I2(src25[2]),
        .I3(src25[3]),
        .I4(src26[1]),
        .I5(src27[0])
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
    assign dst = {carryout[27], out[27], out[26], out[25], out[24], out[23], out[22], out[21], out[20], out[19], out[18], out[17], out[16], out[15], out[14], out[13], out[12], out[11], out[10], out[9], out[8], out[7], out[6], out[5], out[4], out[3], out[2], out[1], out[0]};
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
      input [17:0] src19,
      input [16:0] src20,
      input [15:0] src21,
      input [14:0] src22,
      input [13:0] src23,
      input [12:0] src24,
      input [11:0] src25,
      input [10:0] src26,
      input [9:0] src27,
      input [8:0] src28,
      input [7:0] src29,
      input [6:0] src30,
      input [5:0] src31,
      input [4:0] src32,
      input [3:0] src33,
      input [2:0] src34,
      input [1:0] src35,
      input [0:0] src36,
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
      output [0:0] dst37);

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
   wire [17:0] stage0_19;
   wire [16:0] stage0_20;
   wire [15:0] stage0_21;
   wire [14:0] stage0_22;
   wire [13:0] stage0_23;
   wire [12:0] stage0_24;
   wire [11:0] stage0_25;
   wire [10:0] stage0_26;
   wire [9:0] stage0_27;
   wire [8:0] stage0_28;
   wire [7:0] stage0_29;
   wire [6:0] stage0_30;
   wire [5:0] stage0_31;
   wire [4:0] stage0_32;
   wire [3:0] stage0_33;
   wire [2:0] stage0_34;
   wire [1:0] stage0_35;
   wire [0:0] stage0_36;
   wire [0:0] stage1_0;
   wire [1:0] stage1_1;
   wire [2:0] stage1_2;
   wire [3:0] stage1_3;
   wire [4:0] stage1_4;
   wire [5:0] stage1_5;
   wire [1:0] stage1_6;
   wire [3:0] stage1_7;
   wire [4:0] stage1_8;
   wire [5:0] stage1_9;
   wire [6:0] stage1_10;
   wire [5:0] stage1_11;
   wire [3:0] stage1_12;
   wire [6:0] stage1_13;
   wire [9:0] stage1_14;
   wire [7:0] stage1_15;
   wire [5:0] stage1_16;
   wire [8:0] stage1_17;
   wire [5:0] stage1_18;
   wire [10:0] stage1_19;
   wire [4:0] stage1_20;
   wire [8:0] stage1_21;
   wire [5:0] stage1_22;
   wire [6:0] stage1_23;
   wire [5:0] stage1_24;
   wire [9:0] stage1_25;
   wire [7:0] stage1_26;
   wire [6:0] stage1_27;
   wire [4:0] stage1_28;
   wire [3:0] stage1_29;
   wire [2:0] stage1_30;
   wire [2:0] stage1_31;
   wire [6:0] stage1_32;
   wire [0:0] stage1_33;
   wire [2:0] stage1_34;
   wire [2:0] stage1_35;
   wire [0:0] stage1_36;
   wire [0:0] stage2_0;
   wire [0:0] stage2_1;
   wire [0:0] stage2_2;
   wire [0:0] stage2_3;
   wire [5:0] stage2_4;
   wire [0:0] stage2_5;
   wire [2:0] stage2_6;
   wire [0:0] stage2_7;
   wire [4:0] stage2_8;
   wire [0:0] stage2_9;
   wire [7:0] stage2_10;
   wire [0:0] stage2_11;
   wire [4:0] stage2_12;
   wire [1:0] stage2_13;
   wire [5:0] stage2_14;
   wire [1:0] stage2_15;
   wire [2:0] stage2_16;
   wire [2:0] stage2_17;
   wire [2:0] stage2_18;
   wire [6:0] stage2_19;
   wire [1:0] stage2_20;
   wire [4:0] stage2_21;
   wire [1:0] stage2_22;
   wire [2:0] stage2_23;
   wire [1:0] stage2_24;
   wire [5:0] stage2_25;
   wire [3:0] stage2_26;
   wire [2:0] stage2_27;
   wire [2:0] stage2_28;
   wire [4:0] stage2_29;
   wire [1:0] stage2_30;
   wire [1:0] stage2_31;
   wire [1:0] stage2_32;
   wire [0:0] stage2_33;
   wire [2:0] stage2_34;
   wire [3:0] stage2_35;
   wire [0:0] stage2_36;
   wire [0:0] stage3_0;
   wire [0:0] stage3_1;
   wire [0:0] stage3_2;
   wire [0:0] stage3_3;
   wire [0:0] stage3_4;
   wire [0:0] stage3_5;
   wire [0:0] stage3_6;
   wire [0:0] stage3_7;
   wire [0:0] stage3_8;
   wire [0:0] stage3_9;
   wire [5:0] stage3_10;
   wire [0:0] stage3_11;
   wire [0:0] stage3_12;
   wire [0:0] stage3_13;
   wire [5:0] stage3_14;
   wire [0:0] stage3_15;
   wire [0:0] stage3_16;
   wire [0:0] stage3_17;
   wire [2:0] stage3_18;
   wire [1:0] stage3_19;
   wire [2:0] stage3_20;
   wire [0:0] stage3_21;
   wire [2:0] stage3_22;
   wire [3:0] stage3_23;
   wire [1:0] stage3_24;
   wire [0:0] stage3_25;
   wire [3:0] stage3_26;
   wire [0:0] stage3_27;
   wire [1:0] stage3_28;
   wire [1:0] stage3_29;
   wire [1:0] stage3_30;
   wire [1:0] stage3_31;
   wire [2:0] stage3_32;
   wire [0:0] stage3_33;
   wire [2:0] stage3_34;
   wire [3:0] stage3_35;
   wire [0:0] stage3_36;
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
   assign stage1_0[0:0] = stage0_0[0:0];
   assign stage1_1[1:0] = stage0_1[1:0];
   assign stage1_2[2:0] = stage0_2[2:0];
   assign stage1_3[3:0] = stage0_3[3:0];
   assign stage1_4[4:0] = stage0_4[4:0];
   assign stage1_5[5:0] = stage0_5[5:0];
   assign stage1_6[1:1] = stage0_6[6:6];
   assign stage1_7[3:2] = stage0_7[7:6];
   assign stage1_8[4:2] = stage0_8[8:6];
   assign stage1_9[5:2] = stage0_9[9:6];
   assign stage1_10[6:2] = stage0_10[10:6];
   assign stage1_11[5:3] = stage0_11[11:9];
   assign stage1_12[3:3] = stage0_12[12:12];
   assign stage1_13[6:4] = stage0_13[13:11];
   assign stage1_14[9:4] = stage0_14[14:9];
   assign stage1_15[7:4] = stage0_15[15:12];
   assign stage1_16[5:5] = stage0_16[16:16];
   assign stage1_17[8:5] = stage0_17[17:14];
   assign stage1_18[5:5] = stage0_18[18:18];
   assign stage1_19[10:5] = stage0_19[17:12];
   assign stage1_21[8:5] = stage0_21[15:12];
   assign stage1_22[5:5] = stage0_22[14:14];
   assign stage1_23[6:6] = stage0_23[13:13];
   assign stage1_25[9:4] = stage0_25[11:6];
   assign stage1_26[7:3] = stage0_26[10:6];
   assign stage1_27[6:3] = stage0_27[9:6];
   assign stage1_28[4:2] = stage0_28[8:6];
   assign stage1_29[3:2] = stage0_29[7:6];
   assign stage1_30[2:2] = stage0_30[6:6];
   assign stage1_32[6:2] = stage0_32[4:0];
   assign stage1_34[2:1] = stage0_34[2:1];
   assign stage1_35[2:1] = stage0_35[1:0];
   assign stage1_36[0:0] = stage0_36[0:0];
   assign stage2_0[0:0] = stage1_0[0:0];
   assign stage2_4[5:1] = stage1_4[4:0];
   assign stage2_6[2:1] = stage1_6[1:0];
   assign stage2_8[4:1] = stage1_8[4:1];
   assign stage2_10[7:1] = stage1_10[6:0];
   assign stage2_12[4:1] = stage1_12[3:0];
   assign stage2_13[1:1] = stage1_13[6:6];
   assign stage2_14[5:2] = stage1_14[9:6];
   assign stage2_19[6:2] = stage1_19[10:6];
   assign stage2_21[4:2] = stage1_21[8:6];
   assign stage2_23[2:2] = stage1_23[6:6];
   assign stage2_25[5:2] = stage1_25[9:6];
   assign stage2_26[3:2] = stage1_26[7:6];
   assign stage2_27[2:2] = stage1_27[6:6];
   assign stage2_29[4:2] = stage1_29[3:1];
   assign stage2_30[1:1] = stage1_30[2:2];
   assign stage2_32[1:1] = stage1_32[6:6];
   assign stage2_34[2:1] = stage1_34[2:1];
   assign stage2_35[3:1] = stage1_35[2:0];
   assign stage2_36[0:0] = stage1_36[0:0];
   assign stage3_0[0:0] = stage2_0[0:0];
   assign stage3_1[0:0] = stage2_1[0:0];
   assign stage3_2[0:0] = stage2_2[0:0];
   assign stage3_3[0:0] = stage2_3[0:0];
   assign stage3_10[5:1] = stage2_10[7:3];
   assign stage3_14[5:1] = stage2_14[5:1];
   assign stage3_18[2:1] = stage2_18[2:1];
   assign stage3_20[2:2] = stage2_20[1:1];
   assign stage3_22[2:1] = stage2_22[1:0];
   assign stage3_23[3:1] = stage2_23[2:0];
   assign stage3_24[1:0] = stage2_24[1:0];
   assign stage3_26[3:1] = stage2_26[3:1];
   assign stage3_30[1:1] = stage2_30[1:1];
   assign stage3_31[1:1] = stage2_31[1:1];
   assign stage3_32[2:1] = stage2_32[1:0];
   assign stage3_33[0:0] = stage2_33[0:0];
   assign stage3_34[2:0] = stage2_34[2:0];
   assign stage3_35[3:0] = stage2_35[3:0];
   assign stage3_36[0:0] = stage2_36[0:0];
   assign stage4_0[0:0] = stage3_0[0:0];
   assign stage4_1[0:0] = stage3_1[0:0];
   assign stage4_2[0:0] = stage3_2[0:0];
   assign stage4_3[0:0] = stage3_3[0:0];
   assign stage4_4[0:0] = stage3_4[0:0];
   assign stage4_5[0:0] = stage3_5[0:0];
   assign stage4_6[0:0] = stage3_6[0:0];
   assign stage4_7[0:0] = stage3_7[0:0];
   assign stage4_8[0:0] = stage3_8[0:0];
   assign stage4_9[0:0] = stage3_9[0:0];

   gpc6060606060606060606_21 chain0_0(
         .src0(stage0_6[5:0]),
         .src2(stage0_8[5:0]),
         .src4(stage0_10[5:0]),
         .src6(stage0_12[5:0]),
         .src8(stage0_14[5:0]),
         .src10(stage0_16[5:0]),
         .src12(stage0_18[5:0]),
         .src14(stage0_20[5:0]),
         .src16(stage0_22[5:0]),
         .src18(stage0_24[5:0]),
         .dst({stage1_26[0], stage1_25[0], stage1_24[0], stage1_23[0], stage1_22[0], stage1_21[0], stage1_20[0], stage1_19[0], stage1_18[0], stage1_17[0], stage1_16[0], stage1_15[0], stage1_14[0], stage1_13[0], stage1_12[0], stage1_11[0], stage1_10[0], stage1_9[0], stage1_8[0], stage1_7[0], stage1_6[0]})
   );
   gpc606060606060606_17 chain0_1(
         .src0(stage0_7[5:0]),
         .src2(stage0_9[5:0]),
         .src4(stage0_11[5:0]),
         .src6(stage0_13[5:0]),
         .src8(stage0_15[5:0]),
         .src10(stage0_17[5:0]),
         .src12(stage0_19[5:0]),
         .src14(stage0_21[5:0]),
         .dst({stage1_23[1], stage1_22[1], stage1_21[1], stage1_20[1], stage1_19[1], stage1_18[1], stage1_17[1], stage1_16[1], stage1_15[1], stage1_14[1], stage1_13[1], stage1_12[1], stage1_11[1], stage1_10[1], stage1_9[1], stage1_8[1], stage1_7[1]})
   );
   gpc2063_5 chain0_2(
         .src0(stage0_11[8:6]),
         .src1(stage0_12[11:6]),
         .src3(stage0_14[7:6]),
         .dst({stage1_15[2], stage1_14[2], stage1_13[2], stage1_12[2], stage1_11[2]})
   );
   gpc60606060615_13 chain0_3(
         .src0(stage0_13[10:6]),
         .src1(stage0_14[8:8]),
         .src2(stage0_15[11:6]),
         .src4(stage0_17[11:6]),
         .src6(stage0_19[11:6]),
         .src8(stage0_21[11:6]),
         .src10(stage0_23[5:0]),
         .dst({stage1_25[1], stage1_24[1], stage1_23[2], stage1_22[2], stage1_21[2], stage1_20[2], stage1_19[2], stage1_18[2], stage1_17[2], stage1_16[2], stage1_15[3], stage1_14[3], stage1_13[3]})
   );
   gpc14060615_9 chain0_4(
         .src0(stage0_16[10:6]),
         .src1(stage0_17[12:12]),
         .src2(stage0_18[11:6]),
         .src4(stage0_20[11:6]),
         .src6(stage0_22[9:6]),
         .src7(stage0_23[6:6]),
         .dst({stage1_24[2], stage1_23[3], stage1_22[3], stage1_21[3], stage1_20[3], stage1_19[3], stage1_18[3], stage1_17[3], stage1_16[3]})
   );
   gpc14060615_9 chain0_5(
         .src0(stage0_16[15:11]),
         .src1(stage0_17[13:13]),
         .src2(stage0_18[17:12]),
         .src4({stage0_20[16:12], 1'h0}),
         .src6(stage0_22[13:10]),
         .src7(stage0_23[7:7]),
         .dst({stage1_24[3], stage1_23[4], stage1_22[4], stage1_21[4], stage1_20[4], stage1_19[4], stage1_18[4], stage1_17[4], stage1_16[4]})
   );
   gpc615_5 chain0_6(
         .src0(stage0_23[12:8]),
         .src1(stage0_24[6:6]),
         .src2(stage0_25[5:0]),
         .dst({stage1_27[0], stage1_26[1], stage1_25[2], stage1_24[4], stage1_23[5]})
   );
   gpc6060606_9 chain0_7(
         .src0(stage0_24[12:7]),
         .src2(stage0_26[5:0]),
         .src4(stage0_28[5:0]),
         .src6(stage0_30[5:0]),
         .dst({stage1_32[0], stage1_31[0], stage1_30[0], stage1_29[0], stage1_28[0], stage1_27[1], stage1_26[2], stage1_25[3], stage1_24[5]})
   );
   gpc606_5 chain0_8(
         .src0(stage0_27[5:0]),
         .src2(stage0_29[5:0]),
         .dst({stage1_31[1], stage1_30[1], stage1_29[1], stage1_28[1], stage1_27[2]})
   );
   gpc1406_5 chain0_9(
         .src0(stage0_31[5:0]),
         .src2(stage0_33[3:0]),
         .src3(stage0_34[0:0]),
         .dst({stage1_35[0], stage1_34[0], stage1_33[0], stage1_32[1], stage1_31[2]})
   );
   gpc606060606060606060614060433_29 chain1_0(
         .src0({stage1_1[1:0], 1'h0}),
         .src1(stage1_2[2:0]),
         .src2(stage1_3[3:0]),
         .src4(stage1_5[5:0]),
         .src6(stage1_7[3:0]),
         .src7(stage1_8[0:0]),
         .src8(stage1_9[5:0]),
         .src10(stage1_11[5:0]),
         .src12(stage1_13[5:0]),
         .src14(stage1_15[5:0]),
         .src16(stage1_17[5:0]),
         .src18(stage1_19[5:0]),
         .src20(stage1_21[5:0]),
         .src22(stage1_23[5:0]),
         .src24(stage1_25[5:0]),
         .src26(stage1_27[5:0]),
         .dst({stage2_29[0], stage2_28[0], stage2_27[0], stage2_26[0], stage2_25[0], stage2_24[0], stage2_23[0], stage2_22[0], stage2_21[0], stage2_20[0], stage2_19[0], stage2_18[0], stage2_17[0], stage2_16[0], stage2_15[0], stage2_14[0], stage2_13[0], stage2_12[0], stage2_11[0], stage2_10[0], stage2_9[0], stage2_8[0], stage2_7[0], stage2_6[0], stage2_5[0], stage2_4[0], stage2_3[0], stage2_2[0], stage2_1[0]})
   );
   gpc2126_5 chain1_1(
         .src0(stage1_14[5:0]),
         .src1(stage1_15[7:6]),
         .src2(stage1_16[0:0]),
         .src3(stage1_17[7:6]),
         .dst({stage2_18[1], stage2_17[1], stage2_16[1], stage2_15[1], stage2_14[1]})
   );
   gpc60606060615_13 chain1_2(
         .src0(stage1_16[5:1]),
         .src1(stage1_17[8:8]),
         .src2(stage1_18[5:0]),
         .src4({stage1_20[4:0], 1'h0}),
         .src6(stage1_22[5:0]),
         .src8(stage1_24[5:0]),
         .src10(stage1_26[5:0]),
         .dst({stage2_28[1], stage2_27[1], stage2_26[1], stage2_25[1], stage2_24[1], stage2_23[1], stage2_22[1], stage2_21[1], stage2_20[1], stage2_19[1], stage2_18[2], stage2_17[2], stage2_16[2]})
   );
   gpc215_4 chain1_3(
         .src0(stage1_28[4:0]),
         .src1(stage1_29[0:0]),
         .src2(stage1_30[1:0]),
         .dst({stage2_31[0], stage2_30[0], stage2_29[1], stage2_28[2]})
   );
   gpc1163_5 chain1_4(
         .src0(stage1_31[2:0]),
         .src1(stage1_32[5:0]),
         .src2(stage1_33[0:0]),
         .src3(stage1_34[0:0]),
         .dst({stage2_35[0], stage2_34[0], stage2_33[0], stage2_32[0], stage2_31[1]})
   );
   gpc2134212513151316_17 chain2_0(
         .src0(stage2_4[5:0]),
         .src1(stage2_5[0:0]),
         .src2(stage2_6[2:0]),
         .src3(stage2_7[0:0]),
         .src4(stage2_8[4:0]),
         .src5(stage2_9[0:0]),
         .src6(stage2_10[2:0]),
         .src7(stage2_11[0:0]),
         .src8(stage2_12[4:0]),
         .src9(stage2_13[1:0]),
         .src10(stage2_14[0:0]),
         .src11(stage2_15[1:0]),
         .src12({stage2_16[2:0], 1'h0}),
         .src13(stage2_17[2:0]),
         .src14(stage2_18[0:0]),
         .src15(stage2_19[1:0]),
         .dst({stage3_20[0], stage3_19[0], stage3_18[0], stage3_17[0], stage3_16[0], stage3_15[0], stage3_14[0], stage3_13[0], stage3_12[0], stage3_11[0], stage3_10[0], stage3_9[0], stage3_8[0], stage3_7[0], stage3_6[0], stage3_5[0], stage3_4[0]})
   );
   gpc615_5 chain2_1(
         .src0(stage2_19[6:2]),
         .src1(stage2_20[0:0]),
         .src2({stage2_21[4:0], 1'h0}),
         .dst({stage3_23[0], stage3_22[0], stage3_21[0], stage3_20[1], stage3_19[1]})
   );
   gpc1316_5 chain2_2(
         .src0(stage2_25[5:0]),
         .src1(stage2_26[0:0]),
         .src2(stage2_27[2:0]),
         .src3(stage2_28[0:0]),
         .dst({stage3_29[0], stage3_28[0], stage3_27[0], stage3_26[0], stage3_25[0]})
   );
   gpc1163_5 chain2_3(
         .src0({stage2_28[2:1], 1'h0}),
         .src1({stage2_29[4:0], 1'h0}),
         .src2(stage2_30[0:0]),
         .src3(stage2_31[0:0]),
         .dst({stage3_32[0], stage3_31[0], stage3_30[0], stage3_29[1], stage3_28[1]})
   );
   wire dummy4_38_0;
   gpc1243134222141243132421162116_29 chain3_0(
         .src0(stage3_10[5:0]),
         .src1(stage3_11[0:0]),
         .src2(stage3_12[0:0]),
         .src3({stage3_13[0:0], 1'h0}),
         .src4(stage3_14[5:0]),
         .src5(stage3_15[0:0]),
         .src6(stage3_16[0:0]),
         .src7({stage3_17[0:0], 1'h0}),
         .src8({stage3_18[2:0], 1'h0}),
         .src9(stage3_19[1:0]),
         .src10(stage3_20[2:0]),
         .src11(stage3_21[0:0]),
         .src12(stage3_22[2:0]),
         .src13(stage3_23[3:0]),
         .src14(stage3_24[1:0]),
         .src15(stage3_25[0:0]),
         .src16(stage3_26[3:0]),
         .src17(stage3_27[0:0]),
         .src18(stage3_28[1:0]),
         .src19(stage3_29[1:0]),
         .src20(stage3_30[1:0]),
         .src21({stage3_31[1:0], 2'h0}),
         .src22(stage3_32[2:0]),
         .src23(stage3_33[0:0]),
         .src24(stage3_34[2:0]),
         .src25(stage3_35[3:0]),
         .src26({stage3_36[0:0], 1'h0}),
         .src27(1'h0),
         .dst({dummy4_38_0, stage4_37[0], stage4_36[0], stage4_35[0], stage4_34[0], stage4_33[0], stage4_32[0], stage4_31[0], stage4_30[0], stage4_29[0], stage4_28[0], stage4_27[0], stage4_26[0], stage4_25[0], stage4_24[0], stage4_23[0], stage4_22[0], stage4_21[0], stage4_20[0], stage4_19[0], stage4_18[0], stage4_17[0], stage4_16[0], stage4_15[0], stage4_14[0], stage4_13[0], stage4_12[0], stage4_11[0], stage4_10[0]})
   );
endmodule
