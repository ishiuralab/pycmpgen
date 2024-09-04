module compressor_without_rowadder (
      input wire [7:0] src0,
      input wire [7:0] src1,
      input wire [7:0] src2,
      input wire [7:0] src3,
      input wire [7:0] src4,
      input wire [7:0] src5,
      input wire [7:0] src6,
      input wire [7:0] src7,
      output wire [0:0] dst0,
      output wire [1:0] dst1,
      output wire [1:0] dst2,
      output wire [1:0] dst3,
      output wire [1:0] dst4,
      output wire [1:0] dst5,
      output wire [1:0] dst6,
      output wire [1:0] dst7,
      output wire [1:0] dst8,
      output wire [1:0] dst9);

   wire [7:0] stage0_0;
   wire [7:0] stage0_1;
   wire [7:0] stage0_2;
   wire [7:0] stage0_3;
   wire [7:0] stage0_4;
   wire [7:0] stage0_5;
   wire [7:0] stage0_6;
   wire [7:0] stage0_7;
   wire [5:0] stage1_0;
   wire [2:0] stage1_1;
   wire [5:0] stage1_2;
   wire [2:0] stage1_3;
   wire [5:0] stage1_4;
   wire [2:0] stage1_5;
   wire [3:0] stage1_6;
   wire [3:0] stage1_7;
   wire [1:0] stage1_8;
   wire [0:0] stage1_9;
   wire [0:0] stage2_0;
   wire [1:0] stage2_1;
   wire [1:0] stage2_2;
   wire [1:0] stage2_3;
   wire [1:0] stage2_4;
   wire [1:0] stage2_5;
   wire [1:0] stage2_6;
   wire [1:0] stage2_7;
   wire [1:0] stage2_8;
   wire [1:0] stage2_9;

   assign stage0_0 = src0;
   assign stage0_1 = src1;
   assign stage0_2 = src2;
   assign stage0_3 = src3;
   assign stage0_4 = src4;
   assign stage0_5 = src5;
   assign stage0_6 = src6;
   assign stage0_7 = src7;
   assign dst0 = stage2_0;
   assign dst1 = stage2_1;
   assign dst2 = stage2_2;
   assign dst3 = stage2_3;
   assign dst4 = stage2_4;
   assign dst5 = stage2_5;
   assign dst6 = stage2_6;
   assign dst7 = stage2_7;
   assign dst8 = stage2_8;
   assign dst9 = stage2_9;

   gpc1163_5 gpc0 (
      {stage0_0[0], stage0_0[1], stage0_0[2]},
      {stage0_1[0], stage0_1[1], stage0_1[2], stage0_1[3], stage0_1[4], stage0_1[5]},
      {stage0_2[0]},
      {stage0_3[0]},
      {stage1_4[0],stage1_3[0],stage1_2[0],stage1_1[0],stage1_0[0]}
   );
   gpc2063_5 gpc1 (
      {stage0_2[1], stage0_2[2], stage0_2[3]},
      {stage0_3[1], stage0_3[2], stage0_3[3], stage0_3[4], stage0_3[5], stage0_3[6]},
      {stage0_5[0], stage0_5[1]},
      {stage1_6[0],stage1_5[0],stage1_4[1],stage1_3[1],stage1_2[1]}
   );
   gpc615_5 gpc2 (
      {stage0_4[0], stage0_4[1], stage0_4[2], stage0_4[3], stage0_4[4]},
      {stage0_5[2]},
      {stage0_6[0], stage0_6[1], stage0_6[2], stage0_6[3], stage0_6[4], stage0_6[5]},
      {stage1_8[0],stage1_7[0],stage1_6[1],stage1_5[1],stage1_4[2]}
   );
   gpc615_5 gpc3 (
      {stage0_5[3], stage0_5[4], stage0_5[5], stage0_5[6], stage0_5[7]},
      {stage0_6[6]},
      {stage0_7[0], stage0_7[1], stage0_7[2], stage0_7[3], stage0_7[4], stage0_7[5]},
      {stage1_9[0],stage1_8[1],stage1_7[1],stage1_6[2],stage1_5[2]}
   );
   gpc1_1 gpc4 (
      {stage0_0[3]},
      {stage1_0[1]}
   );
   gpc1_1 gpc5 (
      {stage0_0[4]},
      {stage1_0[2]}
   );
   gpc1_1 gpc6 (
      {stage0_0[5]},
      {stage1_0[3]}
   );
   gpc1_1 gpc7 (
      {stage0_0[6]},
      {stage1_0[4]}
   );
   gpc1_1 gpc8 (
      {stage0_0[7]},
      {stage1_0[5]}
   );
   gpc1_1 gpc9 (
      {stage0_1[6]},
      {stage1_1[1]}
   );
   gpc1_1 gpc10 (
      {stage0_1[7]},
      {stage1_1[2]}
   );
   gpc1_1 gpc11 (
      {stage0_2[4]},
      {stage1_2[2]}
   );
   gpc1_1 gpc12 (
      {stage0_2[5]},
      {stage1_2[3]}
   );
   gpc1_1 gpc13 (
      {stage0_2[6]},
      {stage1_2[4]}
   );
   gpc1_1 gpc14 (
      {stage0_2[7]},
      {stage1_2[5]}
   );
   gpc1_1 gpc15 (
      {stage0_3[7]},
      {stage1_3[2]}
   );
   gpc1_1 gpc16 (
      {stage0_4[5]},
      {stage1_4[3]}
   );
   gpc1_1 gpc17 (
      {stage0_4[6]},
      {stage1_4[4]}
   );
   gpc1_1 gpc18 (
      {stage0_4[7]},
      {stage1_4[5]}
   );
   gpc1_1 gpc19 (
      {stage0_6[7]},
      {stage1_6[3]}
   );
   gpc1_1 gpc20 (
      {stage0_7[6]},
      {stage1_7[2]}
   );
   gpc1_1 gpc21 (
      {stage0_7[7]},
      {stage1_7[3]}
   );
   gpc2126_5 gpc22 (
      {stage1_0[0], stage1_0[1], stage1_0[2], stage1_0[3], stage1_0[4], stage1_0[5]},
      {stage1_1[0], stage1_1[1]},
      {stage1_2[0]},
      {stage1_3[0], stage1_3[1]},
      {stage2_4[0],stage2_3[0],stage2_2[0],stage2_1[0],stage2_0[0]}
   );
   gpc615_5 gpc23 (
      {stage1_2[1], stage1_2[2], stage1_2[3], stage1_2[4], stage1_2[5]},
      {stage1_3[2]},
      {stage1_4[0], stage1_4[1], stage1_4[2], stage1_4[3], stage1_4[4], stage1_4[5]},
      {stage2_6[0],stage2_5[0],stage2_4[1],stage2_3[1],stage2_2[1]}
   );
   gpc1343_5 gpc24 (
      {stage1_5[0], stage1_5[1], stage1_5[2]},
      {stage1_6[0], stage1_6[1], stage1_6[2], stage1_6[3]},
      {stage1_7[0], stage1_7[1], stage1_7[2]},
      {stage1_8[0]},
      {stage2_9[0],stage2_8[0],stage2_7[0],stage2_6[1],stage2_5[1]}
   );
   gpc1_1 gpc25 (
      {stage1_1[2]},
      {stage2_1[1]}
   );
   gpc1_1 gpc26 (
      {stage1_7[3]},
      {stage2_7[1]}
   );
   gpc1_1 gpc27 (
      {stage1_8[1]},
      {stage2_8[1]}
   );
   gpc1_1 gpc28 (
      {stage1_9[0]},
      {stage2_9[1]}
   );
endmodule
module cascade_fa_10(input [1:0] src0, input [1:0] src1, input [1:0] src2, input [1:0] src3, input [1:0] src4, input [1:0] src5, input [1:0] src6, input [1:0] src7, input [1:0] src8, input [1:0] src9, output [10:0] dst);
    wire [9:0] gene;
    wire [9:0] prop;
    wire [11:0] out;
    wire [11:0] carryout;
    LUT2 #(
        .INIT(4'h8)
    ) lut2_gene0(
        .O(gene[0]),
        .I0(src0[0]),
        .I1(src0[1])
    );
    LUT2 #(
        .INIT(4'h6)
    ) lut2_prop0(
        .O(prop[0]),
        .I0(src0[0]),
        .I1(src0[1])
    );
    LUT2 #(
        .INIT(4'h8)
    ) lut2_gene1(
        .O(gene[1]),
        .I0(src1[0]),
        .I1(src1[1])
    );
    LUT2 #(
        .INIT(4'h6)
    ) lut2_prop1(
        .O(prop[1]),
        .I0(src1[0]),
        .I1(src1[1])
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
        .DI({2'h0, gene[9:8]}),
        .S({2'h0, prop[9:8]})
    );
    assign dst = {carryout[9], out[9], out[8], out[7], out[6], out[5], out[4], out[3], out[2], out[1], out[0]};
endmodule

module rowadder2_1_10_(input [9:0] src0, input [9:0] src1, output [10:0] dst0);
    cascade_fa_10 cascade_fa_10(.src0({src0[0], src1[0]}), .src1({src0[1], src1[1]}), .src2({src0[2], src1[2]}), .src3({src0[3], src1[3]}), .src4({src0[4], src1[4]}), .src5({src0[5], src1[5]}), .src6({src0[6], src1[6]}), .src7({src0[7], src1[7]}), .src8({src0[8], src1[8]}), .src9({src0[9], src1[9]}), .dst(dst0));
endmodule


module rowadder(input [1:0] src0, input [1:0] src1, input [1:0] src2, input [1:0] src3, input [1:0] src4, input [1:0] src5, input [1:0] src6, input [1:0] src7, input [1:0] src8, input [1:0] src9, output dst0, output dst1, output dst2, output dst3, output dst4, output dst5, output dst6, output dst7, output dst8, output dst9, output dst10);
    rowadder_rowwise ra(.src0({src9[0], src8[0], src7[0], src6[0], src5[0], src4[0], src3[0], src2[0], src1[0], src0[0]}), .src1({src9[1], src8[1], src7[1], src6[1], src5[1], src4[1], src3[1], src2[1], src1[1], src0[1]}), .dst0({dst10, dst9, dst8, dst7, dst6, dst5, dst4, dst3, dst2, dst1, dst0}));
endmodule
module rowadder_rowwise(input [9:0] src0, input [9:0] src1, output [10:0] dst0);
    wire [10:0] internal0;
    assign dst0 = internal0;
    rowadder2_1_10_ rowadder_0(.src0(src0), .src1(src1), .dst0(internal0));
endmodule

module compressor(input [7:0] src0, input [7:0] src1, input [7:0] src2, input [7:0] src3, input [7:0] src4, input [7:0] src5, input [7:0] src6, input [7:0] src7, output dst0, output dst1, output dst2, output dst3, output dst4, output dst5, output dst6, output dst7, output dst8, output dst9, output dst10);
    wire [0:0] compdst0;
    wire [1:0] compdst1;
    wire [1:0] compdst2;
    wire [1:0] compdst3;
    wire [1:0] compdst4;
    wire [1:0] compdst5;
    wire [1:0] compdst6;
    wire [1:0] compdst7;
    wire [1:0] compdst8;
    wire [1:0] compdst9;
    compressor_without_rowadder comp(.src0(src0), .src1(src1), .src2(src2), .src3(src3), .src4(src4), .src5(src5), .src6(src6), .src7(src7), .dst0(compdst0), .dst1(compdst1), .dst2(compdst2), .dst3(compdst3), .dst4(compdst4), .dst5(compdst5), .dst6(compdst6), .dst7(compdst7), .dst8(compdst8), .dst9(compdst9));
    rowadder ra(.src0({1'h0, compdst0}), .src1(compdst1), .src2(compdst2), .src3(compdst3), .src4(compdst4), .src5(compdst5), .src6(compdst6), .src7(compdst7), .src8(compdst8), .src9(compdst9), .dst0(dst0), .dst1(dst1), .dst2(dst2), .dst3(dst3), .dst4(dst4), .dst5(dst5), .dst6(dst6), .dst7(dst7), .dst8(dst8), .dst9(dst9), .dst10(dst10));
endmodule

