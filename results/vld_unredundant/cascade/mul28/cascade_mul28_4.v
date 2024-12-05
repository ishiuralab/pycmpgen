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

module gpc425_5(input [4:0] src0, input [1:0] src1, input [3:0] src2, output [4:0] dst);
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

module gpc60606140606_13(input [5:0] src0, input [5:0] src2, input [3:0] src4, input [0:0] src5, input [5:0] src6, input [5:0] src8, input [5:0] src10, output [12:0] dst);
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

module gpc12430425_9(input [4:0] src0, input [1:0] src1, input [3:0] src2, input [2:0] src4, input [3:0] src5, input [1:0] src6, input [0:0] src7, output [8:0] dst);
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

module gpc1244_5(input [3:0] src0, input [3:0] src1, input [1:0] src2, input [0:0] src3, output [4:0] dst);
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
    LUT6_2 #(
        .INIT(64'h966969963cc3c33c)
    ) lut6_2_inst1(
        .O5(gene[1]),
        .O6(prop[1]),
        .I0(src0[2]),
        .I1(src1[0]),
        .I2(src1[1]),
        .I3(src1[2]),
        .I4(src1[3]),
        .I5(src0[1])
    );
    LUT6_2 #(
        .INIT(64'h7ee8811781177ee8)
    ) lut6_2_inst2(
        .O5(gene[2]),
        .O6(prop[2]),
        .I0(src1[0]),
        .I1(src1[1]),
        .I2(src1[2]),
        .I3(src1[3]),
        .I4(src2[1]),
        .I5(src2[0])
    );
    LUT6_2 #(
        .INIT(64'h1177ffffee88000)
    ) lut6_2_inst3(
        .O5(gene[3]),
        .O6(prop[3]),
        .I0(src1[0]),
        .I1(src1[1]),
        .I2(src1[2]),
        .I3(src1[3]),
        .I4(src2[1]),
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

module gpc606207_8(input [6:0] src0, input [1:0] src2, input [5:0] src3, input [5:0] src5, output [7:0] dst);
    wire [7:0] gene;
    wire [7:0] prop;
    wire [7:0] out;
    wire [7:0] carryout;
    LUT1 #(
        .INIT(2'h2)
    ) lut1_gene0(
        .O(gene[0]),
        .I0(src0[0])
    );
    LUT1 #(
        .INIT(2'h0)
    ) lut1_prop0(
        .O(prop[0]),
        .I0(src0[0])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst1(
        .O5(gene[1]),
        .O6(prop[1]),
        .I0(src0[2]),
        .I1(src0[3]),
        .I2(src0[4]),
        .I3(src0[5]),
        .I4(src0[6]),
        .I5(src0[1])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene2(
        .O(gene[2]),
        .I0(src0[2]),
        .I1(src0[3]),
        .I2(src0[4]),
        .I3(src0[5]),
        .I4(src0[6])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop2(
        .O(prop[2]),
        .I0(src0[2]),
        .I1(src0[3]),
        .I2(src0[4]),
        .I3(src0[5]),
        .I4(src0[6])
    );
    LUT2 #(
        .INIT(4'h8)
    ) lut2_gene3(
        .O(gene[3]),
        .I0(src2[0]),
        .I1(src2[1])
    );
    LUT2 #(
        .INIT(4'h6)
    ) lut2_prop3(
        .O(prop[3]),
        .I0(src2[0]),
        .I1(src2[1])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst4(
        .O5(gene[4]),
        .O6(prop[4]),
        .I0(src3[1]),
        .I1(src3[2]),
        .I2(src3[3]),
        .I3(src3[4]),
        .I4(src3[5]),
        .I5(src3[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene5(
        .O(gene[5]),
        .I0(src3[1]),
        .I1(src3[2]),
        .I2(src3[3]),
        .I3(src3[4]),
        .I4(src3[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop5(
        .O(prop[5]),
        .I0(src3[1]),
        .I1(src3[2]),
        .I2(src3[3]),
        .I3(src3[4]),
        .I4(src3[5])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst6(
        .O5(gene[6]),
        .O6(prop[6]),
        .I0(src5[1]),
        .I1(src5[2]),
        .I2(src5[3]),
        .I3(src5[4]),
        .I4(src5[5]),
        .I5(src5[0])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene7(
        .O(gene[7]),
        .I0(src5[1]),
        .I1(src5[2]),
        .I2(src5[3]),
        .I3(src5[4]),
        .I4(src5[5])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop7(
        .O(prop[7]),
        .I0(src5[1]),
        .I1(src5[2]),
        .I2(src5[3]),
        .I3(src5[4]),
        .I4(src5[5])
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
    assign dst = {carryout[7], out[7], out[6], out[5], out[4], out[3], out[2], out[1]};
endmodule

module gpc207_4(input [6:0] src0, input [1:0] src2, output [3:0] dst);
    wire [3:0] gene;
    wire [3:0] prop;
    wire [3:0] out;
    wire [3:0] carryout;
    LUT1 #(
        .INIT(2'h2)
    ) lut1_gene0(
        .O(gene[0]),
        .I0(src0[0])
    );
    LUT1 #(
        .INIT(2'h0)
    ) lut1_prop0(
        .O(prop[0]),
        .I0(src0[0])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst1(
        .O5(gene[1]),
        .O6(prop[1]),
        .I0(src0[2]),
        .I1(src0[3]),
        .I2(src0[4]),
        .I3(src0[5]),
        .I4(src0[6]),
        .I5(src0[1])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene2(
        .O(gene[2]),
        .I0(src0[2]),
        .I1(src0[3]),
        .I2(src0[4]),
        .I3(src0[5]),
        .I4(src0[6])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop2(
        .O(prop[2]),
        .I0(src0[2]),
        .I1(src0[3]),
        .I2(src0[4]),
        .I3(src0[5]),
        .I4(src0[6])
    );
    LUT2 #(
        .INIT(4'h8)
    ) lut2_gene3(
        .O(gene[3]),
        .I0(src2[0]),
        .I1(src2[1])
    );
    LUT2 #(
        .INIT(4'h6)
    ) lut2_prop3(
        .O(prop[3]),
        .I0(src2[0]),
        .I1(src2[1])
    );
    CARRY4 carry4_inst0(
        .CO(carryout[3:0]),
        .O(out[3:0]),
        .CYINIT(1'h0),
        .CI(1'h0),
        .DI(gene[3:0]),
        .S(prop[3:0])
    );
    assign dst = {carryout[3], out[3], out[2], out[1]};
endmodule

module gpc2135_5(input [4:0] src0, input [2:0] src1, input [0:0] src2, input [1:0] src3, output [4:0] dst);
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
    LUT6_2 #(
        .INIT(64'h17e8e817e81717e8)
    ) lut6_2_inst1(
        .O5(gene[1]),
        .O6(prop[1]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src0[3]),
        .I3(src1[1]),
        .I4(src1[2]),
        .I5(src1[0])
    );
    LUT6_2 #(
        .INIT(64'h1717ffffe8e800)
    ) lut6_2_inst2(
        .O5(gene[2]),
        .O6(prop[2]),
        .I0(src0[1]),
        .I1(src0[2]),
        .I2(src0[3]),
        .I3(src1[1]),
        .I4(src1[2]),
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

module gpc606060606060711_17(input [0:0] src0, input [0:0] src1, input [6:0] src2, input [5:0] src4, input [5:0] src6, input [5:0] src8, input [5:0] src10, input [5:0] src12, input [5:0] src14, output [16:0] dst);
    wire [15:0] gene;
    wire [15:0] prop;
    wire [15:0] out;
    wire [15:0] carryout;
    LUT1 #(
        .INIT(2'h2)
    ) lut1_gene0(
        .O(gene[0]),
        .I0(src1[0])
    );
    LUT1 #(
        .INIT(2'h0)
    ) lut1_prop0(
        .O(prop[0]),
        .I0(src1[0])
    );
    LUT1 #(
        .INIT(2'h2)
    ) lut1_gene1(
        .O(gene[1]),
        .I0(src2[0])
    );
    LUT1 #(
        .INIT(2'h0)
    ) lut1_prop1(
        .O(prop[1]),
        .I0(src2[0])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst2(
        .O5(gene[2]),
        .O6(prop[2]),
        .I0(src2[2]),
        .I1(src2[3]),
        .I2(src2[4]),
        .I3(src2[5]),
        .I4(src2[6]),
        .I5(src2[1])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene3(
        .O(gene[3]),
        .I0(src2[2]),
        .I1(src2[3]),
        .I2(src2[4]),
        .I3(src2[5]),
        .I4(src2[6])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop3(
        .O(prop[3]),
        .I0(src2[2]),
        .I1(src2[3]),
        .I2(src2[4]),
        .I3(src2[5]),
        .I4(src2[6])
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

module gpc614044_8(input [3:0] src0, input [3:0] src1, input [3:0] src3, input [0:0] src4, input [5:0] src5, output [7:0] dst);
    wire [6:0] gene;
    wire [6:0] prop;
    wire [7:0] out;
    wire [7:0] carryout;
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
        .DI({1'h0, gene[6:4]}),
        .S({1'h0, prop[6:4]})
    );
    assign dst = {carryout[6], out[6], out[5], out[4], out[3], out[2], out[1], out[0]};
endmodule

module gpc60606060614060606060615_25(input [4:0] src0, input [0:0] src1, input [5:0] src2, input [5:0] src4, input [5:0] src6, input [5:0] src8, input [5:0] src10, input [3:0] src12, input [0:0] src13, input [5:0] src14, input [5:0] src16, input [5:0] src18, input [5:0] src20, input [5:0] src22, output [24:0] dst);
    wire [23:0] gene;
    wire [23:0] prop;
    wire [23:0] out;
    wire [23:0] carryout;
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
    LUT4 #(
        .INIT(16'he800)
    ) lut4_gene13(
        .O(gene[13]),
        .I0(src12[0]),
        .I1(src12[1]),
        .I2(src12[2]),
        .I3(src13[0])
    );
    LUT4 #(
        .INIT(16'h17e8)
    ) lut4_prop13(
        .O(prop[13]),
        .I0(src12[0]),
        .I1(src12[1]),
        .I2(src12[2]),
        .I3(src13[0])
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
    assign dst = {carryout[23], out[23], out[22], out[21], out[20], out[19], out[18], out[17], out[16], out[15], out[14], out[13], out[12], out[11], out[10], out[9], out[8], out[7], out[6], out[5], out[4], out[3], out[2], out[1], out[0]};
endmodule

module gpc140606060606141406_19(input [5:0] src0, input [3:0] src2, input [0:0] src3, input [3:0] src4, input [0:0] src5, input [5:0] src6, input [5:0] src8, input [5:0] src10, input [5:0] src12, input [5:0] src14, input [3:0] src16, input [0:0] src17, output [18:0] dst);
    wire [17:0] gene;
    wire [17:0] prop;
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
        .DI({2'h0, gene[17:16]}),
        .S({2'h0, prop[17:16]})
    );
    assign dst = {carryout[17], out[17], out[16], out[15], out[14], out[13], out[12], out[11], out[10], out[9], out[8], out[7], out[6], out[5], out[4], out[3], out[2], out[1], out[0]};
endmodule

module gpc60606060441_13(input [0:0] src0, input [3:0] src1, input [3:0] src2, input [5:0] src4, input [5:0] src6, input [5:0] src8, input [5:0] src10, output [12:0] dst);
    wire [11:0] gene;
    wire [11:0] prop;
    wire [11:0] out;
    wire [11:0] carryout;
    LUT1 #(
        .INIT(2'h2)
    ) lut1_gene0(
        .O(gene[0]),
        .I0(src1[0])
    );
    LUT1 #(
        .INIT(2'h0)
    ) lut1_prop0(
        .O(prop[0]),
        .I0(src1[0])
    );
    LUT3 #(
        .INIT(8'h60)
    ) lut3_gene1(
        .O(gene[1]),
        .I0(src1[1]),
        .I1(src1[2]),
        .I2(src1[3])
    );
    LUT3 #(
        .INIT(8'h96)
    ) lut3_prop1(
        .O(prop[1]),
        .I0(src1[1]),
        .I1(src1[2]),
        .I2(src1[3])
    );
    LUT6_2 #(
        .INIT(64'h8778788778878778)
    ) lut6_2_inst2(
        .O5(gene[2]),
        .O6(prop[2]),
        .I0(src1[1]),
        .I1(src1[2]),
        .I2(src2[1]),
        .I3(src2[2]),
        .I4(src2[3]),
        .I5(src2[0])
    );
    LUT5 #(
        .INIT(32'h80000000)
    ) lut5_gene3(
        .O(gene[3]),
        .I0(src1[1]),
        .I1(src1[2]),
        .I2(src2[1]),
        .I3(src2[2]),
        .I4(src2[3])
    );
    LUT5 #(
        .INIT(32'h7ff8f880)
    ) lut5_prop3(
        .O(prop[3]),
        .I0(src1[1]),
        .I1(src1[2]),
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

module gpc13240606060615_15(input [4:0] src0, input [0:0] src1, input [5:0] src2, input [5:0] src4, input [5:0] src6, input [5:0] src8, input [3:0] src10, input [1:0] src11, input [2:0] src12, input [0:0] src13, output [14:0] dst);
    wire [13:0] gene;
    wire [13:0] prop;
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
    LUT4 #(
        .INIT(16'h9600)
    ) lut4_gene10(
        .O(gene[10]),
        .I0(src10[0]),
        .I1(src10[1]),
        .I2(src10[2]),
        .I3(src10[3])
    );
    LUT4 #(
        .INIT(16'h6996)
    ) lut4_prop10(
        .O(prop[10]),
        .I0(src10[0]),
        .I1(src10[1]),
        .I2(src10[2]),
        .I3(src10[3])
    );
    LUT5 #(
        .INIT(32'he8e800)
    ) lut5_gene11(
        .O(gene[11]),
        .I0(src10[0]),
        .I1(src10[1]),
        .I2(src10[2]),
        .I3(src11[0]),
        .I4(src11[1])
    );
    LUT5 #(
        .INIT(32'he81717e8)
    ) lut5_prop11(
        .O(prop[11]),
        .I0(src10[0]),
        .I1(src10[1]),
        .I2(src10[2]),
        .I3(src11[0]),
        .I4(src11[1])
    );
    LUT5 #(
        .INIT(32'h80080880)
    ) lut5_gene12(
        .O(gene[12]),
        .I0(src11[0]),
        .I1(src11[1]),
        .I2(src12[0]),
        .I3(src12[1]),
        .I4(src12[2])
    );
    LUT5 #(
        .INIT(32'h78878778)
    ) lut5_prop12(
        .O(prop[12]),
        .I0(src11[0]),
        .I1(src11[1]),
        .I2(src12[0]),
        .I3(src12[1]),
        .I4(src12[2])
    );
    LUT4 #(
        .INIT(16'he800)
    ) lut4_gene13(
        .O(gene[13]),
        .I0(src12[0]),
        .I1(src12[1]),
        .I2(src12[2]),
        .I3(src13[0])
    );
    LUT4 #(
        .INIT(16'h17e8)
    ) lut4_prop13(
        .O(prop[13]),
        .I0(src12[0]),
        .I1(src12[1]),
        .I2(src12[2]),
        .I3(src13[0])
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
        .DI({2'h0, gene[13:12]}),
        .S({2'h0, prop[13:12]})
    );
    assign dst = {carryout[13], out[13], out[12], out[11], out[10], out[9], out[8], out[7], out[6], out[5], out[4], out[3], out[2], out[1], out[0]};
endmodule

module gpc116213413152222222221252222222222222222222222125213422143_58(input [2:0] src0, input [3:0] src1, input [0:0] src2, input [1:0] src3, input [1:0] src4, input [3:0] src5, input [2:0] src6, input [0:0] src7, input [1:0] src8, input [4:0] src9, input [1:0] src10, input [0:0] src11, input [1:0] src12, input [1:0] src13, input [1:0] src14, input [1:0] src15, input [1:0] src16, input [1:0] src17, input [1:0] src18, input [1:0] src19, input [1:0] src20, input [1:0] src21, input [1:0] src22, input [1:0] src23, input [1:0] src24, input [1:0] src25, input [1:0] src26, input [1:0] src27, input [1:0] src28, input [1:0] src29, input [1:0] src30, input [1:0] src31, input [1:0] src32, input [1:0] src33, input [4:0] src34, input [1:0] src35, input [0:0] src36, input [1:0] src37, input [1:0] src38, input [1:0] src39, input [1:0] src40, input [1:0] src41, input [1:0] src42, input [1:0] src43, input [1:0] src44, input [1:0] src45, input [4:0] src46, input [0:0] src47, input [2:0] src48, input [0:0] src49, input [3:0] src50, input [2:0] src51, input [0:0] src52, input [1:0] src53, input [5:0] src54, input [0:0] src55, input [0:0] src56, output [57:0] dst);
    wire [56:0] gene;
    wire [56:0] prop;
    wire [59:0] out;
    wire [59:0] carryout;
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
    LUT4 #(
        .INIT(16'h9600)
    ) lut4_gene5(
        .O(gene[5]),
        .I0(src5[0]),
        .I1(src5[1]),
        .I2(src5[2]),
        .I3(src5[3])
    );
    LUT4 #(
        .INIT(16'h6996)
    ) lut4_prop5(
        .O(prop[5]),
        .I0(src5[0]),
        .I1(src5[1]),
        .I2(src5[2]),
        .I3(src5[3])
    );
    LUT6_2 #(
        .INIT(64'h17e8e817e81717e8)
    ) lut6_2_inst6(
        .O5(gene[6]),
        .O6(prop[6]),
        .I0(src5[0]),
        .I1(src5[1]),
        .I2(src5[2]),
        .I3(src6[1]),
        .I4(src6[2]),
        .I5(src6[0])
    );
    LUT6_2 #(
        .INIT(64'h1717ffffe8e800)
    ) lut6_2_inst7(
        .O5(gene[7]),
        .O6(prop[7]),
        .I0(src5[0]),
        .I1(src5[1]),
        .I2(src5[2]),
        .I3(src6[1]),
        .I4(src6[2]),
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
    LUT5 #(
        .INIT(32'h69960000)
    ) lut5_gene9(
        .O(gene[9]),
        .I0(src9[0]),
        .I1(src9[1]),
        .I2(src9[2]),
        .I3(src9[3]),
        .I4(src9[4])
    );
    LUT5 #(
        .INIT(32'h96696996)
    ) lut5_prop9(
        .O(prop[9]),
        .I0(src9[0]),
        .I1(src9[1]),
        .I2(src9[2]),
        .I3(src9[3]),
        .I4(src9[4])
    );
    LUT6_2 #(
        .INIT(64'h7ee8811781177ee8)
    ) lut6_2_inst10(
        .O5(gene[10]),
        .O6(prop[10]),
        .I0(src9[0]),
        .I1(src9[1]),
        .I2(src9[2]),
        .I3(src9[3]),
        .I4(src10[1]),
        .I5(src10[0])
    );
    LUT6_2 #(
        .INIT(64'h1177ffffee88000)
    ) lut6_2_inst11(
        .O5(gene[11]),
        .O6(prop[11]),
        .I0(src9[0]),
        .I1(src9[1]),
        .I2(src9[2]),
        .I3(src9[3]),
        .I4(src10[1]),
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
    LUT2 #(
        .INIT(4'h8)
    ) lut2_gene21(
        .O(gene[21]),
        .I0(src21[0]),
        .I1(src21[1])
    );
    LUT2 #(
        .INIT(4'h6)
    ) lut2_prop21(
        .O(prop[21]),
        .I0(src21[0]),
        .I1(src21[1])
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
    LUT6_2 #(
        .INIT(64'h7ee8811781177ee8)
    ) lut6_2_inst35(
        .O5(gene[35]),
        .O6(prop[35]),
        .I0(src34[0]),
        .I1(src34[1]),
        .I2(src34[2]),
        .I3(src34[3]),
        .I4(src35[1]),
        .I5(src35[0])
    );
    LUT6_2 #(
        .INIT(64'h1177ffffee88000)
    ) lut6_2_inst36(
        .O5(gene[36]),
        .O6(prop[36]),
        .I0(src34[0]),
        .I1(src34[1]),
        .I2(src34[2]),
        .I3(src34[3]),
        .I4(src35[1]),
        .I5(src36[0])
    );
    LUT2 #(
        .INIT(4'h8)
    ) lut2_gene37(
        .O(gene[37]),
        .I0(src37[0]),
        .I1(src37[1])
    );
    LUT2 #(
        .INIT(4'h6)
    ) lut2_prop37(
        .O(prop[37]),
        .I0(src37[0]),
        .I1(src37[1])
    );
    LUT2 #(
        .INIT(4'h8)
    ) lut2_gene38(
        .O(gene[38]),
        .I0(src38[0]),
        .I1(src38[1])
    );
    LUT2 #(
        .INIT(4'h6)
    ) lut2_prop38(
        .O(prop[38]),
        .I0(src38[0]),
        .I1(src38[1])
    );
    LUT2 #(
        .INIT(4'h8)
    ) lut2_gene39(
        .O(gene[39]),
        .I0(src39[0]),
        .I1(src39[1])
    );
    LUT2 #(
        .INIT(4'h6)
    ) lut2_prop39(
        .O(prop[39]),
        .I0(src39[0]),
        .I1(src39[1])
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
    LUT2 #(
        .INIT(4'h8)
    ) lut2_gene45(
        .O(gene[45]),
        .I0(src45[0]),
        .I1(src45[1])
    );
    LUT2 #(
        .INIT(4'h6)
    ) lut2_prop45(
        .O(prop[45]),
        .I0(src45[0]),
        .I1(src45[1])
    );
    LUT5 #(
        .INIT(32'h69960000)
    ) lut5_gene46(
        .O(gene[46]),
        .I0(src46[0]),
        .I1(src46[1]),
        .I2(src46[2]),
        .I3(src46[3]),
        .I4(src46[4])
    );
    LUT5 #(
        .INIT(32'h96696996)
    ) lut5_prop46(
        .O(prop[46]),
        .I0(src46[0]),
        .I1(src46[1]),
        .I2(src46[2]),
        .I3(src46[3]),
        .I4(src46[4])
    );
    LUT5 #(
        .INIT(32'h76608000)
    ) lut5_gene47(
        .O(gene[47]),
        .I0(src46[0]),
        .I1(src46[1]),
        .I2(src46[2]),
        .I3(src46[3]),
        .I4(src47[0])
    );
    LUT5 #(
        .INIT(32'h81177ee8)
    ) lut5_prop47(
        .O(prop[47]),
        .I0(src46[0]),
        .I1(src46[1]),
        .I2(src46[2]),
        .I3(src46[3]),
        .I4(src47[0])
    );
    LUT6_2 #(
        .INIT(64'h7f80807f807f7f80)
    ) lut6_2_inst48(
        .O5(gene[48]),
        .O6(prop[48]),
        .I0(src46[0]),
        .I1(src46[1]),
        .I2(src47[0]),
        .I3(src48[1]),
        .I4(src48[2]),
        .I5(src48[0])
    );
    LUT6_2 #(
        .INIT(64'h7f7fffff808000)
    ) lut6_2_inst49(
        .O5(gene[49]),
        .O6(prop[49]),
        .I0(src46[0]),
        .I1(src46[1]),
        .I2(src47[0]),
        .I3(src48[1]),
        .I4(src48[2]),
        .I5(src49[0])
    );
    LUT4 #(
        .INIT(16'h9600)
    ) lut4_gene50(
        .O(gene[50]),
        .I0(src50[0]),
        .I1(src50[1]),
        .I2(src50[2]),
        .I3(src50[3])
    );
    LUT4 #(
        .INIT(16'h6996)
    ) lut4_prop50(
        .O(prop[50]),
        .I0(src50[0]),
        .I1(src50[1]),
        .I2(src50[2]),
        .I3(src50[3])
    );
    LUT6_2 #(
        .INIT(64'h17e8e817e81717e8)
    ) lut6_2_inst51(
        .O5(gene[51]),
        .O6(prop[51]),
        .I0(src50[0]),
        .I1(src50[1]),
        .I2(src50[2]),
        .I3(src51[1]),
        .I4(src51[2]),
        .I5(src51[0])
    );
    LUT6_2 #(
        .INIT(64'h1717ffffe8e800)
    ) lut6_2_inst52(
        .O5(gene[52]),
        .O6(prop[52]),
        .I0(src50[0]),
        .I1(src50[1]),
        .I2(src50[2]),
        .I3(src51[1]),
        .I4(src51[2]),
        .I5(src52[0])
    );
    LUT2 #(
        .INIT(4'h8)
    ) lut2_gene53(
        .O(gene[53]),
        .I0(src53[0]),
        .I1(src53[1])
    );
    LUT2 #(
        .INIT(4'h6)
    ) lut2_prop53(
        .O(prop[53]),
        .I0(src53[0]),
        .I1(src53[1])
    );
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst54(
        .O5(gene[54]),
        .O6(prop[54]),
        .I0(src54[1]),
        .I1(src54[2]),
        .I2(src54[3]),
        .I3(src54[4]),
        .I4(src54[5]),
        .I5(src54[0])
    );
    LUT6_2 #(
        .INIT(64'he8818117177e7ee8)
    ) lut6_2_inst55(
        .O5(gene[55]),
        .O6(prop[55]),
        .I0(src54[1]),
        .I1(src54[2]),
        .I2(src54[3]),
        .I3(src54[4]),
        .I4(src54[5]),
        .I5(src55[0])
    );
    LUT6_2 #(
        .INIT(64'h177f7fffe8808000)
    ) lut6_2_inst56(
        .O5(gene[56]),
        .O6(prop[56]),
        .I0(src54[1]),
        .I1(src54[2]),
        .I2(src54[3]),
        .I3(src54[4]),
        .I4(src54[5]),
        .I5(src56[0])
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
        .DI(gene[55:52]),
        .S(prop[55:52])
    );
    CARRY4 carry4_inst14(
        .CO(carryout[59:56]),
        .O(out[59:56]),
        .CYINIT(1'h0),
        .CI(carryout[55]),
        .DI({3'h0, gene[56:56]}),
        .S({3'h0, prop[56:56]})
    );
    assign dst = {carryout[56], out[56], out[55], out[54], out[53], out[52], out[51], out[50], out[49], out[48], out[47], out[46], out[45], out[44], out[43], out[42], out[41], out[40], out[39], out[38], out[37], out[36], out[35], out[34], out[33], out[32], out[31], out[30], out[29], out[28], out[27], out[26], out[25], out[24], out[23], out[22], out[21], out[20], out[19], out[18], out[17], out[16], out[15], out[14], out[13], out[12], out[11], out[10], out[9], out[8], out[7], out[6], out[5], out[4], out[3], out[2], out[1], out[0]};
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
      input [26:0] src28,
      input [25:0] src29,
      input [24:0] src30,
      input [23:0] src31,
      input [22:0] src32,
      input [21:0] src33,
      input [20:0] src34,
      input [19:0] src35,
      input [18:0] src36,
      input [17:0] src37,
      input [16:0] src38,
      input [15:0] src39,
      input [14:0] src40,
      input [13:0] src41,
      input [12:0] src42,
      input [11:0] src43,
      input [10:0] src44,
      input [9:0] src45,
      input [8:0] src46,
      input [7:0] src47,
      input [6:0] src48,
      input [5:0] src49,
      input [4:0] src50,
      input [3:0] src51,
      input [2:0] src52,
      input [1:0] src53,
      input [0:0] src54,
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
      output [0:0] dst55);

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
   wire [26:0] stage0_28;
   wire [25:0] stage0_29;
   wire [24:0] stage0_30;
   wire [23:0] stage0_31;
   wire [22:0] stage0_32;
   wire [21:0] stage0_33;
   wire [20:0] stage0_34;
   wire [19:0] stage0_35;
   wire [18:0] stage0_36;
   wire [17:0] stage0_37;
   wire [16:0] stage0_38;
   wire [15:0] stage0_39;
   wire [14:0] stage0_40;
   wire [13:0] stage0_41;
   wire [12:0] stage0_42;
   wire [11:0] stage0_43;
   wire [10:0] stage0_44;
   wire [9:0] stage0_45;
   wire [8:0] stage0_46;
   wire [7:0] stage0_47;
   wire [6:0] stage0_48;
   wire [5:0] stage0_49;
   wire [4:0] stage0_50;
   wire [3:0] stage0_51;
   wire [2:0] stage0_52;
   wire [1:0] stage0_53;
   wire [0:0] stage0_54;
   wire [0:0] stage1_0;
   wire [1:0] stage1_1;
   wire [2:0] stage1_2;
   wire [3:0] stage1_3;
   wire [0:0] stage1_4;
   wire [5:0] stage1_5;
   wire [1:0] stage1_6;
   wire [4:0] stage1_7;
   wire [2:0] stage1_8;
   wire [2:0] stage1_9;
   wire [3:0] stage1_10;
   wire [4:0] stage1_11;
   wire [4:0] stage1_12;
   wire [4:0] stage1_13;
   wire [5:0] stage1_14;
   wire [5:0] stage1_15;
   wire [5:0] stage1_16;
   wire [14:0] stage1_17;
   wire [9:0] stage1_18;
   wire [13:0] stage1_19;
   wire [6:0] stage1_20;
   wire [15:0] stage1_21;
   wire [5:0] stage1_22;
   wire [11:0] stage1_23;
   wire [19:0] stage1_24;
   wire [12:0] stage1_25;
   wire [11:0] stage1_26;
   wire [13:0] stage1_27;
   wire [12:0] stage1_28;
   wire [13:0] stage1_29;
   wire [13:0] stage1_30;
   wire [11:0] stage1_31;
   wire [7:0] stage1_32;
   wire [6:0] stage1_33;
   wire [7:0] stage1_34;
   wire [7:0] stage1_35;
   wire [7:0] stage1_36;
   wire [6:0] stage1_37;
   wire [8:0] stage1_38;
   wire [14:0] stage1_39;
   wire [8:0] stage1_40;
   wire [5:0] stage1_41;
   wire [9:0] stage1_42;
   wire [2:0] stage1_43;
   wire [7:0] stage1_44;
   wire [8:0] stage1_45;
   wire [9:0] stage1_46;
   wire [2:0] stage1_47;
   wire [7:0] stage1_48;
   wire [6:0] stage1_49;
   wire [0:0] stage1_50;
   wire [1:0] stage1_51;
   wire [2:0] stage1_52;
   wire [0:0] stage1_53;
   wire [1:0] stage1_54;
   wire [0:0] stage2_0;
   wire [1:0] stage2_1;
   wire [2:0] stage2_2;
   wire [3:0] stage2_3;
   wire [0:0] stage2_4;
   wire [5:0] stage2_5;
   wire [1:0] stage2_6;
   wire [4:0] stage2_7;
   wire [2:0] stage2_8;
   wire [2:0] stage2_9;
   wire [3:0] stage2_10;
   wire [4:0] stage2_11;
   wire [0:0] stage2_12;
   wire [5:0] stage2_13;
   wire [0:0] stage2_14;
   wire [6:0] stage2_15;
   wire [0:0] stage2_16;
   wire [6:0] stage2_17;
   wire [5:0] stage2_18;
   wire [4:0] stage2_19;
   wire [3:0] stage2_20;
   wire [6:0] stage2_21;
   wire [2:0] stage2_22;
   wire [2:0] stage2_23;
   wire [6:0] stage2_24;
   wire [5:0] stage2_25;
   wire [4:0] stage2_26;
   wire [5:0] stage2_27;
   wire [4:0] stage2_28;
   wire [5:0] stage2_29;
   wire [5:0] stage2_30;
   wire [3:0] stage2_31;
   wire [5:0] stage2_32;
   wire [4:0] stage2_33;
   wire [3:0] stage2_34;
   wire [3:0] stage2_35;
   wire [3:0] stage2_36;
   wire [3:0] stage2_37;
   wire [4:0] stage2_38;
   wire [5:0] stage2_39;
   wire [5:0] stage2_40;
   wire [4:0] stage2_41;
   wire [4:0] stage2_42;
   wire [4:0] stage2_43;
   wire [5:0] stage2_44;
   wire [5:0] stage2_45;
   wire [5:0] stage2_46;
   wire [1:0] stage2_47;
   wire [2:0] stage2_48;
   wire [2:0] stage2_49;
   wire [2:0] stage2_50;
   wire [1:0] stage2_51;
   wire [0:0] stage2_52;
   wire [0:0] stage2_53;
   wire [0:0] stage2_54;
   wire [0:0] stage2_55;
   wire [0:0] stage3_0;
   wire [1:0] stage3_1;
   wire [2:0] stage3_2;
   wire [0:0] stage3_3;
   wire [1:0] stage3_4;
   wire [0:0] stage3_5;
   wire [2:0] stage3_6;
   wire [2:0] stage3_7;
   wire [0:0] stage3_8;
   wire [0:0] stage3_9;
   wire [3:0] stage3_10;
   wire [1:0] stage3_11;
   wire [0:0] stage3_12;
   wire [0:0] stage3_13;
   wire [1:0] stage3_14;
   wire [1:0] stage3_15;
   wire [1:0] stage3_16;
   wire [1:0] stage3_17;
   wire [1:0] stage3_18;
   wire [1:0] stage3_19;
   wire [1:0] stage3_20;
   wire [1:0] stage3_21;
   wire [1:0] stage3_22;
   wire [1:0] stage3_23;
   wire [1:0] stage3_24;
   wire [1:0] stage3_25;
   wire [1:0] stage3_26;
   wire [1:0] stage3_27;
   wire [1:0] stage3_28;
   wire [1:0] stage3_29;
   wire [1:0] stage3_30;
   wire [1:0] stage3_31;
   wire [1:0] stage3_32;
   wire [1:0] stage3_33;
   wire [1:0] stage3_34;
   wire [4:0] stage3_35;
   wire [1:0] stage3_36;
   wire [0:0] stage3_37;
   wire [1:0] stage3_38;
   wire [1:0] stage3_39;
   wire [1:0] stage3_40;
   wire [1:0] stage3_41;
   wire [1:0] stage3_42;
   wire [1:0] stage3_43;
   wire [1:0] stage3_44;
   wire [1:0] stage3_45;
   wire [1:0] stage3_46;
   wire [3:0] stage3_47;
   wire [0:0] stage3_48;
   wire [1:0] stage3_49;
   wire [0:0] stage3_50;
   wire [1:0] stage3_51;
   wire [1:0] stage3_52;
   wire [0:0] stage3_53;
   wire [0:0] stage3_54;
   wire [0:0] stage3_55;
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
   assign stage1_0[0:0] = stage0_0[0:0];
   assign stage1_1[1:0] = stage0_1[1:0];
   assign stage1_2[2:0] = stage0_2[2:0];
   assign stage1_3[3:0] = stage0_3[3:0];
   assign stage1_5[5:1] = stage0_5[5:1];
   assign stage1_6[1:1] = stage0_6[6:6];
   assign stage1_7[4:2] = stage0_7[7:5];
   assign stage1_8[2:2] = stage0_8[8:8];
   assign stage1_14[5:5] = stage0_14[14:14];
   assign stage1_15[5:5] = stage0_15[15:15];
   assign stage1_16[5:5] = stage0_16[16:16];
   assign stage1_17[14:5] = stage0_17[17:8];
   assign stage1_18[9:4] = stage0_18[18:13];
   assign stage1_19[13:5] = stage0_19[19:11];
   assign stage1_20[6:5] = stage0_20[20:19];
   assign stage1_21[15:6] = stage0_21[21:12];
   assign stage1_23[11:7] = stage0_23[23:19];
   assign stage1_24[19:7] = stage0_24[24:12];
   assign stage1_25[12:5] = stage0_25[25:18];
   assign stage1_26[11:7] = stage0_26[26:22];
   assign stage1_27[13:7] = stage0_27[27:21];
   assign stage1_28[12:7] = stage0_28[26:21];
   assign stage1_29[13:7] = stage0_29[25:19];
   assign stage1_30[13:7] = stage0_30[24:18];
   assign stage1_31[11:6] = stage0_31[23:18];
   assign stage1_32[7:7] = stage0_32[22:22];
   assign stage1_34[7:7] = stage0_34[20:20];
   assign stage1_35[7:7] = stage0_35[19:19];
   assign stage1_36[7:7] = stage0_36[18:18];
   assign stage1_39[14:6] = stage0_39[15:7];
   assign stage1_40[8:4] = stage0_40[14:10];
   assign stage1_41[5:4] = stage0_41[13:12];
   assign stage1_42[9:3] = stage0_42[12:6];
   assign stage1_44[7:3] = stage0_44[10:6];
   assign stage1_45[8:4] = stage0_45[9:5];
   assign stage1_46[9:2] = stage0_46[8:1];
   assign stage1_47[2:1] = stage0_47[7:6];
   assign stage1_48[7:1] = stage0_48[6:0];
   assign stage1_49[6:1] = stage0_49[5:0];
   assign stage1_51[1:1] = stage0_51[3:3];
   assign stage1_52[2:1] = stage0_52[2:1];
   assign stage1_54[1:1] = stage0_54[0:0];
   assign stage2_0[0:0] = stage1_0[0:0];
   assign stage2_1[1:0] = stage1_1[1:0];
   assign stage2_2[2:0] = stage1_2[2:0];
   assign stage2_3[3:0] = stage1_3[3:0];
   assign stage2_4[0:0] = stage1_4[0:0];
   assign stage2_5[5:0] = stage1_5[5:0];
   assign stage2_6[1:0] = stage1_6[1:0];
   assign stage2_7[4:0] = stage1_7[4:0];
   assign stage2_8[2:0] = stage1_8[2:0];
   assign stage2_9[2:0] = stage1_9[2:0];
   assign stage2_10[3:1] = stage1_10[3:1];
   assign stage2_11[4:1] = stage1_11[4:1];
   assign stage2_13[5:1] = stage1_13[4:0];
   assign stage2_15[6:1] = stage1_15[5:0];
   assign stage2_17[6:3] = stage1_17[14:11];
   assign stage2_18[5:3] = stage1_18[9:7];
   assign stage2_19[4:3] = stage1_19[13:12];
   assign stage2_20[3:3] = stage1_20[6:6];
   assign stage2_21[6:3] = stage1_21[15:12];
   assign stage2_24[6:5] = stage1_24[19:18];
   assign stage2_25[5:5] = stage1_25[12:12];
   assign stage2_27[5:4] = stage1_27[13:12];
   assign stage2_28[4:4] = stage1_28[12:12];
   assign stage2_29[5:4] = stage1_29[13:12];
   assign stage2_30[5:4] = stage1_30[13:12];
   assign stage2_32[5:4] = stage1_32[7:6];
   assign stage2_33[4:4] = stage1_33[6:6];
   assign stage2_34[3:2] = stage1_34[7:6];
   assign stage2_35[3:2] = stage1_35[7:6];
   assign stage2_36[3:2] = stage1_36[7:6];
   assign stage2_37[3:3] = stage1_37[6:6];
   assign stage2_38[4:2] = stage1_38[8:6];
   assign stage2_39[5:3] = stage1_39[14:12];
   assign stage2_40[5:3] = stage1_40[8:6];
   assign stage2_41[4:3] = stage1_41[5:4];
   assign stage2_42[4:2] = stage1_42[9:7];
   assign stage2_43[4:2] = stage1_43[2:0];
   assign stage2_44[5:2] = stage1_44[7:4];
   assign stage2_45[5:1] = stage1_45[8:4];
   assign stage2_46[5:2] = stage1_46[9:6];
   assign stage2_48[2:2] = stage1_48[7:7];
   assign stage2_49[2:2] = stage1_49[6:6];
   assign stage2_50[2:2] = stage1_50[0:0];
   assign stage3_0[0:0] = stage2_0[0:0];
   assign stage3_1[1:0] = stage2_1[1:0];
   assign stage3_2[2:0] = stage2_2[2:0];
   assign stage3_4[1:1] = stage2_4[0:0];
   assign stage3_6[2:1] = stage2_6[1:0];
   assign stage3_7[2:2] = stage2_7[4:4];
   assign stage3_10[3:1] = stage2_10[3:1];
   assign stage3_14[1:1] = stage2_14[0:0];
   assign stage3_15[1:1] = stage2_15[6:6];
   assign stage3_16[1:1] = stage2_16[0:0];
   assign stage3_17[1:1] = stage2_17[6:6];
   assign stage3_35[4:3] = stage2_35[3:2];
   assign stage3_47[3:2] = stage2_47[1:0];
   assign stage3_49[1:1] = stage2_49[2:2];
   assign stage3_51[1:1] = stage2_51[1:1];
   assign stage3_52[1:1] = stage2_52[0:0];
   assign stage3_53[0:0] = stage2_53[0:0];
   assign stage3_54[0:0] = stage2_54[0:0];
   assign stage3_55[0:0] = stage2_55[0:0];
   assign stage4_0[0:0] = stage3_0[0:0];

   gpc6060615_9 chain0_0(
         .src0(stage0_4[4:0]),
         .src1(stage0_5[0:0]),
         .src2(stage0_6[5:0]),
         .src4(stage0_8[5:0]),
         .src6(stage0_10[5:0]),
         .dst({stage1_12[0], stage1_11[0], stage1_10[0], stage1_9[0], stage1_8[0], stage1_7[0], stage1_6[0], stage1_5[0], stage1_4[0]})
   );
   gpc425_5 chain0_1(
         .src0(stage0_7[4:0]),
         .src1(stage0_8[7:6]),
         .src2(stage0_9[3:0]),
         .dst({stage1_11[1], stage1_10[1], stage1_9[1], stage1_8[1], stage1_7[1]})
   );
   gpc60606140606_13 chain0_2(
         .src0(stage0_9[9:4]),
         .src2(stage0_11[5:0]),
         .src4(stage0_13[3:0]),
         .src5(stage0_14[0:0]),
         .src6(stage0_15[5:0]),
         .src8(stage0_17[5:0]),
         .src10(stage0_19[5:0]),
         .dst({stage1_21[0], stage1_20[0], stage1_19[0], stage1_18[0], stage1_17[0], stage1_16[0], stage1_15[0], stage1_14[0], stage1_13[0], stage1_12[1], stage1_11[2], stage1_10[2], stage1_9[2]})
   );
   gpc606060606060606060606060615_29 chain0_3(
         .src0(stage0_10[10:6]),
         .src1(stage0_11[6:6]),
         .src2(stage0_12[5:0]),
         .src4(stage0_14[6:1]),
         .src6(stage0_16[5:0]),
         .src8(stage0_18[5:0]),
         .src10(stage0_20[5:0]),
         .src12(stage0_22[5:0]),
         .src14(stage0_24[5:0]),
         .src16(stage0_26[5:0]),
         .src18(stage0_28[5:0]),
         .src20(stage0_30[5:0]),
         .src22(stage0_32[5:0]),
         .src24(stage0_34[5:0]),
         .src26(stage0_36[5:0]),
         .dst({stage1_38[0], stage1_37[0], stage1_36[0], stage1_35[0], stage1_34[0], stage1_33[0], stage1_32[0], stage1_31[0], stage1_30[0], stage1_29[0], stage1_28[0], stage1_27[0], stage1_26[0], stage1_25[0], stage1_24[0], stage1_23[0], stage1_22[0], stage1_21[1], stage1_20[1], stage1_19[1], stage1_18[1], stage1_17[1], stage1_16[1], stage1_15[1], stage1_14[1], stage1_13[1], stage1_12[2], stage1_11[3], stage1_10[3]})
   );
   gpc12430425_9 chain0_4(
         .src0(stage0_11[11:7]),
         .src1(stage0_12[7:6]),
         .src2(stage0_13[7:4]),
         .src4(stage0_15[8:6]),
         .src5(stage0_16[9:6]),
         .src6(stage0_17[7:6]),
         .src7(stage0_18[6:6]),
         .dst({stage1_19[2], stage1_18[2], stage1_17[2], stage1_16[2], stage1_15[2], stage1_14[2], stage1_13[2], stage1_12[3], stage1_11[4]})
   );
   gpc60606060615_13 chain0_5(
         .src0(stage0_12[12:8]),
         .src1(stage0_13[8:8]),
         .src2(stage0_14[12:7]),
         .src4(stage0_16[15:10]),
         .src6(stage0_18[12:7]),
         .src8(stage0_20[11:6]),
         .src10(stage0_22[11:6]),
         .dst({stage1_24[1], stage1_23[1], stage1_22[1], stage1_21[2], stage1_20[2], stage1_19[3], stage1_18[3], stage1_17[3], stage1_16[3], stage1_15[3], stage1_14[3], stage1_13[3], stage1_12[4]})
   );
   gpc615_5 chain0_6(
         .src0(stage0_13[13:9]),
         .src1(stage0_14[13:13]),
         .src2(stage0_15[14:9]),
         .dst({stage1_17[4], stage1_16[4], stage1_15[4], stage1_14[4], stage1_13[4]})
   );
   gpc6060606060606060615_21 chain0_7(
         .src0(stage0_19[10:6]),
         .src1(stage0_20[12:12]),
         .src2(stage0_21[5:0]),
         .src4(stage0_23[5:0]),
         .src6(stage0_25[5:0]),
         .src8(stage0_27[5:0]),
         .src10(stage0_29[5:0]),
         .src12(stage0_31[5:0]),
         .src14(stage0_33[5:0]),
         .src16(stage0_35[5:0]),
         .src18(stage0_37[5:0]),
         .dst({stage1_39[0], stage1_38[1], stage1_37[1], stage1_36[1], stage1_35[1], stage1_34[1], stage1_33[1], stage1_32[1], stage1_31[1], stage1_30[1], stage1_29[1], stage1_28[1], stage1_27[1], stage1_26[1], stage1_25[1], stage1_24[2], stage1_23[2], stage1_22[2], stage1_21[3], stage1_20[3], stage1_19[4]})
   );
   gpc606_5 chain0_8(
         .src0(stage0_20[18:13]),
         .src2(stage0_22[17:12]),
         .dst({stage1_24[3], stage1_23[3], stage1_22[3], stage1_21[4], stage1_20[4]})
   );
   gpc606060606060606_17 chain0_9(
         .src0(stage0_21[11:6]),
         .src2(stage0_23[11:6]),
         .src4(stage0_25[11:6]),
         .src6(stage0_27[11:6]),
         .src8(stage0_29[11:6]),
         .src10(stage0_31[11:6]),
         .src12(stage0_33[11:6]),
         .src14(stage0_35[11:6]),
         .dst({stage1_37[2], stage1_36[2], stage1_35[2], stage1_34[2], stage1_33[2], stage1_32[2], stage1_31[2], stage1_30[2], stage1_29[2], stage1_28[2], stage1_27[2], stage1_26[2], stage1_25[2], stage1_24[4], stage1_23[4], stage1_22[4], stage1_21[5]})
   );
   gpc606060606060615_17 chain0_10(
         .src0(stage0_22[22:18]),
         .src1(stage0_23[12:12]),
         .src2(stage0_24[11:6]),
         .src4(stage0_26[11:6]),
         .src6(stage0_28[11:6]),
         .src8(stage0_30[11:6]),
         .src10(stage0_32[11:6]),
         .src12(stage0_34[11:6]),
         .src14(stage0_36[11:6]),
         .dst({stage1_38[2], stage1_37[3], stage1_36[3], stage1_35[3], stage1_34[3], stage1_33[3], stage1_32[3], stage1_31[3], stage1_30[3], stage1_29[3], stage1_28[3], stage1_27[3], stage1_26[3], stage1_25[3], stage1_24[5], stage1_23[5], stage1_22[5]})
   );
   gpc606060606060606_17 chain0_11(
         .src0(stage0_23[18:13]),
         .src2(stage0_25[17:12]),
         .src4(stage0_27[17:12]),
         .src6(stage0_29[17:12]),
         .src8(stage0_31[17:12]),
         .src10(stage0_33[17:12]),
         .src12(stage0_35[17:12]),
         .src14(stage0_37[11:6]),
         .dst({stage1_39[1], stage1_38[3], stage1_37[4], stage1_36[4], stage1_35[4], stage1_34[4], stage1_33[4], stage1_32[4], stage1_31[4], stage1_30[4], stage1_29[4], stage1_28[4], stage1_27[4], stage1_26[4], stage1_25[4], stage1_24[6], stage1_23[6]})
   );
   gpc60606060606_13 chain0_12(
         .src0(stage0_26[17:12]),
         .src2(stage0_28[17:12]),
         .src4(stage0_30[17:12]),
         .src6(stage0_32[17:12]),
         .src8(stage0_34[17:12]),
         .src10(stage0_36[17:12]),
         .dst({stage1_38[4], stage1_37[5], stage1_36[5], stage1_35[5], stage1_34[5], stage1_33[5], stage1_32[5], stage1_31[5], stage1_30[5], stage1_29[5], stage1_28[5], stage1_27[5], stage1_26[5]})
   );
   gpc1334_5 chain0_13(
         .src0(stage0_26[21:18]),
         .src1(stage0_27[20:18]),
         .src2(stage0_28[20:18]),
         .src3(stage0_29[18:18]),
         .dst({stage1_30[6], stage1_29[6], stage1_28[6], stage1_27[6], stage1_26[6]})
   );
   gpc1244_5 chain0_14(
         .src0(stage0_32[21:18]),
         .src1(stage0_33[21:18]),
         .src2(stage0_34[19:18]),
         .src3(stage0_35[18:18]),
         .dst({stage1_36[6], stage1_35[6], stage1_34[6], stage1_33[6], stage1_32[6]})
   );
   gpc6060606_9 chain0_15(
         .src0(stage0_37[17:12]),
         .src2(stage0_39[5:0]),
         .src4(stage0_41[5:0]),
         .src6(stage0_43[5:0]),
         .dst({stage1_45[0], stage1_44[0], stage1_43[0], stage1_42[0], stage1_41[0], stage1_40[0], stage1_39[2], stage1_38[5], stage1_37[6]})
   );
   gpc606207_8 chain0_16(
         .src0(stage0_38[6:0]),
         .src2(stage0_40[1:0]),
         .src3(stage0_41[11:6]),
         .src5(stage0_43[11:6]),
         .dst({stage1_45[1], stage1_44[1], stage1_43[1], stage1_42[1], stage1_41[1], stage1_40[1], stage1_39[3], stage1_38[6]})
   );
   gpc207_4 chain0_17(
         .src0(stage0_38[13:7]),
         .src2(stage0_40[3:2]),
         .dst({stage1_41[2], stage1_40[2], stage1_39[4], stage1_38[7]})
   );
   gpc6060615_9 chain0_18(
         .src0({stage0_38[16:14], 2'h0}),
         .src1(stage0_39[6:6]),
         .src2(stage0_40[9:4]),
         .src4(stage0_42[5:0]),
         .src6(stage0_44[5:0]),
         .dst({stage1_46[0], stage1_45[2], stage1_44[2], stage1_43[2], stage1_42[2], stage1_41[3], stage1_40[3], stage1_39[5], stage1_38[8]})
   );
   gpc615_5 chain0_19(
         .src0(stage0_45[4:0]),
         .src1(stage0_46[0:0]),
         .src2(stage0_47[5:0]),
         .dst({stage1_49[0], stage1_48[0], stage1_47[0], stage1_46[1], stage1_45[3]})
   );
   gpc2135_5 chain0_20(
         .src0(stage0_50[4:0]),
         .src1(stage0_51[2:0]),
         .src2(stage0_52[0:0]),
         .src3(stage0_53[1:0]),
         .dst({stage1_54[0], stage1_53[0], stage1_52[0], stage1_51[0], stage1_50[0]})
   );
   gpc606060606060711_17 chain1_0(
         .src0(stage1_10[0:0]),
         .src1(stage1_11[0:0]),
         .src2({stage1_12[4:0], 2'h0}),
         .src4(stage1_14[5:0]),
         .src6(stage1_16[5:0]),
         .src8(stage1_18[5:0]),
         .src10(stage1_20[5:0]),
         .src12(stage1_22[5:0]),
         .src14(stage1_24[5:0]),
         .dst({stage2_26[0], stage2_25[0], stage2_24[0], stage2_23[0], stage2_22[0], stage2_21[0], stage2_20[0], stage2_19[0], stage2_18[0], stage2_17[0], stage2_16[0], stage2_15[0], stage2_14[0], stage2_13[0], stage2_12[0], stage2_11[0], stage2_10[0]})
   );
   gpc606060606060606_17 chain1_1(
         .src0(stage1_17[5:0]),
         .src2(stage1_19[5:0]),
         .src4(stage1_21[5:0]),
         .src6(stage1_23[5:0]),
         .src8(stage1_25[5:0]),
         .src10(stage1_27[5:0]),
         .src12(stage1_29[5:0]),
         .src14(stage1_31[5:0]),
         .dst({stage2_33[0], stage2_32[0], stage2_31[0], stage2_30[0], stage2_29[0], stage2_28[0], stage2_27[0], stage2_26[1], stage2_25[1], stage2_24[1], stage2_23[1], stage2_22[1], stage2_21[1], stage2_20[1], stage2_19[1], stage2_18[1], stage2_17[1]})
   );
   gpc606060606060615_17 chain1_2(
         .src0(stage1_17[10:6]),
         .src1(stage1_18[6:6]),
         .src2(stage1_19[11:6]),
         .src4(stage1_21[11:6]),
         .src6(stage1_23[11:6]),
         .src8(stage1_25[11:6]),
         .src10(stage1_27[11:6]),
         .src12(stage1_29[11:6]),
         .src14(stage1_31[11:6]),
         .dst({stage2_33[1], stage2_32[1], stage2_31[1], stage2_30[1], stage2_29[1], stage2_28[1], stage2_27[1], stage2_26[2], stage2_25[2], stage2_24[2], stage2_23[2], stage2_22[2], stage2_21[2], stage2_20[2], stage2_19[2], stage2_18[2], stage2_17[2]})
   );
   gpc6060606060606060606_21 chain1_3(
         .src0(stage1_24[11:6]),
         .src2(stage1_26[5:0]),
         .src4(stage1_28[5:0]),
         .src6(stage1_30[5:0]),
         .src8(stage1_32[5:0]),
         .src10(stage1_34[5:0]),
         .src12(stage1_36[5:0]),
         .src14(stage1_38[5:0]),
         .src16(stage1_40[5:0]),
         .src18(stage1_42[5:0]),
         .dst({stage2_44[0], stage2_43[0], stage2_42[0], stage2_41[0], stage2_40[0], stage2_39[0], stage2_38[0], stage2_37[0], stage2_36[0], stage2_35[0], stage2_34[0], stage2_33[2], stage2_32[2], stage2_31[2], stage2_30[2], stage2_29[2], stage2_28[2], stage2_27[2], stage2_26[3], stage2_25[3], stage2_24[3]})
   );
   gpc6060606_9 chain1_4(
         .src0(stage1_24[17:12]),
         .src2(stage1_26[11:6]),
         .src4(stage1_28[11:6]),
         .src6(stage1_30[11:6]),
         .dst({stage2_32[3], stage2_31[3], stage2_30[3], stage2_29[3], stage2_28[3], stage2_27[3], stage2_26[4], stage2_25[4], stage2_24[4]})
   );
   gpc606_5 chain1_5(
         .src0(stage1_33[5:0]),
         .src2(stage1_35[5:0]),
         .dst({stage2_37[1], stage2_36[1], stage2_35[1], stage2_34[1], stage2_33[3]})
   );
   gpc606_5 chain1_6(
         .src0(stage1_37[5:0]),
         .src2(stage1_39[5:0]),
         .dst({stage2_41[1], stage2_40[1], stage2_39[1], stage2_38[1], stage2_37[2]})
   );
   gpc1406_5 chain1_7(
         .src0(stage1_39[11:6]),
         .src2(stage1_41[3:0]),
         .src3(stage1_42[6:6]),
         .dst({stage2_43[1], stage2_42[1], stage2_41[2], stage2_40[2], stage2_39[2]})
   );
   gpc614044_8 chain1_8(
         .src0(stage1_44[3:0]),
         .src1(stage1_45[3:0]),
         .src3({stage1_47[2:0], 1'h0}),
         .src4(stage1_48[0:0]),
         .src5(stage1_49[5:0]),
         .dst({stage2_51[0], stage2_50[0], stage2_49[0], stage2_48[0], stage2_47[0], stage2_46[0], stage2_45[0], stage2_44[1]})
   );
   gpc606_5 chain1_9(
         .src0(stage1_46[5:0]),
         .src2(stage1_48[6:1]),
         .dst({stage2_50[1], stage2_49[1], stage2_48[1], stage2_47[1], stage2_46[1]})
   );
   gpc2135_5 chain1_10(
         .src0({stage1_51[1:0], 3'h0}),
         .src1(stage1_52[2:0]),
         .src2(stage1_53[0:0]),
         .src3(stage1_54[1:0]),
         .dst({stage2_55[0], stage2_54[0], stage2_53[0], stage2_52[0], stage2_51[1]})
   );
   gpc606_5 chain2_0(
         .src0({stage2_3[3:0], 2'h0}),
         .src2(stage2_5[5:0]),
         .dst({stage3_7[0], stage3_6[0], stage3_5[0], stage3_4[0], stage3_3[0]})
   );
   gpc1334_5 chain2_1(
         .src0(stage2_7[3:0]),
         .src1(stage2_8[2:0]),
         .src2(stage2_9[2:0]),
         .src3(stage2_10[0:0]),
         .dst({stage3_11[0], stage3_10[0], stage3_9[0], stage3_8[0], stage3_7[1]})
   );
   gpc60606060614060606060615_25 chain2_2(
         .src0(stage2_11[4:0]),
         .src1(stage2_12[0:0]),
         .src2(stage2_13[5:0]),
         .src4(stage2_15[5:0]),
         .src6(stage2_17[5:0]),
         .src8({stage2_19[4:0], 1'h0}),
         .src10(stage2_21[5:0]),
         .src12({stage2_23[2:0], 1'h0}),
         .src13(stage2_24[0:0]),
         .src14(stage2_25[5:0]),
         .src16(stage2_27[5:0]),
         .src18(stage2_29[5:0]),
         .src20({stage2_31[3:0], 2'h0}),
         .src22({stage2_33[4:0], 1'h0}),
         .dst({stage3_35[0], stage3_34[0], stage3_33[0], stage3_32[0], stage3_31[0], stage3_30[0], stage3_29[0], stage3_28[0], stage3_27[0], stage3_26[0], stage3_25[0], stage3_24[0], stage3_23[0], stage3_22[0], stage3_21[0], stage3_20[0], stage3_19[0], stage3_18[0], stage3_17[0], stage3_16[0], stage3_15[0], stage3_14[0], stage3_13[0], stage3_12[0], stage3_11[1]})
   );
   gpc140606060606141406_19 chain2_3(
         .src0(stage2_18[5:0]),
         .src2(stage2_20[3:0]),
         .src3(stage2_21[6:6]),
         .src4({stage2_22[2:0], 1'h0}),
         .src5(1'h0),
         .src6(stage2_24[6:1]),
         .src8({stage2_26[4:0], 1'h0}),
         .src10({stage2_28[4:0], 1'h0}),
         .src12(stage2_30[5:0]),
         .src14(stage2_32[5:0]),
         .src16(stage2_34[3:0]),
         .src17(stage2_35[0:0]),
         .dst({stage3_36[0], stage3_35[1], stage3_34[1], stage3_33[1], stage3_32[1], stage3_31[1], stage3_30[1], stage3_29[1], stage3_28[1], stage3_27[1], stage3_26[1], stage3_25[1], stage3_24[1], stage3_23[1], stage3_22[1], stage3_21[1], stage3_20[1], stage3_19[1], stage3_18[1]})
   );
   gpc60606060441_13 chain2_4(
         .src0(stage2_35[1:1]),
         .src1(stage2_36[3:0]),
         .src2(stage2_37[3:0]),
         .src4(stage2_39[5:0]),
         .src6({stage2_41[4:0], 1'h0}),
         .src8({stage2_43[4:0], 1'h0}),
         .src10(stage2_45[5:0]),
         .dst({stage3_47[0], stage3_46[0], stage3_45[0], stage3_44[0], stage3_43[0], stage3_42[0], stage3_41[0], stage3_40[0], stage3_39[0], stage3_38[0], stage3_37[0], stage3_36[1], stage3_35[2]})
   );
   gpc13240606060615_15 chain2_5(
         .src0(stage2_38[4:0]),
         .src1(1'h0),
         .src2(stage2_40[5:0]),
         .src4({stage2_42[4:0], 1'h0}),
         .src6(stage2_44[5:0]),
         .src8(stage2_46[5:0]),
         .src10({stage2_48[2:0], 1'h0}),
         .src11(stage2_49[1:0]),
         .src12(stage2_50[2:0]),
         .src13(stage2_51[0:0]),
         .dst({stage3_52[0], stage3_51[0], stage3_50[0], stage3_49[0], stage3_48[0], stage3_47[1], stage3_46[1], stage3_45[1], stage3_44[1], stage3_43[1], stage3_42[1], stage3_41[1], stage3_40[1], stage3_39[1], stage3_38[1]})
   );
   wire dummy4_56_0;
   wire dummy4_57_0;
   wire dummy4_58_0;
   gpc116213413152222222221252222222222222222222222125213422143_58 chain3_0(
         .src0({stage3_1[1:0], 1'h0}),
         .src1({stage3_2[2:0], 1'h0}),
         .src2(stage3_3[0:0]),
         .src3(stage3_4[1:0]),
         .src4({stage3_5[0:0], 1'h0}),
         .src5({stage3_6[2:0], 1'h0}),
         .src6(stage3_7[2:0]),
         .src7(stage3_8[0:0]),
         .src8({stage3_9[0:0], 1'h0}),
         .src9({stage3_10[3:0], 1'h0}),
         .src10(stage3_11[1:0]),
         .src11(stage3_12[0:0]),
         .src12({stage3_13[0:0], 1'h0}),
         .src13(stage3_14[1:0]),
         .src14(stage3_15[1:0]),
         .src15(stage3_16[1:0]),
         .src16(stage3_17[1:0]),
         .src17(stage3_18[1:0]),
         .src18(stage3_19[1:0]),
         .src19(stage3_20[1:0]),
         .src20(stage3_21[1:0]),
         .src21(stage3_22[1:0]),
         .src22(stage3_23[1:0]),
         .src23(stage3_24[1:0]),
         .src24(stage3_25[1:0]),
         .src25(stage3_26[1:0]),
         .src26(stage3_27[1:0]),
         .src27(stage3_28[1:0]),
         .src28(stage3_29[1:0]),
         .src29(stage3_30[1:0]),
         .src30(stage3_31[1:0]),
         .src31(stage3_32[1:0]),
         .src32(stage3_33[1:0]),
         .src33(stage3_34[1:0]),
         .src34(stage3_35[4:0]),
         .src35(stage3_36[1:0]),
         .src36(stage3_37[0:0]),
         .src37(stage3_38[1:0]),
         .src38(stage3_39[1:0]),
         .src39(stage3_40[1:0]),
         .src40(stage3_41[1:0]),
         .src41(stage3_42[1:0]),
         .src42(stage3_43[1:0]),
         .src43(stage3_44[1:0]),
         .src44(stage3_45[1:0]),
         .src45(stage3_46[1:0]),
         .src46({stage3_47[3:0], 1'h0}),
         .src47(stage3_48[0:0]),
         .src48({stage3_49[1:0], 1'h0}),
         .src49(stage3_50[0:0]),
         .src50({stage3_51[1:0], 2'h0}),
         .src51({stage3_52[1:0], 1'h0}),
         .src52(stage3_53[0:0]),
         .src53({stage3_54[0:0], 1'h0}),
         .src54({stage3_55[0:0], 5'h0}),
         .src55(1'h0),
         .src56(1'h0),
         .dst({dummy4_58_0, dummy4_57_0, dummy4_56_0, stage4_55[0], stage4_54[0], stage4_53[0], stage4_52[0], stage4_51[0], stage4_50[0], stage4_49[0], stage4_48[0], stage4_47[0], stage4_46[0], stage4_45[0], stage4_44[0], stage4_43[0], stage4_42[0], stage4_41[0], stage4_40[0], stage4_39[0], stage4_38[0], stage4_37[0], stage4_36[0], stage4_35[0], stage4_34[0], stage4_33[0], stage4_32[0], stage4_31[0], stage4_30[0], stage4_29[0], stage4_28[0], stage4_27[0], stage4_26[0], stage4_25[0], stage4_24[0], stage4_23[0], stage4_22[0], stage4_21[0], stage4_20[0], stage4_19[0], stage4_18[0], stage4_17[0], stage4_16[0], stage4_15[0], stage4_14[0], stage4_13[0], stage4_12[0], stage4_11[0], stage4_10[0], stage4_9[0], stage4_8[0], stage4_7[0], stage4_6[0], stage4_5[0], stage4_4[0], stage4_3[0], stage4_2[0], stage4_1[0]})
   );
endmodule
