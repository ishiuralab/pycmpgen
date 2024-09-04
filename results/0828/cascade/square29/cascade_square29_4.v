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

module gpc606060606060606060606060606_29(input [5:0] src0, input [5:0] src2, input [5:0] src4, input [5:0] src6, input [5:0] src8, input [5:0] src10, input [5:0] src12, input [5:0] src14, input [5:0] src16, input [5:0] src18, input [5:0] src20, input [5:0] src22, input [5:0] src24, input [5:0] src26, output [28:0] dst);
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

module gpc606060606060606060606060615_29(input [4:0] src0, input [0:0] src1, input [5:0] src2, input [5:0] src4, input [5:0] src6, input [5:0] src8, input [5:0] src10, input [5:0] src12, input [5:0] src14, input [5:0] src16, input [5:0] src18, input [5:0] src20, input [5:0] src22, input [5:0] src24, input [5:0] src26, output [28:0] dst);
    wire [27:0] gene;
    wire [27:0] prop;
    wire [27:0] out;
    wire [27:0] carryout;
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

module gpc606060606060615_17(input [4:0] src0, input [0:0] src1, input [5:0] src2, input [5:0] src4, input [5:0] src6, input [5:0] src8, input [5:0] src10, input [5:0] src12, input [5:0] src14, output [16:0] dst);
    wire [15:0] gene;
    wire [15:0] prop;
    wire [15:0] out;
    wire [15:0] carryout;
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

module gpc61412506060606060606060606_28(input [5:0] src0, input [5:0] src2, input [5:0] src4, input [5:0] src6, input [5:0] src8, input [5:0] src10, input [5:0] src12, input [5:0] src14, input [5:0] src16, input [5:0] src18, input [4:0] src20, input [1:0] src21, input [0:0] src22, input [3:0] src23, input [0:0] src24, input [5:0] src25, output [27:0] dst);
    wire [26:0] gene;
    wire [26:0] prop;
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
    LUT5 #(
        .INIT(32'h69960000)
    ) lut5_gene20(
        .O(gene[20]),
        .I0(src20[0]),
        .I1(src20[1]),
        .I2(src20[2]),
        .I3(src20[3]),
        .I4(src20[4])
    );
    LUT5 #(
        .INIT(32'h96696996)
    ) lut5_prop20(
        .O(prop[20]),
        .I0(src20[0]),
        .I1(src20[1]),
        .I2(src20[2]),
        .I3(src20[3]),
        .I4(src20[4])
    );
    LUT6_2 #(
        .INIT(64'h7ee8811781177ee8)
    ) lut6_2_inst21(
        .O5(gene[21]),
        .O6(prop[21]),
        .I0(src20[0]),
        .I1(src20[1]),
        .I2(src20[2]),
        .I3(src20[3]),
        .I4(src21[1]),
        .I5(src21[0])
    );
    LUT6_2 #(
        .INIT(64'h1177ffffee88000)
    ) lut6_2_inst22(
        .O5(gene[22]),
        .O6(prop[22]),
        .I0(src20[0]),
        .I1(src20[1]),
        .I2(src20[2]),
        .I3(src20[3]),
        .I4(src21[1]),
        .I5(src22[0])
    );
    LUT4 #(
        .INIT(16'h9600)
    ) lut4_gene23(
        .O(gene[23]),
        .I0(src23[0]),
        .I1(src23[1]),
        .I2(src23[2]),
        .I3(src23[3])
    );
    LUT4 #(
        .INIT(16'h6996)
    ) lut4_prop23(
        .O(prop[23]),
        .I0(src23[0]),
        .I1(src23[1]),
        .I2(src23[2]),
        .I3(src23[3])
    );
    LUT4 #(
        .INIT(16'he800)
    ) lut4_gene24(
        .O(gene[24]),
        .I0(src23[0]),
        .I1(src23[1]),
        .I2(src23[2]),
        .I3(src24[0])
    );
    LUT4 #(
        .INIT(16'h17e8)
    ) lut4_prop24(
        .O(prop[24]),
        .I0(src23[0]),
        .I1(src23[1]),
        .I2(src23[2]),
        .I3(src24[0])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst25(
        .O5(gene[25]),
        .O6(prop[25]),
        .I0(src25[1]),
        .I1(src25[2]),
        .I2(src25[3]),
        .I3(src25[4]),
        .I4(src25[5]),
        .I5(src25[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene26(
        .O(gene[26]),
        .I0(src25[1]),
        .I1(src25[2]),
        .I2(src25[3]),
        .I3(src25[4]),
        .I4(src25[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop26(
        .O(prop[26]),
        .I0(src25[1]),
        .I1(src25[2]),
        .I2(src25[3]),
        .I3(src25[4]),
        .I4(src25[5])
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
        .DI({1'h0, gene[26:24]}),
        .S({1'h0, prop[26:24]})
    );
    assign dst = {carryout[26], out[26], out[25], out[24], out[23], out[22], out[21], out[20], out[19], out[18], out[17], out[16], out[15], out[14], out[13], out[12], out[11], out[10], out[9], out[8], out[7], out[6], out[5], out[4], out[3], out[2], out[1], out[0]};
endmodule

module gpc60606060606060606060606_25(input [5:0] src0, input [5:0] src2, input [5:0] src4, input [5:0] src6, input [5:0] src8, input [5:0] src10, input [5:0] src12, input [5:0] src14, input [5:0] src16, input [5:0] src18, input [5:0] src20, input [5:0] src22, output [24:0] dst);
    wire [23:0] gene;
    wire [23:0] prop;
    wire [23:0] out;
    wire [23:0] carryout;
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
    assign dst = {carryout[23], out[23], out[22], out[21], out[20], out[19], out[18], out[17], out[16], out[15], out[14], out[13], out[12], out[11], out[10], out[9], out[8], out[7], out[6], out[5], out[4], out[3], out[2], out[1], out[0]};
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

module gpc1250606_8(input [5:0] src0, input [5:0] src2, input [4:0] src4, input [1:0] src5, input [0:0] src6, output [7:0] dst);
    wire [6:0] gene;
    wire [6:0] prop;
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
    LUT6_2 #(
        .INIT(64'h7ee8811781177ee8)
    ) lut6_2_inst5(
        .O5(gene[5]),
        .O6(prop[5]),
        .I0(src4[0]),
        .I1(src4[1]),
        .I2(src4[2]),
        .I3(src4[3]),
        .I4(src5[1]),
        .I5(src5[0])
    );
    LUT6_2 #(
        .INIT(64'h1177ffffee88000)
    ) lut6_2_inst6(
        .O5(gene[6]),
        .O6(prop[6]),
        .I0(src4[0]),
        .I1(src4[1]),
        .I2(src4[2]),
        .I3(src4[3]),
        .I4(src5[1]),
        .I5(src6[0])
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
        .DI({1'h0, gene[6:4]}),
        .S({1'h0, prop[6:4]})
    );
    assign dst = {carryout[6], out[6], out[5], out[4], out[3], out[2], out[1], out[0]};
endmodule

module gpc6061343_9(input [2:0] src0, input [3:0] src1, input [2:0] src2, input [0:0] src3, input [5:0] src4, input [5:0] src6, output [8:0] dst);
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
    LUT6_2 #(
        .INIT(64'h17e8e817e81717e8)
    ) lut6_2_inst2(
        .O5(gene[2]),
        .O6(prop[2]),
        .I0(src1[0]),
        .I1(src1[1]),
        .I2(src1[2]),
        .I3(src2[1]),
        .I4(src2[2]),
        .I5(src2[0])
    );
    LUT6_2 #(
        .INIT(64'h1717ffffe8e800)
    ) lut6_2_inst3(
        .O5(gene[3]),
        .O6(prop[3]),
        .I0(src1[0]),
        .I1(src1[1]),
        .I2(src1[2]),
        .I3(src2[1]),
        .I4(src2[2]),
        .I5(src3[0])
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

module gpc1334_5(input [3:0] src0, input [2:0] src1, input [2:0] src2, input [0:0] src3, output [4:0] dst);
    wire [3:0] gene;
    wire [3:0] prop;
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
    LUT5 #(
        .INIT(32'h80080880)
    ) lut5_gene1(
        .O(gene[1]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src1[0]),
        .I3(src1[1]),
        .I4(src1[2])
    );
    LUT5 #(
        .INIT(32'h78878778)
    ) lut5_prop1(
        .O(prop[1]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src1[0]),
        .I3(src1[1]),
        .I4(src1[2])
    );
    LUT6_2 #(
        .INIT(64'h17e8e817e81717e8)
    ) lut6_2_inst2(
        .O5(gene[2]),
        .O6(prop[2]),
        .I0(src1[0]),
        .I1(src1[1]),
        .I2(src1[2]),
        .I3(src2[1]),
        .I4(src2[2]),
        .I5(src2[0])
    );
    LUT6_2 #(
        .INIT(64'h1717ffffe8e800)
    ) lut6_2_inst3(
        .O5(gene[3]),
        .O6(prop[3]),
        .I0(src1[0]),
        .I1(src1[1]),
        .I2(src1[2]),
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

module gpc6_3(input [5:0] src0, output [2:0] dst);
    wire [1:0] gene;
    wire [1:0] prop;
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
    CARRY4 carry4_inst0(
        .CO(carryout[3:0]),
        .O(out[3:0]),
        .CYINIT(1'h0),
        .CI(1'h0),
        .DI({2'h0, gene[1:0]}),
        .S({2'h0, prop[1:0]})
    );
    assign dst = {carryout[1], out[1], out[0]};
endmodule

module gpc6060606060606060425_21(input [4:0] src0, input [1:0] src1, input [3:0] src2, input [5:0] src4, input [5:0] src6, input [5:0] src8, input [5:0] src10, input [5:0] src12, input [5:0] src14, input [5:0] src16, input [5:0] src18, output [20:0] dst);
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
    LUT5 #(
        .INIT(32'he8e800)
    ) lut5_gene1(
        .O(gene[1]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src0[3]),
        .I3(src1[0]),
        .I4(src1[1])
    );
    LUT5 #(
        .INIT(32'he81717e8)
    ) lut5_prop1(
        .O(prop[1]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src0[3]),
        .I3(src1[0]),
        .I4(src1[1])
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

module gpc134042404240606060606060615_28(input [4:0] src0, input [0:0] src1, input [5:0] src2, input [5:0] src4, input [5:0] src6, input [5:0] src8, input [5:0] src10, input [5:0] src12, input [5:0] src14, input [3:0] src16, input [1:0] src17, input [3:0] src18, input [3:0] src20, input [1:0] src21, input [3:0] src22, input [3:0] src24, input [2:0] src25, input [0:0] src26, output [27:0] dst);
    wire [26:0] gene;
    wire [26:0] prop;
    wire [27:0] out;
    wire [27:0] carryout;
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
    LUT5 #(
        .INIT(32'he8e800)
    ) lut5_gene17(
        .O(gene[17]),
        .I0(src16[0]),
        .I1(src16[1]),
        .I2(src16[2]),
        .I3(src17[0]),
        .I4(src17[1])
    );
    LUT5 #(
        .INIT(32'he81717e8)
    ) lut5_prop17(
        .O(prop[17]),
        .I0(src16[0]),
        .I1(src16[1]),
        .I2(src16[2]),
        .I3(src17[0]),
        .I4(src17[1])
    );
    LUT6_2 #(
        .INIT(64'h8778788778878778)
    ) lut6_2_inst18(
        .O5(gene[18]),
        .O6(prop[18]),
        .I0(src17[0]),
        .I1(src17[1]),
        .I2(src18[1]),
        .I3(src18[2]),
        .I4(src18[3]),
        .I5(src18[0])
    );
    LUT5 #(
        .INIT(32'h80000000)
    ) lut5_gene19(
        .O(gene[19]),
        .I0(src17[0]),
        .I1(src17[1]),
        .I2(src18[1]),
        .I3(src18[2]),
        .I4(src18[3])
    );
    LUT5 #(
        .INIT(32'h7ff8f880)
    ) lut5_prop19(
        .O(prop[19]),
        .I0(src17[0]),
        .I1(src17[1]),
        .I2(src18[1]),
        .I3(src18[2]),
        .I4(src18[3])
    );
    LUT4 #(
        .INIT(16'h9600)
    ) lut4_gene20(
        .O(gene[20]),
        .I0(src20[0]),
        .I1(src20[1]),
        .I2(src20[2]),
        .I3(src20[3])
    );
    LUT4 #(
        .INIT(16'h6996)
    ) lut4_prop20(
        .O(prop[20]),
        .I0(src20[0]),
        .I1(src20[1]),
        .I2(src20[2]),
        .I3(src20[3])
    );
    LUT5 #(
        .INIT(32'he8e800)
    ) lut5_gene21(
        .O(gene[21]),
        .I0(src20[0]),
        .I1(src20[1]),
        .I2(src20[2]),
        .I3(src21[0]),
        .I4(src21[1])
    );
    LUT5 #(
        .INIT(32'he81717e8)
    ) lut5_prop21(
        .O(prop[21]),
        .I0(src20[0]),
        .I1(src20[1]),
        .I2(src20[2]),
        .I3(src21[0]),
        .I4(src21[1])
    );
    LUT6_2 #(
        .INIT(64'h8778788778878778)
    ) lut6_2_inst22(
        .O5(gene[22]),
        .O6(prop[22]),
        .I0(src21[0]),
        .I1(src21[1]),
        .I2(src22[1]),
        .I3(src22[2]),
        .I4(src22[3]),
        .I5(src22[0])
    );
    LUT5 #(
        .INIT(32'h80000000)
    ) lut5_gene23(
        .O(gene[23]),
        .I0(src21[0]),
        .I1(src21[1]),
        .I2(src22[1]),
        .I3(src22[2]),
        .I4(src22[3])
    );
    LUT5 #(
        .INIT(32'h7ff8f880)
    ) lut5_prop23(
        .O(prop[23]),
        .I0(src21[0]),
        .I1(src21[1]),
        .I2(src22[1]),
        .I3(src22[2]),
        .I4(src22[3])
    );
    LUT4 #(
        .INIT(16'h9600)
    ) lut4_gene24(
        .O(gene[24]),
        .I0(src24[0]),
        .I1(src24[1]),
        .I2(src24[2]),
        .I3(src24[3])
    );
    LUT4 #(
        .INIT(16'h6996)
    ) lut4_prop24(
        .O(prop[24]),
        .I0(src24[0]),
        .I1(src24[1]),
        .I2(src24[2]),
        .I3(src24[3])
    );
    LUT6_2 #(
        .INIT(64'h17e8e817e81717e8)
    ) lut6_2_inst25(
        .O5(gene[25]),
        .O6(prop[25]),
        .I0(src24[0]),
        .I1(src24[1]),
        .I2(src24[2]),
        .I3(src25[1]),
        .I4(src25[2]),
        .I5(src25[0])
    );
    LUT6_2 #(
        .INIT(64'h1717ffffe8e800)
    ) lut6_2_inst26(
        .O5(gene[26]),
        .O6(prop[26]),
        .I0(src24[0]),
        .I1(src24[1]),
        .I2(src24[2]),
        .I3(src25[1]),
        .I4(src25[2]),
        .I5(src26[0])
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
        .DI({1'h0, gene[26:24]}),
        .S({1'h0, prop[26:24]})
    );
    assign dst = {carryout[26], out[26], out[25], out[24], out[23], out[22], out[21], out[20], out[19], out[18], out[17], out[16], out[15], out[14], out[13], out[12], out[11], out[10], out[9], out[8], out[7], out[6], out[5], out[4], out[3], out[2], out[1], out[0]};
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

module gpc1315211614221422222222222222222126_35(input [5:0] src0, input [1:0] src1, input [0:0] src2, input [1:0] src3, input [1:0] src4, input [1:0] src5, input [1:0] src6, input [1:0] src7, input [1:0] src8, input [1:0] src9, input [1:0] src10, input [1:0] src11, input [1:0] src12, input [1:0] src13, input [1:0] src14, input [1:0] src15, input [1:0] src16, input [1:0] src17, input [1:0] src18, input [1:0] src19, input [3:0] src20, input [0:0] src21, input [1:0] src22, input [1:0] src23, input [3:0] src24, input [0:0] src25, input [5:0] src26, input [0:0] src27, input [0:0] src28, input [1:0] src29, input [4:0] src30, input [0:0] src31, input [2:0] src32, input [0:0] src33, output [34:0] dst);
    wire [33:0] gene;
    wire [33:0] prop;
    wire [35:0] out;
    wire [35:0] carryout;
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
    LUT2 #(
        .INIT(4'h8)
    ) lut2_gene4(
        .O(gene[4]),
        .I0(src4[0]),
        .I1(src4[1])
    );
    LUT2 #(
        .INIT(4'h6)
    ) lut2_prop4(
        .O(prop[4]),
        .I0(src4[0]),
        .I1(src4[1])
    );
    LUT2 #(
        .INIT(4'h8)
    ) lut2_gene5(
        .O(gene[5]),
        .I0(src5[0]),
        .I1(src5[1])
    );
    LUT2 #(
        .INIT(4'h6)
    ) lut2_prop5(
        .O(prop[5]),
        .I0(src5[0]),
        .I1(src5[1])
    );
    LUT2 #(
        .INIT(4'h8)
    ) lut2_gene6(
        .O(gene[6]),
        .I0(src6[0]),
        .I1(src6[1])
    );
    LUT2 #(
        .INIT(4'h6)
    ) lut2_prop6(
        .O(prop[6]),
        .I0(src6[0]),
        .I1(src6[1])
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
    LUT2 #(
        .INIT(4'h8)
    ) lut2_gene9(
        .O(gene[9]),
        .I0(src9[0]),
        .I1(src9[1])
    );
    LUT2 #(
        .INIT(4'h6)
    ) lut2_prop9(
        .O(prop[9]),
        .I0(src9[0]),
        .I1(src9[1])
    );
    LUT2 #(
        .INIT(4'h8)
    ) lut2_gene10(
        .O(gene[10]),
        .I0(src10[0]),
        .I1(src10[1])
    );
    LUT2 #(
        .INIT(4'h6)
    ) lut2_prop10(
        .O(prop[10]),
        .I0(src10[0]),
        .I1(src10[1])
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
    LUT2 #(
        .INIT(4'h8)
    ) lut2_gene16(
        .O(gene[16]),
        .I0(src16[0]),
        .I1(src16[1])
    );
    LUT2 #(
        .INIT(4'h6)
    ) lut2_prop16(
        .O(prop[16]),
        .I0(src16[0]),
        .I1(src16[1])
    );
    LUT2 #(
        .INIT(4'h8)
    ) lut2_gene17(
        .O(gene[17]),
        .I0(src17[0]),
        .I1(src17[1])
    );
    LUT2 #(
        .INIT(4'h6)
    ) lut2_prop17(
        .O(prop[17]),
        .I0(src17[0]),
        .I1(src17[1])
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
    LUT4 #(
        .INIT(16'h9600)
    ) lut4_gene20(
        .O(gene[20]),
        .I0(src20[0]),
        .I1(src20[1]),
        .I2(src20[2]),
        .I3(src20[3])
    );
    LUT4 #(
        .INIT(16'h6996)
    ) lut4_prop20(
        .O(prop[20]),
        .I0(src20[0]),
        .I1(src20[1]),
        .I2(src20[2]),
        .I3(src20[3])
    );
    LUT4 #(
        .INIT(16'he800)
    ) lut4_gene21(
        .O(gene[21]),
        .I0(src20[0]),
        .I1(src20[1]),
        .I2(src20[2]),
        .I3(src21[0])
    );
    LUT4 #(
        .INIT(16'h17e8)
    ) lut4_prop21(
        .O(prop[21]),
        .I0(src20[0]),
        .I1(src20[1]),
        .I2(src20[2]),
        .I3(src21[0])
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
    LUT4 #(
        .INIT(16'h9600)
    ) lut4_gene24(
        .O(gene[24]),
        .I0(src24[0]),
        .I1(src24[1]),
        .I2(src24[2]),
        .I3(src24[3])
    );
    LUT4 #(
        .INIT(16'h6996)
    ) lut4_prop24(
        .O(prop[24]),
        .I0(src24[0]),
        .I1(src24[1]),
        .I2(src24[2]),
        .I3(src24[3])
    );
    LUT4 #(
        .INIT(16'he800)
    ) lut4_gene25(
        .O(gene[25]),
        .I0(src24[0]),
        .I1(src24[1]),
        .I2(src24[2]),
        .I3(src25[0])
    );
    LUT4 #(
        .INIT(16'h17e8)
    ) lut4_prop25(
        .O(prop[25]),
        .I0(src24[0]),
        .I1(src24[1]),
        .I2(src24[2]),
        .I3(src25[0])
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
    LUT6_2 #(
        .INIT(64'he8818117177e7ee8)
    ) lut6_2_inst27(
        .O5(gene[27]),
        .O6(prop[27]),
        .I0(src26[1]),
        .I1(src26[2]),
        .I2(src26[3]),
        .I3(src26[4]),
        .I4(src26[5]),
        .I5(src27[0])
    );
    LUT6_2 #(
        .INIT(64'h177f7fffe8808000)
    ) lut6_2_inst28(
        .O5(gene[28]),
        .O6(prop[28]),
        .I0(src26[1]),
        .I1(src26[2]),
        .I2(src26[3]),
        .I3(src26[4]),
        .I4(src26[5]),
        .I5(src28[0])
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
    LUT5 #(
        .INIT(32'h69960000)
    ) lut5_gene30(
        .O(gene[30]),
        .I0(src30[0]),
        .I1(src30[1]),
        .I2(src30[2]),
        .I3(src30[3]),
        .I4(src30[4])
    );
    LUT5 #(
        .INIT(32'h96696996)
    ) lut5_prop30(
        .O(prop[30]),
        .I0(src30[0]),
        .I1(src30[1]),
        .I2(src30[2]),
        .I3(src30[3]),
        .I4(src30[4])
    );
    LUT5 #(
        .INIT(32'h76608000)
    ) lut5_gene31(
        .O(gene[31]),
        .I0(src30[0]),
        .I1(src30[1]),
        .I2(src30[2]),
        .I3(src30[3]),
        .I4(src31[0])
    );
    LUT5 #(
        .INIT(32'h81177ee8)
    ) lut5_prop31(
        .O(prop[31]),
        .I0(src30[0]),
        .I1(src30[1]),
        .I2(src30[2]),
        .I3(src30[3]),
        .I4(src31[0])
    );
    LUT6_2 #(
        .INIT(64'h7f80807f807f7f80)
    ) lut6_2_inst32(
        .O5(gene[32]),
        .O6(prop[32]),
        .I0(src30[0]),
        .I1(src30[1]),
        .I2(src31[0]),
        .I3(src32[1]),
        .I4(src32[2]),
        .I5(src32[0])
    );
    LUT6_2 #(
        .INIT(64'h7f7fffff808000)
    ) lut6_2_inst33(
        .O5(gene[33]),
        .O6(prop[33]),
        .I0(src30[0]),
        .I1(src30[1]),
        .I2(src31[0]),
        .I3(src32[1]),
        .I4(src32[2]),
        .I5(src33[0])
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
        .DI({2'h0, gene[33:32]}),
        .S({2'h0, prop[33:32]})
    );
    assign dst = {carryout[33], out[33], out[32], out[31], out[30], out[29], out[28], out[27], out[26], out[25], out[24], out[23], out[22], out[21], out[20], out[19], out[18], out[17], out[16], out[15], out[14], out[13], out[12], out[11], out[10], out[9], out[8], out[7], out[6], out[5], out[4], out[3], out[2], out[1], out[0]};
endmodule

module compressor(
      input [28:0] src0,
      input [28:0] src1,
      input [28:0] src2,
      input [28:0] src3,
      input [28:0] src4,
      input [28:0] src5,
      input [28:0] src6,
      input [28:0] src7,
      input [28:0] src8,
      input [28:0] src9,
      input [28:0] src10,
      input [28:0] src11,
      input [28:0] src12,
      input [28:0] src13,
      input [28:0] src14,
      input [28:0] src15,
      input [28:0] src16,
      input [28:0] src17,
      input [28:0] src18,
      input [28:0] src19,
      input [28:0] src20,
      input [28:0] src21,
      input [28:0] src22,
      input [28:0] src23,
      input [28:0] src24,
      input [28:0] src25,
      input [28:0] src26,
      input [28:0] src27,
      input [28:0] src28,
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
      output [0:0] dst33);

   wire [28:0] stage0_0;
   wire [28:0] stage0_1;
   wire [28:0] stage0_2;
   wire [28:0] stage0_3;
   wire [28:0] stage0_4;
   wire [28:0] stage0_5;
   wire [28:0] stage0_6;
   wire [28:0] stage0_7;
   wire [28:0] stage0_8;
   wire [28:0] stage0_9;
   wire [28:0] stage0_10;
   wire [28:0] stage0_11;
   wire [28:0] stage0_12;
   wire [28:0] stage0_13;
   wire [28:0] stage0_14;
   wire [28:0] stage0_15;
   wire [28:0] stage0_16;
   wire [28:0] stage0_17;
   wire [28:0] stage0_18;
   wire [28:0] stage0_19;
   wire [28:0] stage0_20;
   wire [28:0] stage0_21;
   wire [28:0] stage0_22;
   wire [28:0] stage0_23;
   wire [28:0] stage0_24;
   wire [28:0] stage0_25;
   wire [28:0] stage0_26;
   wire [28:0] stage0_27;
   wire [28:0] stage0_28;
   wire [13:0] stage1_0;
   wire [9:0] stage1_1;
   wire [9:0] stage1_2;
   wire [10:0] stage1_3;
   wire [14:0] stage1_4;
   wire [12:0] stage1_5;
   wire [12:0] stage1_6;
   wire [12:0] stage1_7;
   wire [12:0] stage1_8;
   wire [12:0] stage1_9;
   wire [12:0] stage1_10;
   wire [12:0] stage1_11;
   wire [12:0] stage1_12;
   wire [12:0] stage1_13;
   wire [12:0] stage1_14;
   wire [12:0] stage1_15;
   wire [18:0] stage1_16;
   wire [11:0] stage1_17;
   wire [11:0] stage1_18;
   wire [10:0] stage1_19;
   wire [8:0] stage1_20;
   wire [9:0] stage1_21;
   wire [9:0] stage1_22;
   wire [9:0] stage1_23;
   wire [9:0] stage1_24;
   wire [9:0] stage1_25;
   wire [9:0] stage1_26;
   wire [9:0] stage1_27;
   wire [9:0] stage1_28;
   wire [9:0] stage1_29;
   wire [4:0] stage1_30;
   wire [8:0] stage2_0;
   wire [2:0] stage2_1;
   wire [3:0] stage2_2;
   wire [3:0] stage2_3;
   wire [6:0] stage2_4;
   wire [4:0] stage2_5;
   wire [4:0] stage2_6;
   wire [4:0] stage2_7;
   wire [4:0] stage2_8;
   wire [5:0] stage2_9;
   wire [4:0] stage2_10;
   wire [4:0] stage2_11;
   wire [4:0] stage2_12;
   wire [4:0] stage2_13;
   wire [4:0] stage2_14;
   wire [4:0] stage2_15;
   wire [5:0] stage2_16;
   wire [4:0] stage2_17;
   wire [4:0] stage2_18;
   wire [3:0] stage2_19;
   wire [3:0] stage2_20;
   wire [3:0] stage2_21;
   wire [5:0] stage2_22;
   wire [3:0] stage2_23;
   wire [3:0] stage2_24;
   wire [3:0] stage2_25;
   wire [4:0] stage2_26;
   wire [3:0] stage2_27;
   wire [2:0] stage2_28;
   wire [5:0] stage2_29;
   wire [3:0] stage2_30;
   wire [1:0] stage2_31;
   wire [0:0] stage2_32;
   wire [4:0] stage3_0;
   wire [1:0] stage3_1;
   wire [0:0] stage3_2;
   wire [1:0] stage3_3;
   wire [1:0] stage3_4;
   wire [1:0] stage3_5;
   wire [1:0] stage3_6;
   wire [1:0] stage3_7;
   wire [1:0] stage3_8;
   wire [1:0] stage3_9;
   wire [1:0] stage3_10;
   wire [1:0] stage3_11;
   wire [1:0] stage3_12;
   wire [1:0] stage3_13;
   wire [1:0] stage3_14;
   wire [1:0] stage3_15;
   wire [1:0] stage3_16;
   wire [1:0] stage3_17;
   wire [1:0] stage3_18;
   wire [1:0] stage3_19;
   wire [3:0] stage3_20;
   wire [0:0] stage3_21;
   wire [1:0] stage3_22;
   wire [1:0] stage3_23;
   wire [3:0] stage3_24;
   wire [0:0] stage3_25;
   wire [5:0] stage3_26;
   wire [0:0] stage3_27;
   wire [0:0] stage3_28;
   wire [1:0] stage3_29;
   wire [4:0] stage3_30;
   wire [0:0] stage3_31;
   wire [1:0] stage3_32;
   wire [0:0] stage3_33;
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
   assign stage1_0[13:3] = stage0_0[28:18];
   assign stage1_1[9:7] = stage0_1[28:26];
   assign stage1_3[10:10] = stage0_3[28:28];
   assign stage1_4[14:10] = stage0_4[28:24];
   assign stage1_5[12:8] = stage0_5[28:24];
   assign stage1_6[12:8] = stage0_6[28:24];
   assign stage1_7[12:8] = stage0_7[28:24];
   assign stage1_8[12:8] = stage0_8[28:24];
   assign stage1_9[12:8] = stage0_9[28:24];
   assign stage1_10[12:8] = stage0_10[28:24];
   assign stage1_11[12:8] = stage0_11[28:24];
   assign stage1_12[12:8] = stage0_12[28:24];
   assign stage1_13[12:8] = stage0_13[28:24];
   assign stage1_14[12:8] = stage0_14[28:24];
   assign stage1_15[12:8] = stage0_15[28:24];
   assign stage1_16[18:8] = stage0_16[28:18];
   assign stage1_17[11:7] = stage0_17[28:24];
   assign stage1_18[11:10] = stage0_18[28:27];
   assign stage1_19[10:9] = stage0_19[28:27];
   assign stage2_0[8:1] = stage1_0[13:6];
   assign stage2_4[6:4] = stage1_4[14:12];
   assign stage2_5[4:4] = stage1_5[12:12];
   assign stage2_6[4:4] = stage1_6[12:12];
   assign stage2_7[4:4] = stage1_7[12:12];
   assign stage2_8[4:4] = stage1_8[12:12];
   assign stage2_9[5:5] = stage1_9[12:12];
   assign stage2_10[4:4] = stage1_10[12:12];
   assign stage2_11[4:4] = stage1_11[12:12];
   assign stage2_12[4:4] = stage1_12[12:12];
   assign stage2_13[4:4] = stage1_13[12:12];
   assign stage2_14[4:4] = stage1_14[12:12];
   assign stage2_15[4:4] = stage1_15[12:12];
   assign stage2_16[5:5] = stage1_16[18:18];
   assign stage2_22[5:4] = stage1_22[9:8];
   assign stage2_29[5:4] = stage1_29[9:8];
   assign stage3_0[4:1] = stage2_0[8:5];
   assign stage3_1[1:1] = stage2_1[2:2];
   assign stage3_20[3:2] = stage2_20[3:2];
   assign stage3_24[3:2] = stage2_24[3:2];
   assign stage3_26[5:1] = stage2_26[4:0];
   assign stage3_30[4:2] = stage2_30[3:1];
   assign stage3_32[1:1] = stage2_32[0:0];

   gpc606060606060606_17 chain0_0(
         .src0(stage0_0[5:0]),
         .src2(stage0_2[5:0]),
         .src4(stage0_4[5:0]),
         .src6(stage0_6[5:0]),
         .src8(stage0_8[5:0]),
         .src10(stage0_10[5:0]),
         .src12(stage0_12[5:0]),
         .src14(stage0_14[5:0]),
         .dst({stage1_16[0], stage1_15[0], stage1_14[0], stage1_13[0], stage1_12[0], stage1_11[0], stage1_10[0], stage1_9[0], stage1_8[0], stage1_7[0], stage1_6[0], stage1_5[0], stage1_4[0], stage1_3[0], stage1_2[0], stage1_1[0], stage1_0[0]})
   );
   gpc606_5 chain0_1(
         .src0(stage0_0[11:6]),
         .src2(stage0_2[11:6]),
         .dst({stage1_4[1], stage1_3[1], stage1_2[1], stage1_1[1], stage1_0[1]})
   );
   gpc2126_5 chain0_2(
         .src0(stage0_0[17:12]),
         .src1(stage0_1[1:0]),
         .src2(stage0_2[12:12]),
         .src3(stage0_3[1:0]),
         .dst({stage1_4[2], stage1_3[2], stage1_2[2], stage1_1[2], stage1_0[2]})
   );
   gpc606060606060606060606060606_29 chain0_3(
         .src0(stage0_1[7:2]),
         .src2(stage0_3[7:2]),
         .src4(stage0_5[5:0]),
         .src6(stage0_7[5:0]),
         .src8(stage0_9[5:0]),
         .src10(stage0_11[5:0]),
         .src12(stage0_13[5:0]),
         .src14(stage0_15[5:0]),
         .src16(stage0_17[5:0]),
         .src18(stage0_19[5:0]),
         .src20(stage0_21[5:0]),
         .src22(stage0_23[5:0]),
         .src24(stage0_25[5:0]),
         .src26(stage0_27[5:0]),
         .dst({stage1_29[0], stage1_28[0], stage1_27[0], stage1_26[0], stage1_25[0], stage1_24[0], stage1_23[0], stage1_22[0], stage1_21[0], stage1_20[0], stage1_19[0], stage1_18[0], stage1_17[0], stage1_16[1], stage1_15[1], stage1_14[1], stage1_13[1], stage1_12[1], stage1_11[1], stage1_10[1], stage1_9[1], stage1_8[1], stage1_7[1], stage1_6[1], stage1_5[1], stage1_4[3], stage1_3[3], stage1_2[3], stage1_1[3]})
   );
   gpc606060606060606060606060606_29 chain0_4(
         .src0(stage0_1[13:8]),
         .src2(stage0_3[13:8]),
         .src4(stage0_5[11:6]),
         .src6(stage0_7[11:6]),
         .src8(stage0_9[11:6]),
         .src10(stage0_11[11:6]),
         .src12(stage0_13[11:6]),
         .src14(stage0_15[11:6]),
         .src16(stage0_17[11:6]),
         .src18(stage0_19[11:6]),
         .src20(stage0_21[11:6]),
         .src22(stage0_23[11:6]),
         .src24(stage0_25[11:6]),
         .src26(stage0_27[11:6]),
         .dst({stage1_29[1], stage1_28[1], stage1_27[1], stage1_26[1], stage1_25[1], stage1_24[1], stage1_23[1], stage1_22[1], stage1_21[1], stage1_20[1], stage1_19[1], stage1_18[1], stage1_17[1], stage1_16[2], stage1_15[2], stage1_14[2], stage1_13[2], stage1_12[2], stage1_11[2], stage1_10[2], stage1_9[2], stage1_8[2], stage1_7[2], stage1_6[2], stage1_5[2], stage1_4[4], stage1_3[4], stage1_2[4], stage1_1[4]})
   );
   gpc606060606060606060606060606_29 chain0_5(
         .src0(stage0_1[19:14]),
         .src2(stage0_3[19:14]),
         .src4(stage0_5[17:12]),
         .src6(stage0_7[17:12]),
         .src8(stage0_9[17:12]),
         .src10(stage0_11[17:12]),
         .src12(stage0_13[17:12]),
         .src14(stage0_15[17:12]),
         .src16(stage0_17[17:12]),
         .src18(stage0_19[17:12]),
         .src20(stage0_21[17:12]),
         .src22(stage0_23[17:12]),
         .src24(stage0_25[17:12]),
         .src26(stage0_27[17:12]),
         .dst({stage1_29[2], stage1_28[2], stage1_27[2], stage1_26[2], stage1_25[2], stage1_24[2], stage1_23[2], stage1_22[2], stage1_21[2], stage1_20[2], stage1_19[2], stage1_18[2], stage1_17[2], stage1_16[3], stage1_15[3], stage1_14[3], stage1_13[3], stage1_12[3], stage1_11[3], stage1_10[3], stage1_9[3], stage1_8[3], stage1_7[3], stage1_6[3], stage1_5[3], stage1_4[5], stage1_3[5], stage1_2[5], stage1_1[5]})
   );
   gpc606060606060606060606060606_29 chain0_6(
         .src0(stage0_1[25:20]),
         .src2(stage0_3[25:20]),
         .src4(stage0_5[23:18]),
         .src6(stage0_7[23:18]),
         .src8(stage0_9[23:18]),
         .src10(stage0_11[23:18]),
         .src12(stage0_13[23:18]),
         .src14(stage0_15[23:18]),
         .src16(stage0_17[23:18]),
         .src18(stage0_19[23:18]),
         .src20(stage0_21[23:18]),
         .src22(stage0_23[23:18]),
         .src24(stage0_25[23:18]),
         .src26(stage0_27[23:18]),
         .dst({stage1_29[3], stage1_28[3], stage1_27[3], stage1_26[3], stage1_25[3], stage1_24[3], stage1_23[3], stage1_22[3], stage1_21[3], stage1_20[3], stage1_19[3], stage1_18[3], stage1_17[3], stage1_16[4], stage1_15[4], stage1_14[4], stage1_13[4], stage1_12[4], stage1_11[4], stage1_10[4], stage1_9[4], stage1_8[4], stage1_7[4], stage1_6[4], stage1_5[4], stage1_4[6], stage1_3[6], stage1_2[6], stage1_1[6]})
   );
   gpc606060606060606060606060606_29 chain0_7(
         .src0(stage0_2[18:13]),
         .src2(stage0_4[11:6]),
         .src4(stage0_6[11:6]),
         .src6(stage0_8[11:6]),
         .src8(stage0_10[11:6]),
         .src10(stage0_12[11:6]),
         .src12(stage0_14[11:6]),
         .src14(stage0_16[5:0]),
         .src16(stage0_18[5:0]),
         .src18(stage0_20[5:0]),
         .src20(stage0_22[5:0]),
         .src22(stage0_24[5:0]),
         .src24(stage0_26[5:0]),
         .src26(stage0_28[5:0]),
         .dst({stage1_30[0], stage1_29[4], stage1_28[4], stage1_27[4], stage1_26[4], stage1_25[4], stage1_24[4], stage1_23[4], stage1_22[4], stage1_21[4], stage1_20[4], stage1_19[4], stage1_18[4], stage1_17[4], stage1_16[5], stage1_15[5], stage1_14[5], stage1_13[5], stage1_12[5], stage1_11[5], stage1_10[5], stage1_9[5], stage1_8[5], stage1_7[5], stage1_6[5], stage1_5[5], stage1_4[7], stage1_3[7], stage1_2[7]})
   );
   gpc606060606060606060606060615_29 chain0_8(
         .src0(stage0_2[23:19]),
         .src1(stage0_3[26:26]),
         .src2(stage0_4[17:12]),
         .src4(stage0_6[17:12]),
         .src6(stage0_8[17:12]),
         .src8(stage0_10[17:12]),
         .src10(stage0_12[17:12]),
         .src12(stage0_14[17:12]),
         .src14(stage0_16[11:6]),
         .src16(stage0_18[11:6]),
         .src18(stage0_20[11:6]),
         .src20(stage0_22[11:6]),
         .src22(stage0_24[11:6]),
         .src24(stage0_26[11:6]),
         .src26(stage0_28[11:6]),
         .dst({stage1_30[1], stage1_29[5], stage1_28[5], stage1_27[5], stage1_26[5], stage1_25[5], stage1_24[5], stage1_23[5], stage1_22[5], stage1_21[5], stage1_20[5], stage1_19[5], stage1_18[5], stage1_17[5], stage1_16[6], stage1_15[6], stage1_14[6], stage1_13[6], stage1_12[6], stage1_11[6], stage1_10[6], stage1_9[6], stage1_8[6], stage1_7[6], stage1_6[6], stage1_5[6], stage1_4[8], stage1_3[8], stage1_2[8]})
   );
   gpc606060606060615_17 chain0_9(
         .src0(stage0_2[28:24]),
         .src1(stage0_3[27:27]),
         .src2(stage0_4[23:18]),
         .src4(stage0_6[23:18]),
         .src6(stage0_8[23:18]),
         .src8(stage0_10[23:18]),
         .src10(stage0_12[23:18]),
         .src12(stage0_14[23:18]),
         .src14(stage0_16[17:12]),
         .dst({stage1_18[6], stage1_17[6], stage1_16[7], stage1_15[7], stage1_14[7], stage1_13[7], stage1_12[7], stage1_11[7], stage1_10[7], stage1_9[7], stage1_8[7], stage1_7[7], stage1_6[7], stage1_5[7], stage1_4[9], stage1_3[9], stage1_2[9]})
   );
   gpc60606060615_13 chain0_10(
         .src0(stage0_18[16:12]),
         .src1(stage0_19[24:24]),
         .src2(stage0_20[17:12]),
         .src4(stage0_22[17:12]),
         .src6(stage0_24[17:12]),
         .src8(stage0_26[17:12]),
         .src10(stage0_28[17:12]),
         .dst({stage1_30[2], stage1_29[6], stage1_28[6], stage1_27[6], stage1_26[6], stage1_25[6], stage1_24[6], stage1_23[6], stage1_22[6], stage1_21[6], stage1_20[6], stage1_19[6], stage1_18[7]})
   );
   gpc60606060615_13 chain0_11(
         .src0(stage0_18[21:17]),
         .src1(stage0_19[25:25]),
         .src2(stage0_20[23:18]),
         .src4(stage0_22[23:18]),
         .src6(stage0_24[23:18]),
         .src8(stage0_26[23:18]),
         .src10(stage0_28[23:18]),
         .dst({stage1_30[3], stage1_29[7], stage1_28[7], stage1_27[7], stage1_26[7], stage1_25[7], stage1_24[7], stage1_23[7], stage1_22[7], stage1_21[7], stage1_20[7], stage1_19[7], stage1_18[8]})
   );
   gpc60606060615_13 chain0_12(
         .src0(stage0_18[26:22]),
         .src1(stage0_19[26:26]),
         .src2({stage0_20[28:24], 1'h0}),
         .src4({stage0_22[28:24], 1'h0}),
         .src6({stage0_24[28:24], 1'h0}),
         .src8({stage0_26[28:24], 1'h0}),
         .src10({stage0_28[28:24], 1'h0}),
         .dst({stage1_30[4], stage1_29[8], stage1_28[8], stage1_27[8], stage1_26[8], stage1_25[8], stage1_24[8], stage1_23[8], stage1_22[8], stage1_21[8], stage1_20[8], stage1_19[8], stage1_18[9]})
   );
   gpc6060606_9 chain0_13(
         .src0({stage0_21[28:24], 1'h0}),
         .src2({stage0_23[28:24], 1'h0}),
         .src4({stage0_25[28:24], 1'h0}),
         .src6({stage0_27[28:24], 1'h0}),
         .dst({stage1_29[9], stage1_28[9], stage1_27[9], stage1_26[9], stage1_25[9], stage1_24[9], stage1_23[9], stage1_22[9], stage1_21[9]})
   );
   gpc61412506060606060606060606_28 chain1_0(
         .src0(stage1_0[5:0]),
         .src2(stage1_2[5:0]),
         .src4(stage1_4[5:0]),
         .src6(stage1_6[5:0]),
         .src8(stage1_8[5:0]),
         .src10(stage1_10[5:0]),
         .src12(stage1_12[5:0]),
         .src14(stage1_14[5:0]),
         .src16(stage1_16[5:0]),
         .src18(stage1_18[5:0]),
         .src20(stage1_20[4:0]),
         .src21(stage1_21[1:0]),
         .src22(stage1_22[0:0]),
         .src23(stage1_23[3:0]),
         .src24(stage1_24[0:0]),
         .src25(stage1_25[5:0]),
         .dst({stage2_27[0], stage2_26[0], stage2_25[0], stage2_24[0], stage2_23[0], stage2_22[0], stage2_21[0], stage2_20[0], stage2_19[0], stage2_18[0], stage2_17[0], stage2_16[0], stage2_15[0], stage2_14[0], stage2_13[0], stage2_12[0], stage2_11[0], stage2_10[0], stage2_9[0], stage2_8[0], stage2_7[0], stage2_6[0], stage2_5[0], stage2_4[0], stage2_3[0], stage2_2[0], stage2_1[0], stage2_0[0]})
   );
   gpc60606060606060606060606_25 chain1_1(
         .src0(stage1_1[5:0]),
         .src2(stage1_3[5:0]),
         .src4(stage1_5[5:0]),
         .src6(stage1_7[5:0]),
         .src8(stage1_9[5:0]),
         .src10(stage1_11[5:0]),
         .src12(stage1_13[5:0]),
         .src14(stage1_15[5:0]),
         .src16(stage1_17[5:0]),
         .src18(stage1_19[5:0]),
         .src20(stage1_21[7:2]),
         .src22(stage1_23[9:4]),
         .dst({stage2_25[1], stage2_24[1], stage2_23[1], stage2_22[1], stage2_21[1], stage2_20[1], stage2_19[1], stage2_18[1], stage2_17[1], stage2_16[1], stage2_15[1], stage2_14[1], stage2_13[1], stage2_12[1], stage2_11[1], stage2_10[1], stage2_9[1], stage2_8[1], stage2_7[1], stage2_6[1], stage2_5[1], stage2_4[1], stage2_3[1], stage2_2[1], stage2_1[1]})
   );
   gpc6060606_9 chain1_2(
         .src0({stage1_1[9:6], 2'h0}),
         .src2({stage1_3[10:6], 1'h0}),
         .src4(stage1_5[11:6]),
         .src6(stage1_7[11:6]),
         .dst({stage2_9[2], stage2_8[2], stage2_7[2], stage2_6[2], stage2_5[2], stage2_4[2], stage2_3[2], stage2_2[2], stage2_1[2]})
   );
   gpc606060606060615_17 chain1_3(
         .src0({stage1_2[9:6], 1'h0}),
         .src1(1'h0),
         .src2(stage1_4[11:6]),
         .src4(stage1_6[11:6]),
         .src6(stage1_8[11:6]),
         .src8(stage1_10[11:6]),
         .src10(stage1_12[11:6]),
         .src12(stage1_14[11:6]),
         .src14(stage1_16[11:6]),
         .dst({stage2_18[2], stage2_17[2], stage2_16[2], stage2_15[2], stage2_14[2], stage2_13[2], stage2_12[2], stage2_11[2], stage2_10[2], stage2_9[3], stage2_8[3], stage2_7[3], stage2_6[3], stage2_5[3], stage2_4[3], stage2_3[3], stage2_2[3]})
   );
   gpc60606060606_13 chain1_4(
         .src0(stage1_9[11:6]),
         .src2(stage1_11[11:6]),
         .src4(stage1_13[11:6]),
         .src6(stage1_15[11:6]),
         .src8(stage1_17[11:6]),
         .src10({stage1_19[10:6], 1'h0}),
         .dst({stage2_21[2], stage2_20[2], stage2_19[2], stage2_18[3], stage2_17[3], stage2_16[3], stage2_15[3], stage2_14[3], stage2_13[3], stage2_12[3], stage2_11[3], stage2_10[3], stage2_9[4]})
   );
   gpc1250606_8 chain1_5(
         .src0(stage1_16[17:12]),
         .src2(stage1_18[11:6]),
         .src4({stage1_20[8:5], 1'h0}),
         .src5(stage1_21[9:8]),
         .src6(stage1_22[1:1]),
         .dst({stage2_23[2], stage2_22[2], stage2_21[3], stage2_20[3], stage2_19[3], stage2_18[4], stage2_17[4], stage2_16[4]})
   );
   gpc606_5 chain1_6(
         .src0(stage1_22[7:2]),
         .src2(stage1_24[6:1]),
         .dst({stage2_26[1], stage2_25[2], stage2_24[2], stage2_23[3], stage2_22[3]})
   );
   gpc6061343_9 chain1_7(
         .src0(stage1_24[9:7]),
         .src1(stage1_25[9:6]),
         .src2(stage1_26[2:0]),
         .src3(stage1_27[0:0]),
         .src4(stage1_28[5:0]),
         .src6({stage1_30[4:0], 1'h0}),
         .dst({stage2_32[0], stage2_31[0], stage2_30[0], stage2_29[0], stage2_28[0], stage2_27[1], stage2_26[2], stage2_25[3], stage2_24[3]})
   );
   gpc1163_5 chain1_8(
         .src0(stage1_26[5:3]),
         .src1(stage1_27[6:1]),
         .src2(stage1_28[6:6]),
         .src3(stage1_29[0:0]),
         .dst({stage2_30[1], stage2_29[1], stage2_28[1], stage2_27[2], stage2_26[3]})
   );
   gpc1334_5 chain1_9(
         .src0(stage1_26[9:6]),
         .src1(stage1_27[9:7]),
         .src2(stage1_28[9:7]),
         .src3(stage1_29[1:1]),
         .dst({stage2_30[2], stage2_29[2], stage2_28[2], stage2_27[3], stage2_26[4]})
   );
   gpc6_3 chain1_10(
         .src0(stage1_29[7:2]),
         .dst({stage2_31[1], stage2_30[3], stage2_29[3]})
   );
   gpc6060606060606060425_21 chain2_0(
         .src0(stage2_0[4:0]),
         .src1(stage2_1[1:0]),
         .src2(stage2_2[3:0]),
         .src4(stage2_4[5:0]),
         .src6({stage2_6[4:0], 1'h0}),
         .src8({stage2_8[4:0], 1'h0}),
         .src10({stage2_10[4:0], 1'h0}),
         .src12({stage2_12[4:0], 1'h0}),
         .src14({stage2_14[4:0], 1'h0}),
         .src16(stage2_16[5:0]),
         .src18({stage2_18[4:0], 1'h0}),
         .dst({stage3_20[0], stage3_19[0], stage3_18[0], stage3_17[0], stage3_16[0], stage3_15[0], stage3_14[0], stage3_13[0], stage3_12[0], stage3_11[0], stage3_10[0], stage3_9[0], stage3_8[0], stage3_7[0], stage3_6[0], stage3_5[0], stage3_4[0], stage3_3[0], stage3_2[0], stage3_1[0], stage3_0[0]})
   );
   gpc134042404240606060606060615_28 chain2_1(
         .src0({stage2_3[3:0], 1'h0}),
         .src1(stage2_4[6:6]),
         .src2({stage2_5[4:0], 1'h0}),
         .src4({stage2_7[4:0], 1'h0}),
         .src6(stage2_9[5:0]),
         .src8({stage2_11[4:0], 1'h0}),
         .src10({stage2_13[4:0], 1'h0}),
         .src12({stage2_15[4:0], 1'h0}),
         .src14({stage2_17[4:0], 1'h0}),
         .src16(stage2_19[3:0]),
         .src17(stage2_20[1:0]),
         .src18(stage2_21[3:0]),
         .src20(stage2_23[3:0]),
         .src21(stage2_24[1:0]),
         .src22(stage2_25[3:0]),
         .src24(stage2_27[3:0]),
         .src25(stage2_28[2:0]),
         .src26(stage2_29[0:0]),
         .dst({stage3_30[0], stage3_29[0], stage3_28[0], stage3_27[0], stage3_26[0], stage3_25[0], stage3_24[0], stage3_23[0], stage3_22[0], stage3_21[0], stage3_20[1], stage3_19[1], stage3_18[1], stage3_17[1], stage3_16[1], stage3_15[1], stage3_14[1], stage3_13[1], stage3_12[1], stage3_11[1], stage3_10[1], stage3_9[1], stage3_8[1], stage3_7[1], stage3_6[1], stage3_5[1], stage3_4[1], stage3_3[1]})
   );
   gpc6_3 chain2_2(
         .src0(stage2_22[5:0]),
         .dst({stage3_24[1], stage3_23[1], stage3_22[1]})
   );
   gpc615_5 chain2_3(
         .src0(stage2_29[5:1]),
         .src1(stage2_30[0:0]),
         .src2({stage2_31[1:0], 4'h0}),
         .dst({stage3_33[0], stage3_32[0], stage3_31[0], stage3_30[1], stage3_29[1]})
   );
   wire dummy4_34_0;
   gpc1315211614221422222222222222222126_35 chain3_0(
         .src0({stage3_0[4:0], 1'h0}),
         .src1(stage3_1[1:0]),
         .src2(stage3_2[0:0]),
         .src3(stage3_3[1:0]),
         .src4(stage3_4[1:0]),
         .src5(stage3_5[1:0]),
         .src6(stage3_6[1:0]),
         .src7(stage3_7[1:0]),
         .src8(stage3_8[1:0]),
         .src9(stage3_9[1:0]),
         .src10(stage3_10[1:0]),
         .src11(stage3_11[1:0]),
         .src12(stage3_12[1:0]),
         .src13(stage3_13[1:0]),
         .src14(stage3_14[1:0]),
         .src15(stage3_15[1:0]),
         .src16(stage3_16[1:0]),
         .src17(stage3_17[1:0]),
         .src18(stage3_18[1:0]),
         .src19(stage3_19[1:0]),
         .src20(stage3_20[3:0]),
         .src21(stage3_21[0:0]),
         .src22(stage3_22[1:0]),
         .src23(stage3_23[1:0]),
         .src24(stage3_24[3:0]),
         .src25(stage3_25[0:0]),
         .src26(stage3_26[5:0]),
         .src27(stage3_27[0:0]),
         .src28(stage3_28[0:0]),
         .src29(stage3_29[1:0]),
         .src30(stage3_30[4:0]),
         .src31(stage3_31[0:0]),
         .src32({stage3_32[1:0], 1'h0}),
         .src33(stage3_33[0:0]),
         .dst({dummy4_34_0, stage4_33[0], stage4_32[0], stage4_31[0], stage4_30[0], stage4_29[0], stage4_28[0], stage4_27[0], stage4_26[0], stage4_25[0], stage4_24[0], stage4_23[0], stage4_22[0], stage4_21[0], stage4_20[0], stage4_19[0], stage4_18[0], stage4_17[0], stage4_16[0], stage4_15[0], stage4_14[0], stage4_13[0], stage4_12[0], stage4_11[0], stage4_10[0], stage4_9[0], stage4_8[0], stage4_7[0], stage4_6[0], stage4_5[0], stage4_4[0], stage4_3[0], stage4_2[0], stage4_1[0], stage4_0[0]})
   );
endmodule
