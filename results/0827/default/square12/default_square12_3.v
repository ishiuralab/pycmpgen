module compressor_without_rowadder (
      input wire [11:0] src0,
      input wire [11:0] src1,
      input wire [11:0] src2,
      input wire [11:0] src3,
      input wire [11:0] src4,
      input wire [11:0] src5,
      input wire [11:0] src6,
      input wire [11:0] src7,
      input wire [11:0] src8,
      input wire [11:0] src9,
      input wire [11:0] src10,
      input wire [11:0] src11,
      output wire [1:0] dst0,
      output wire [1:0] dst1,
      output wire [1:0] dst2,
      output wire [1:0] dst3,
      output wire [1:0] dst4,
      output wire [1:0] dst5,
      output wire [1:0] dst6,
      output wire [1:0] dst7,
      output wire [1:0] dst8,
      output wire [1:0] dst9,
      output wire [1:0] dst10,
      output wire [1:0] dst11,
      output wire [0:0] dst12,
      output wire [0:0] dst13,
      output wire [1:0] dst14);

   wire [11:0] stage0_0;
   wire [11:0] stage0_1;
   wire [11:0] stage0_2;
   wire [11:0] stage0_3;
   wire [11:0] stage0_4;
   wire [11:0] stage0_5;
   wire [11:0] stage0_6;
   wire [11:0] stage0_7;
   wire [11:0] stage0_8;
   wire [11:0] stage0_9;
   wire [11:0] stage0_10;
   wire [11:0] stage0_11;
   wire [6:0] stage1_0;
   wire [2:0] stage1_1;
   wire [8:0] stage1_2;
   wire [2:0] stage1_3;
   wire [9:0] stage1_4;
   wire [7:0] stage1_5;
   wire [7:0] stage1_6;
   wire [6:0] stage1_7;
   wire [3:0] stage1_8;
   wire [4:0] stage1_9;
   wire [9:0] stage1_10;
   wire [2:0] stage1_11;
   wire [2:0] stage1_12;
   wire [1:0] stage1_13;
   wire [6:0] stage2_0;
   wire [0:0] stage2_1;
   wire [6:0] stage2_2;
   wire [0:0] stage2_3;
   wire [2:0] stage2_4;
   wire [4:0] stage2_5;
   wire [3:0] stage2_6;
   wire [2:0] stage2_7;
   wire [5:0] stage2_8;
   wire [0:0] stage2_9;
   wire [6:0] stage2_10;
   wire [2:0] stage2_11;
   wire [0:0] stage2_12;
   wire [1:0] stage2_13;
   wire [0:0] stage2_14;
   wire [1:0] stage3_0;
   wire [1:0] stage3_1;
   wire [1:0] stage3_2;
   wire [1:0] stage3_3;
   wire [1:0] stage3_4;
   wire [1:0] stage3_5;
   wire [1:0] stage3_6;
   wire [1:0] stage3_7;
   wire [1:0] stage3_8;
   wire [1:0] stage3_9;
   wire [1:0] stage3_10;
   wire [1:0] stage3_11;
   wire [0:0] stage3_12;
   wire [0:0] stage3_13;
   wire [1:0] stage3_14;

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

   gpc606_5 gpc0 (
      {stage0_0[0], stage0_0[1], stage0_0[2], stage0_0[3], stage0_0[4], stage0_0[5]},
      {stage0_2[0], stage0_2[1], stage0_2[2], stage0_2[3], stage0_2[4], stage0_2[5]},
      {stage1_4[0],stage1_3[0],stage1_2[0],stage1_1[0],stage1_0[0]}
   );
   gpc606_5 gpc1 (
      {stage0_1[0], stage0_1[1], stage0_1[2], stage0_1[3], stage0_1[4], stage0_1[5]},
      {stage0_3[0], stage0_3[1], stage0_3[2], stage0_3[3], stage0_3[4], stage0_3[5]},
      {stage1_5[0],stage1_4[1],stage1_3[1],stage1_2[1],stage1_1[1]}
   );
   gpc606_5 gpc2 (
      {stage0_1[6], stage0_1[7], stage0_1[8], stage0_1[9], stage0_1[10], stage0_1[11]},
      {stage0_3[6], stage0_3[7], stage0_3[8], stage0_3[9], stage0_3[10], stage0_3[11]},
      {stage1_5[1],stage1_4[2],stage1_3[2],stage1_2[2],stage1_1[2]}
   );
   gpc2126_5 gpc3 (
      {stage0_4[0], stage0_4[1], stage0_4[2], stage0_4[3], stage0_4[4], stage0_4[5]},
      {stage0_5[0], stage0_5[1]},
      {stage0_6[0]},
      {stage0_7[0], stage0_7[1]},
      {stage1_8[0],stage1_7[0],stage1_6[0],stage1_5[2],stage1_4[3]}
   );
   gpc606_5 gpc4 (
      {stage0_5[2], stage0_5[3], stage0_5[4], stage0_5[5], stage0_5[6], stage0_5[7]},
      {stage0_7[2], stage0_7[3], stage0_7[4], stage0_7[5], stage0_7[6], stage0_7[7]},
      {stage1_9[0],stage1_8[1],stage1_7[1],stage1_6[1],stage1_5[3]}
   );
   gpc606_5 gpc5 (
      {stage0_6[1], stage0_6[2], stage0_6[3], stage0_6[4], stage0_6[5], stage0_6[6]},
      {stage0_8[0], stage0_8[1], stage0_8[2], stage0_8[3], stage0_8[4], stage0_8[5]},
      {stage1_10[0],stage1_9[1],stage1_8[2],stage1_7[2],stage1_6[2]}
   );
   gpc606_5 gpc6 (
      {stage0_8[6], stage0_8[7], stage0_8[8], stage0_8[9], stage0_8[10], stage0_8[11]},
      {stage0_10[0], stage0_10[1], stage0_10[2], stage0_10[3], stage0_10[4], stage0_10[5]},
      {stage1_12[0],stage1_11[0],stage1_10[1],stage1_9[2],stage1_8[3]}
   );
   gpc606_5 gpc7 (
      {stage0_9[0], stage0_9[1], stage0_9[2], stage0_9[3], stage0_9[4], stage0_9[5]},
      {stage0_11[0], stage0_11[1], stage0_11[2], stage0_11[3], stage0_11[4], stage0_11[5]},
      {stage1_13[0],stage1_12[1],stage1_11[1],stage1_10[2],stage1_9[3]}
   );
   gpc606_5 gpc8 (
      {stage0_9[6], stage0_9[7], stage0_9[8], stage0_9[9], stage0_9[10], stage0_9[11]},
      {stage0_11[6], stage0_11[7], stage0_11[8], stage0_11[9], stage0_11[10], stage0_11[11]},
      {stage1_13[1],stage1_12[2],stage1_11[2],stage1_10[3],stage1_9[4]}
   );
   gpc1_1 gpc9 (
      {stage0_0[6]},
      {stage1_0[1]}
   );
   gpc1_1 gpc10 (
      {stage0_0[7]},
      {stage1_0[2]}
   );
   gpc1_1 gpc11 (
      {stage0_0[8]},
      {stage1_0[3]}
   );
   gpc1_1 gpc12 (
      {stage0_0[9]},
      {stage1_0[4]}
   );
   gpc1_1 gpc13 (
      {stage0_0[10]},
      {stage1_0[5]}
   );
   gpc1_1 gpc14 (
      {stage0_0[11]},
      {stage1_0[6]}
   );
   gpc1_1 gpc15 (
      {stage0_2[6]},
      {stage1_2[3]}
   );
   gpc1_1 gpc16 (
      {stage0_2[7]},
      {stage1_2[4]}
   );
   gpc1_1 gpc17 (
      {stage0_2[8]},
      {stage1_2[5]}
   );
   gpc1_1 gpc18 (
      {stage0_2[9]},
      {stage1_2[6]}
   );
   gpc1_1 gpc19 (
      {stage0_2[10]},
      {stage1_2[7]}
   );
   gpc1_1 gpc20 (
      {stage0_2[11]},
      {stage1_2[8]}
   );
   gpc1_1 gpc21 (
      {stage0_4[6]},
      {stage1_4[4]}
   );
   gpc1_1 gpc22 (
      {stage0_4[7]},
      {stage1_4[5]}
   );
   gpc1_1 gpc23 (
      {stage0_4[8]},
      {stage1_4[6]}
   );
   gpc1_1 gpc24 (
      {stage0_4[9]},
      {stage1_4[7]}
   );
   gpc1_1 gpc25 (
      {stage0_4[10]},
      {stage1_4[8]}
   );
   gpc1_1 gpc26 (
      {stage0_4[11]},
      {stage1_4[9]}
   );
   gpc1_1 gpc27 (
      {stage0_5[8]},
      {stage1_5[4]}
   );
   gpc1_1 gpc28 (
      {stage0_5[9]},
      {stage1_5[5]}
   );
   gpc1_1 gpc29 (
      {stage0_5[10]},
      {stage1_5[6]}
   );
   gpc1_1 gpc30 (
      {stage0_5[11]},
      {stage1_5[7]}
   );
   gpc1_1 gpc31 (
      {stage0_6[7]},
      {stage1_6[3]}
   );
   gpc1_1 gpc32 (
      {stage0_6[8]},
      {stage1_6[4]}
   );
   gpc1_1 gpc33 (
      {stage0_6[9]},
      {stage1_6[5]}
   );
   gpc1_1 gpc34 (
      {stage0_6[10]},
      {stage1_6[6]}
   );
   gpc1_1 gpc35 (
      {stage0_6[11]},
      {stage1_6[7]}
   );
   gpc1_1 gpc36 (
      {stage0_7[8]},
      {stage1_7[3]}
   );
   gpc1_1 gpc37 (
      {stage0_7[9]},
      {stage1_7[4]}
   );
   gpc1_1 gpc38 (
      {stage0_7[10]},
      {stage1_7[5]}
   );
   gpc1_1 gpc39 (
      {stage0_7[11]},
      {stage1_7[6]}
   );
   gpc1_1 gpc40 (
      {stage0_10[6]},
      {stage1_10[4]}
   );
   gpc1_1 gpc41 (
      {stage0_10[7]},
      {stage1_10[5]}
   );
   gpc1_1 gpc42 (
      {stage0_10[8]},
      {stage1_10[6]}
   );
   gpc1_1 gpc43 (
      {stage0_10[9]},
      {stage1_10[7]}
   );
   gpc1_1 gpc44 (
      {stage0_10[10]},
      {stage1_10[8]}
   );
   gpc1_1 gpc45 (
      {stage0_10[11]},
      {stage1_10[9]}
   );
   gpc1334_5 gpc46 (
      {stage1_1[0], stage1_1[1], stage1_1[2], 1'b0},
      {stage1_2[0], stage1_2[1], stage1_2[2]},
      {stage1_3[0], stage1_3[1], stage1_3[2]},
      {stage1_4[0]},
      {stage2_5[0],stage2_4[0],stage2_3[0],stage2_2[0],stage2_1[0]}
   );
   gpc606_5 gpc47 (
      {stage1_4[1], stage1_4[2], stage1_4[3], stage1_4[4], stage1_4[5], stage1_4[6]},
      {stage1_6[0], stage1_6[1], stage1_6[2], stage1_6[3], stage1_6[4], stage1_6[5]},
      {stage2_8[0],stage2_7[0],stage2_6[0],stage2_5[1],stage2_4[1]}
   );
   gpc2063_5 gpc48 (
      {stage1_4[7], stage1_4[8], stage1_4[9]},
      {stage1_5[0], stage1_5[1], stage1_5[2], stage1_5[3], stage1_5[4], stage1_5[5]},
      {stage1_7[0], stage1_7[1]},
      {stage2_8[1],stage2_7[1],stage2_6[1],stage2_5[2],stage2_4[2]}
   );
   gpc615_5 gpc49 (
      {stage1_7[2], stage1_7[3], stage1_7[4], stage1_7[5], stage1_7[6]},
      {stage1_8[0]},
      {stage1_9[0], stage1_9[1], stage1_9[2], stage1_9[3], stage1_9[4], 1'b0},
      {stage2_11[0],stage2_10[0],stage2_9[0],stage2_8[2],stage2_7[2]}
   );
   gpc1325_5 gpc50 (
      {stage1_10[0], stage1_10[1], stage1_10[2], stage1_10[3], stage1_10[4]},
      {stage1_11[0], stage1_11[1]},
      {stage1_12[0], stage1_12[1], stage1_12[2]},
      {stage1_13[0]},
      {stage2_14[0],stage2_13[0],stage2_12[0],stage2_11[1],stage2_10[1]}
   );
   gpc1_1 gpc51 (
      {stage1_0[0]},
      {stage2_0[0]}
   );
   gpc1_1 gpc52 (
      {stage1_0[1]},
      {stage2_0[1]}
   );
   gpc1_1 gpc53 (
      {stage1_0[2]},
      {stage2_0[2]}
   );
   gpc1_1 gpc54 (
      {stage1_0[3]},
      {stage2_0[3]}
   );
   gpc1_1 gpc55 (
      {stage1_0[4]},
      {stage2_0[4]}
   );
   gpc1_1 gpc56 (
      {stage1_0[5]},
      {stage2_0[5]}
   );
   gpc1_1 gpc57 (
      {stage1_0[6]},
      {stage2_0[6]}
   );
   gpc1_1 gpc58 (
      {stage1_2[3]},
      {stage2_2[1]}
   );
   gpc1_1 gpc59 (
      {stage1_2[4]},
      {stage2_2[2]}
   );
   gpc1_1 gpc60 (
      {stage1_2[5]},
      {stage2_2[3]}
   );
   gpc1_1 gpc61 (
      {stage1_2[6]},
      {stage2_2[4]}
   );
   gpc1_1 gpc62 (
      {stage1_2[7]},
      {stage2_2[5]}
   );
   gpc1_1 gpc63 (
      {stage1_2[8]},
      {stage2_2[6]}
   );
   gpc1_1 gpc64 (
      {stage1_5[6]},
      {stage2_5[3]}
   );
   gpc1_1 gpc65 (
      {stage1_5[7]},
      {stage2_5[4]}
   );
   gpc1_1 gpc66 (
      {stage1_6[6]},
      {stage2_6[2]}
   );
   gpc1_1 gpc67 (
      {stage1_6[7]},
      {stage2_6[3]}
   );
   gpc1_1 gpc68 (
      {stage1_8[1]},
      {stage2_8[3]}
   );
   gpc1_1 gpc69 (
      {stage1_8[2]},
      {stage2_8[4]}
   );
   gpc1_1 gpc70 (
      {stage1_8[3]},
      {stage2_8[5]}
   );
   gpc1_1 gpc71 (
      {stage1_10[5]},
      {stage2_10[2]}
   );
   gpc1_1 gpc72 (
      {stage1_10[6]},
      {stage2_10[3]}
   );
   gpc1_1 gpc73 (
      {stage1_10[7]},
      {stage2_10[4]}
   );
   gpc1_1 gpc74 (
      {stage1_10[8]},
      {stage2_10[5]}
   );
   gpc1_1 gpc75 (
      {stage1_10[9]},
      {stage2_10[6]}
   );
   gpc1_1 gpc76 (
      {stage1_11[2]},
      {stage2_11[2]}
   );
   gpc1_1 gpc77 (
      {stage1_13[1]},
      {stage2_13[1]}
   );
   gpc606_5 gpc78 (
      {stage2_0[0], stage2_0[1], stage2_0[2], stage2_0[3], stage2_0[4], stage2_0[5]},
      {stage2_2[0], stage2_2[1], stage2_2[2], stage2_2[3], stage2_2[4], stage2_2[5]},
      {stage3_4[0],stage3_3[0],stage3_2[0],stage3_1[0],stage3_0[0]}
   );
   gpc1343_5 gpc79 (
      {stage2_4[0], stage2_4[1], stage2_4[2]},
      {stage2_5[0], stage2_5[1], stage2_5[2], stage2_5[3]},
      {stage2_6[0], stage2_6[1], stage2_6[2]},
      {stage2_7[0]},
      {stage3_8[0],stage3_7[0],stage3_6[0],stage3_5[0],stage3_4[1]}
   );
   gpc2063_5 gpc80 (
      {stage2_7[1], stage2_7[2], 1'b0},
      {stage2_8[0], stage2_8[1], stage2_8[2], stage2_8[3], stage2_8[4], stage2_8[5]},
      {stage2_10[0], stage2_10[1]},
      {stage3_11[0],stage3_10[0],stage3_9[0],stage3_8[1],stage3_7[1]}
   );
   gpc2135_5 gpc81 (
      {stage2_10[2], stage2_10[3], stage2_10[4], stage2_10[5], stage2_10[6]},
      {stage2_11[0], stage2_11[1], stage2_11[2]},
      {stage2_12[0]},
      {stage2_13[0], stage2_13[1]},
      {stage3_14[0],stage3_13[0],stage3_12[0],stage3_11[1],stage3_10[1]}
   );
   gpc1_1 gpc82 (
      {stage2_0[6]},
      {stage3_0[1]}
   );
   gpc1_1 gpc83 (
      {stage2_1[0]},
      {stage3_1[1]}
   );
   gpc1_1 gpc84 (
      {stage2_2[6]},
      {stage3_2[1]}
   );
   gpc1_1 gpc85 (
      {stage2_3[0]},
      {stage3_3[1]}
   );
   gpc1_1 gpc86 (
      {stage2_5[4]},
      {stage3_5[1]}
   );
   gpc1_1 gpc87 (
      {stage2_6[3]},
      {stage3_6[1]}
   );
   gpc1_1 gpc88 (
      {stage2_9[0]},
      {stage3_9[1]}
   );
   gpc1_1 gpc89 (
      {stage2_14[0]},
      {stage3_14[1]}
   );
endmodule
module cascade_fa_15(input [1:0] src0, input [1:0] src1, input [1:0] src2, input [1:0] src3, input [1:0] src4, input [1:0] src5, input [1:0] src6, input [1:0] src7, input [1:0] src8, input [1:0] src9, input [1:0] src10, input [1:0] src11, input [1:0] src12, input [1:0] src13, input [1:0] src14, output [15:0] dst);
    wire [14:0] gene;
    wire [14:0] prop;
    wire [15:0] out;
    wire [15:0] carryout;
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
        .DI({1'h0, gene[14:12]}),
        .S({1'h0, prop[14:12]})
    );
    assign dst = {carryout[14], out[14], out[13], out[12], out[11], out[10], out[9], out[8], out[7], out[6], out[5], out[4], out[3], out[2], out[1], out[0]};
endmodule

module rowadder2_1_15_(input [14:0] src0, input [14:0] src1, output [15:0] dst0);
    cascade_fa_15 cascade_fa_15(.src0({src0[0], src1[0]}), .src1({src0[1], src1[1]}), .src2({src0[2], src1[2]}), .src3({src0[3], src1[3]}), .src4({src0[4], src1[4]}), .src5({src0[5], src1[5]}), .src6({src0[6], src1[6]}), .src7({src0[7], src1[7]}), .src8({src0[8], src1[8]}), .src9({src0[9], src1[9]}), .src10({src0[10], src1[10]}), .src11({src0[11], src1[11]}), .src12({src0[12], src1[12]}), .src13({src0[13], src1[13]}), .src14({src0[14], src1[14]}), .dst(dst0));
endmodule


module rowadder(input [1:0] src0, input [1:0] src1, input [1:0] src2, input [1:0] src3, input [1:0] src4, input [1:0] src5, input [1:0] src6, input [1:0] src7, input [1:0] src8, input [1:0] src9, input [1:0] src10, input [1:0] src11, input [1:0] src12, input [1:0] src13, input [1:0] src14, output dst0, output dst1, output dst2, output dst3, output dst4, output dst5, output dst6, output dst7, output dst8, output dst9, output dst10, output dst11, output dst12, output dst13, output dst14, output dst15);
    rowadder_rowwise ra(.src0({src14[0], src13[0], src12[0], src11[0], src10[0], src9[0], src8[0], src7[0], src6[0], src5[0], src4[0], src3[0], src2[0], src1[0], src0[0]}), .src1({src14[1], src13[1], src12[1], src11[1], src10[1], src9[1], src8[1], src7[1], src6[1], src5[1], src4[1], src3[1], src2[1], src1[1], src0[1]}), .dst0({dst15, dst14, dst13, dst12, dst11, dst10, dst9, dst8, dst7, dst6, dst5, dst4, dst3, dst2, dst1, dst0}));
endmodule
module rowadder_rowwise(input [14:0] src0, input [14:0] src1, output [15:0] dst0);
    wire [15:0] internal0;
    assign dst0 = internal0;
    rowadder2_1_15_ rowadder_0(.src0(src0), .src1(src1), .dst0(internal0));
endmodule

module compressor(input [11:0] src0, input [11:0] src1, input [11:0] src2, input [11:0] src3, input [11:0] src4, input [11:0] src5, input [11:0] src6, input [11:0] src7, input [11:0] src8, input [11:0] src9, input [11:0] src10, input [11:0] src11, output dst0, output dst1, output dst2, output dst3, output dst4, output dst5, output dst6, output dst7, output dst8, output dst9, output dst10, output dst11, output dst12, output dst13, output dst14, output dst15);
    wire [1:0] compdst0;
    wire [1:0] compdst1;
    wire [1:0] compdst2;
    wire [1:0] compdst3;
    wire [1:0] compdst4;
    wire [1:0] compdst5;
    wire [1:0] compdst6;
    wire [1:0] compdst7;
    wire [1:0] compdst8;
    wire [1:0] compdst9;
    wire [1:0] compdst10;
    wire [1:0] compdst11;
    wire [0:0] compdst12;
    wire [0:0] compdst13;
    wire [1:0] compdst14;
    compressor_without_rowadder comp(.src0(src0), .src1(src1), .src2(src2), .src3(src3), .src4(src4), .src5(src5), .src6(src6), .src7(src7), .src8(src8), .src9(src9), .src10(src10), .src11(src11), .dst0(compdst0), .dst1(compdst1), .dst2(compdst2), .dst3(compdst3), .dst4(compdst4), .dst5(compdst5), .dst6(compdst6), .dst7(compdst7), .dst8(compdst8), .dst9(compdst9), .dst10(compdst10), .dst11(compdst11), .dst12(compdst12), .dst13(compdst13), .dst14(compdst14));
    rowadder ra(.src0(compdst0), .src1(compdst1), .src2(compdst2), .src3(compdst3), .src4(compdst4), .src5(compdst5), .src6(compdst6), .src7(compdst7), .src8(compdst8), .src9(compdst9), .src10(compdst10), .src11(compdst11), .src12({1'h0, compdst12}), .src13({1'h0, compdst13}), .src14(compdst14), .dst0(dst0), .dst1(dst1), .dst2(dst2), .dst3(dst3), .dst4(dst4), .dst5(dst5), .dst6(dst6), .dst7(dst7), .dst8(dst8), .dst9(dst9), .dst10(dst10), .dst11(dst11), .dst12(dst12), .dst13(dst13), .dst14(dst14), .dst15(dst15));
endmodule

