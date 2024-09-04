module gpc14060433_9(input [2:0] src0, input [2:0] src1, input [3:0] src2, input [5:0] src4, input [3:0] src6, input [0:0] src7, output [8:0] dst);
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

module gpc2060615_8(input [4:0] src0, input [0:0] src1, input [5:0] src2, input [5:0] src4, input [1:0] src6, output [7:0] dst);
    wire [6:0] gene;
    wire [6:0] prop;
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

module gpc140622060606_13(input [5:0] src0, input [5:0] src2, input [5:0] src4, input [1:0] src6, input [1:0] src7, input [5:0] src8, input [3:0] src10, input [0:0] src11, output [12:0] dst);
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

module gpc221421251334_13(input [3:0] src0, input [2:0] src1, input [2:0] src2, input [0:0] src3, input [4:0] src4, input [1:0] src5, input [0:0] src6, input [1:0] src7, input [3:0] src8, input [0:0] src9, input [1:0] src10, input [1:0] src11, output [12:0] dst);
    wire [11:0] gene;
    wire [11:0] prop;
    wire [11:0] out;
    wire [11:0] carryout;
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
    LUT4 #(
        .INIT(16'he800)
    ) lut4_gene9(
        .O(gene[9]),
        .I0(src8[0]),
        .I1(src8[1]),
        .I2(src8[2]),
        .I3(src9[0])
    );
    LUT4 #(
        .INIT(16'h17e8)
    ) lut4_prop9(
        .O(prop[9]),
        .I0(src8[0]),
        .I1(src8[1]),
        .I2(src8[2]),
        .I3(src9[0])
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
      input [7:0] src9,
      input [6:0] src10,
      input [5:0] src11,
      input [4:0] src12,
      input [3:0] src13,
      input [2:0] src14,
      input [1:0] src15,
      input [0:0] src16,
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
      output [0:0] dst17);

   wire [0:0] stage0_0;
   wire [1:0] stage0_1;
   wire [2:0] stage0_2;
   wire [3:0] stage0_3;
   wire [4:0] stage0_4;
   wire [5:0] stage0_5;
   wire [6:0] stage0_6;
   wire [7:0] stage0_7;
   wire [8:0] stage0_8;
   wire [7:0] stage0_9;
   wire [6:0] stage0_10;
   wire [5:0] stage0_11;
   wire [4:0] stage0_12;
   wire [3:0] stage0_13;
   wire [2:0] stage0_14;
   wire [1:0] stage0_15;
   wire [0:0] stage0_16;
   wire [0:0] stage1_0;
   wire [0:0] stage1_1;
   wire [0:0] stage1_2;
   wire [0:0] stage1_3;
   wire [5:0] stage1_4;
   wire [0:0] stage1_5;
   wire [7:0] stage1_6;
   wire [1:0] stage1_7;
   wire [4:0] stage1_8;
   wire [3:0] stage1_9;
   wire [2:0] stage1_10;
   wire [1:0] stage1_11;
   wire [6:0] stage1_12;
   wire [2:0] stage1_13;
   wire [3:0] stage1_14;
   wire [1:0] stage1_15;
   wire [0:0] stage1_16;
   wire [0:0] stage2_0;
   wire [0:0] stage2_1;
   wire [0:0] stage2_2;
   wire [0:0] stage2_3;
   wire [0:0] stage2_4;
   wire [1:0] stage2_5;
   wire [2:0] stage2_6;
   wire [2:0] stage2_7;
   wire [0:0] stage2_8;
   wire [4:0] stage2_9;
   wire [1:0] stage2_10;
   wire [0:0] stage2_11;
   wire [1:0] stage2_12;
   wire [3:0] stage2_13;
   wire [0:0] stage2_14;
   wire [1:0] stage2_15;
   wire [1:0] stage2_16;
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
   wire [0:0] stage3_10;
   wire [0:0] stage3_11;
   wire [0:0] stage3_12;
   wire [0:0] stage3_13;
   wire [0:0] stage3_14;
   wire [0:0] stage3_15;
   wire [0:0] stage3_16;
   wire [0:0] stage3_17;

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
   assign dst0 = stage3_0;
   assign dst1 = stage3_1;
   assign dst2 = stage3_2;
   assign dst3 = stage3_3;
   assign dst4 = stage3_4;
   assign dst5 = stage3_5;
   assign dst6 = stage3_6;
   assign dst7 = stage3_7;
   assign dst8 = stage3_8;
   assign dst9 = stage3_9;
   assign dst10 = stage3_10;
   assign dst11 = stage3_11;
   assign dst12 = stage3_12;
   assign dst13 = stage3_13;
   assign dst14 = stage3_14;
   assign dst15 = stage3_15;
   assign dst16 = stage3_16;
   assign dst17 = stage3_17;
   assign stage1_0[0:0] = stage0_0[0:0];
   assign stage1_4[5:1] = stage0_4[4:0];
   assign stage1_6[7:1] = stage0_6[6:0];
   assign stage1_8[4:3] = stage0_8[8:7];
   assign stage1_9[3:3] = stage0_9[7:7];
   assign stage1_10[2:2] = stage0_10[6:6];
   assign stage1_12[6:2] = stage0_12[4:0];
   assign stage1_13[2:1] = stage0_13[3:2];
   assign stage1_14[3:1] = stage0_14[2:0];
   assign stage1_15[1:0] = stage0_15[1:0];
   assign stage1_16[0:0] = stage0_16[0:0];
   assign stage2_0[0:0] = stage1_0[0:0];
   assign stage2_1[0:0] = stage1_1[0:0];
   assign stage2_2[0:0] = stage1_2[0:0];
   assign stage2_3[0:0] = stage1_3[0:0];
   assign stage2_5[1:1] = stage1_5[0:0];
   assign stage2_6[2:1] = stage1_6[7:6];
   assign stage2_7[2:1] = stage1_7[1:0];
   assign stage2_9[4:1] = stage1_9[3:0];
   assign stage2_10[1:1] = stage1_10[2:2];
   assign stage2_12[1:1] = stage1_12[6:6];
   assign stage2_13[3:1] = stage1_13[2:0];
   assign stage2_15[1:1] = stage1_15[1:1];
   assign stage2_16[1:1] = stage1_16[0:0];
   assign stage3_0[0:0] = stage2_0[0:0];
   assign stage3_1[0:0] = stage2_1[0:0];
   assign stage3_2[0:0] = stage2_2[0:0];
   assign stage3_3[0:0] = stage2_3[0:0];
   assign stage3_4[0:0] = stage2_4[0:0];

   gpc14060433_9 chain0_0(
         .src0({stage0_1[1:0], 1'h0}),
         .src1(stage0_2[2:0]),
         .src2(stage0_3[3:0]),
         .src4(stage0_5[5:0]),
         .src6(stage0_7[3:0]),
         .src7(stage0_8[0:0]),
         .dst({stage1_9[0], stage1_8[0], stage1_7[0], stage1_6[0], stage1_5[0], stage1_4[0], stage1_3[0], stage1_2[0], stage1_1[0]})
   );
   gpc2060615_8 chain0_1(
         .src0({stage0_7[7:4], 1'h0}),
         .src1(stage0_8[1:1]),
         .src2(stage0_9[5:0]),
         .src4(stage0_11[5:0]),
         .src6(stage0_13[1:0]),
         .dst({stage1_14[0], stage1_13[0], stage1_12[0], stage1_11[0], stage1_10[0], stage1_9[1], stage1_8[1], stage1_7[1]})
   );
   gpc615_5 chain0_2(
         .src0(stage0_8[6:2]),
         .src1(stage0_9[6:6]),
         .src2(stage0_10[5:0]),
         .dst({stage1_12[1], stage1_11[1], stage1_10[1], stage1_9[2], stage1_8[2]})
   );
   gpc140622060606_13 chain1_0(
         .src0(stage1_4[5:0]),
         .src2(stage1_6[5:0]),
         .src4({stage1_8[4:0], 1'h0}),
         .src6(stage1_10[1:0]),
         .src7(stage1_11[1:0]),
         .src8(stage1_12[5:0]),
         .src10(stage1_14[3:0]),
         .src11(stage1_15[0:0]),
         .dst({stage2_16[0], stage2_15[0], stage2_14[0], stage2_13[0], stage2_12[0], stage2_11[0], stage2_10[0], stage2_9[0], stage2_8[0], stage2_7[0], stage2_6[0], stage2_5[0], stage2_4[0]})
   );
   gpc221421251334_13 chain2_0(
         .src0({stage2_5[1:0], 2'h0}),
         .src1(stage2_6[2:0]),
         .src2(stage2_7[2:0]),
         .src3(stage2_8[0:0]),
         .src4(stage2_9[4:0]),
         .src5(stage2_10[1:0]),
         .src6(stage2_11[0:0]),
         .src7(stage2_12[1:0]),
         .src8(stage2_13[3:0]),
         .src9(stage2_14[0:0]),
         .src10(stage2_15[1:0]),
         .src11(stage2_16[1:0]),
         .dst({stage3_17[0], stage3_16[0], stage3_15[0], stage3_14[0], stage3_13[0], stage3_12[0], stage3_11[0], stage3_10[0], stage3_9[0], stage3_8[0], stage3_7[0], stage3_6[0], stage3_5[0]})
   );
endmodule
