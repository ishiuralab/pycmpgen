module gpc21340615_9(input [4:0] src0, input [0:0] src1, input [5:0] src2, input [3:0] src4, input [2:0] src5, input [0:0] src6, input [1:0] src7, output [8:0] dst);
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
    LUT6_2 #(
        .INIT(64'h17e8e817e81717e8)
    ) lut6_2_inst5(
        .O5(gene[5]),
        .O6(prop[5]),
        .I0(src4[0]),
        .I1(src4[1]),
        .I2(src4[2]),
        .I3(src5[1]),
        .I4(src5[2]),
        .I5(src5[0])
    );
    LUT6_2 #(
        .INIT(64'h1717ffffe8e800)
    ) lut6_2_inst6(
        .O5(gene[6]),
        .O6(prop[6]),
        .I0(src4[0]),
        .I1(src4[1]),
        .I2(src4[2]),
        .I3(src5[1]),
        .I4(src5[2]),
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

module gpc42421341415_13(input [4:0] src0, input [0:0] src1, input [3:0] src2, input [0:0] src3, input [3:0] src4, input [2:0] src5, input [0:0] src6, input [1:0] src7, input [3:0] src8, input [1:0] src9, input [3:0] src10, output [12:0] dst);
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
    LUT6_2 #(
        .INIT(64'h17e8e817e81717e8)
    ) lut6_2_inst5(
        .O5(gene[5]),
        .O6(prop[5]),
        .I0(src4[0]),
        .I1(src4[1]),
        .I2(src4[2]),
        .I3(src5[1]),
        .I4(src5[2]),
        .I5(src5[0])
    );
    LUT6_2 #(
        .INIT(64'h1717ffffe8e800)
    ) lut6_2_inst6(
        .O5(gene[6]),
        .O6(prop[6]),
        .I0(src4[0]),
        .I1(src4[1]),
        .I2(src4[2]),
        .I3(src5[1]),
        .I4(src5[2]),
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
    LUT6_2 #(
        .INIT(64'h8778788778878778)
    ) lut6_2_inst10(
        .O5(gene[10]),
        .O6(prop[10]),
        .I0(src9[0]),
        .I1(src9[1]),
        .I2(src10[1]),
        .I3(src10[2]),
        .I4(src10[3]),
        .I5(src10[0])
    );
    LUT5 #(
        .INIT(32'h80000000)
    ) lut5_gene11(
        .O(gene[11]),
        .I0(src9[0]),
        .I1(src9[1]),
        .I2(src10[1]),
        .I3(src10[2]),
        .I4(src10[3])
    );
    LUT5 #(
        .INIT(32'h7ff8f880)
    ) lut5_prop11(
        .O(prop[11]),
        .I0(src9[0]),
        .I1(src9[1]),
        .I2(src10[1]),
        .I3(src10[2]),
        .I4(src10[3])
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
      input [8:0] src0,
      input [8:0] src1,
      input [8:0] src2,
      input [8:0] src3,
      input [8:0] src4,
      input [8:0] src5,
      input [8:0] src6,
      input [8:0] src7,
      input [8:0] src8,
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
      output [0:0] dst12);

   wire [8:0] stage0_0;
   wire [8:0] stage0_1;
   wire [8:0] stage0_2;
   wire [8:0] stage0_3;
   wire [8:0] stage0_4;
   wire [8:0] stage0_5;
   wire [8:0] stage0_6;
   wire [8:0] stage0_7;
   wire [8:0] stage0_8;
   wire [4:0] stage1_0;
   wire [4:0] stage1_1;
   wire [3:0] stage1_2;
   wire [4:0] stage1_3;
   wire [6:0] stage1_4;
   wire [1:0] stage1_5;
   wire [5:0] stage1_6;
   wire [2:0] stage1_7;
   wire [5:0] stage1_8;
   wire [1:0] stage1_9;
   wire [0:0] stage1_10;
   wire [4:0] stage2_0;
   wire [0:0] stage2_1;
   wire [3:0] stage2_2;
   wire [0:0] stage2_3;
   wire [3:0] stage2_4;
   wire [2:0] stage2_5;
   wire [0:0] stage2_6;
   wire [1:0] stage2_7;
   wire [3:0] stage2_8;
   wire [1:0] stage2_9;
   wire [1:0] stage2_10;
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

   assign stage0_0 = src0;
   assign stage0_1 = src1;
   assign stage0_2 = src2;
   assign stage0_3 = src3;
   assign stage0_4 = src4;
   assign stage0_5 = src5;
   assign stage0_6 = src6;
   assign stage0_7 = src7;
   assign stage0_8 = src8;
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
   assign stage1_0[4:1] = stage0_0[8:5];
   assign stage1_1[4:2] = stage0_1[8:6];
   assign stage1_2[3:2] = stage0_2[8:7];
   assign stage1_3[4:2] = stage0_3[8:6];
   assign stage1_4[6:2] = stage0_4[8:4];
   assign stage1_6[5:3] = stage0_6[8:6];
   assign stage1_8[5:3] = stage0_8[8:6];
   assign stage2_0[4:0] = stage1_0[4:0];
   assign stage2_2[3:1] = stage1_2[3:1];
   assign stage2_4[3:2] = stage1_4[6:5];
   assign stage2_5[2:2] = stage1_5[1:1];
   assign stage2_8[3:2] = stage1_8[5:4];
   assign stage2_9[1:1] = stage1_9[1:1];
   assign stage2_10[1:1] = stage1_10[0:0];

   gpc21340615_9 chain0_0(
         .src0(stage0_0[4:0]),
         .src1(stage0_1[0:0]),
         .src2(stage0_2[5:0]),
         .src4(stage0_4[3:0]),
         .src5(stage0_5[2:0]),
         .src6(stage0_6[0:0]),
         .src7(stage0_7[1:0]),
         .dst({stage1_8[0], stage1_7[0], stage1_6[0], stage1_5[0], stage1_4[0], stage1_3[0], stage1_2[0], stage1_1[0], stage1_0[0]})
   );
   gpc6060615_9 chain0_1(
         .src0(stage0_1[5:1]),
         .src1(stage0_2[6:6]),
         .src2(stage0_3[5:0]),
         .src4(stage0_5[8:3]),
         .src6(stage0_7[7:2]),
         .dst({stage1_9[0], stage1_8[1], stage1_7[1], stage1_6[1], stage1_5[1], stage1_4[1], stage1_3[1], stage1_2[1], stage1_1[1]})
   );
   gpc615_5 chain0_2(
         .src0(stage0_6[5:1]),
         .src1(stage0_7[8:8]),
         .src2(stage0_8[5:0]),
         .dst({stage1_10[0], stage1_9[1], stage1_8[2], stage1_7[2], stage1_6[2]})
   );
   gpc615_5 chain1_0(
         .src0(stage1_1[4:0]),
         .src1(stage1_2[0:0]),
         .src2({stage1_3[4:0], 1'h0}),
         .dst({stage2_5[0], stage2_4[0], stage2_3[0], stage2_2[0], stage2_1[0]})
   );
   gpc615_5 chain1_1(
         .src0(stage1_4[4:0]),
         .src1(stage1_5[0:0]),
         .src2(stage1_6[5:0]),
         .dst({stage2_8[0], stage2_7[0], stage2_6[0], stage2_5[1], stage2_4[1]})
   );
   gpc143_4 chain1_2(
         .src0(stage1_7[2:0]),
         .src1(stage1_8[3:0]),
         .src2(stage1_9[0:0]),
         .dst({stage2_10[0], stage2_9[0], stage2_8[1], stage2_7[1]})
   );
   gpc42421341415_13 chain2_0(
         .src0(stage2_0[4:0]),
         .src1(stage2_1[0:0]),
         .src2(stage2_2[3:0]),
         .src3(stage2_3[0:0]),
         .src4(stage2_4[3:0]),
         .src5(stage2_5[2:0]),
         .src6(stage2_6[0:0]),
         .src7(stage2_7[1:0]),
         .src8(stage2_8[3:0]),
         .src9(stage2_9[1:0]),
         .src10({stage2_10[1:0], 2'h0}),
         .dst({stage3_12[0], stage3_11[0], stage3_10[0], stage3_9[0], stage3_8[0], stage3_7[0], stage3_6[0], stage3_5[0], stage3_4[0], stage3_3[0], stage3_2[0], stage3_1[0], stage3_0[0]})
   );
endmodule
