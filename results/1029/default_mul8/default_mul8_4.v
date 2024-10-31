// probclass: mul
// size:      8
// stage:     4
// cost:      9
// elapsed:   1.253617763519287
module compressor (
      input wire [0:0] src0,
      input wire [1:0] src1,
      input wire [2:0] src2,
      input wire [3:0] src3,
      input wire [4:0] src4,
      input wire [5:0] src5,
      input wire [6:0] src6,
      input wire [7:0] src7,
      input wire [6:0] src8,
      input wire [5:0] src9,
      input wire [4:0] src10,
      input wire [3:0] src11,
      input wire [2:0] src12,
      input wire [1:0] src13,
      input wire [0:0] src14,
      output wire [0:0] dst0,
      output wire [0:0] dst1,
      output wire [0:0] dst2,
      output wire [0:0] dst3,
      output wire [0:0] dst4,
      output wire [0:0] dst5,
      output wire [0:0] dst6,
      output wire [0:0] dst7,
      output wire [0:0] dst8,
      output wire [0:0] dst9,
      output wire [0:0] dst10,
      output wire [0:0] dst11,
      output wire [0:0] dst12,
      output wire [0:0] dst13,
      output wire [0:0] dst14,
      output wire [0:0] dst15);

   wire [0:0] stage0_0;
   wire [1:0] stage0_1;
   wire [2:0] stage0_2;
   wire [3:0] stage0_3;
   wire [4:0] stage0_4;
   wire [5:0] stage0_5;
   wire [6:0] stage0_6;
   wire [7:0] stage0_7;
   wire [6:0] stage0_8;
   wire [5:0] stage0_9;
   wire [4:0] stage0_10;
   wire [3:0] stage0_11;
   wire [2:0] stage0_12;
   wire [1:0] stage0_13;
   wire [0:0] stage0_14;
   wire [0:0] stage1_0;
   wire [0:0] stage1_1;
   wire [0:0] stage1_2;
   wire [0:0] stage1_3;
   wire [3:0] stage1_4;
   wire [1:0] stage1_5;
   wire [1:0] stage1_6;
   wire [4:0] stage1_7;
   wire [2:0] stage1_8;
   wire [1:0] stage1_9;
   wire [6:0] stage1_10;
   wire [4:0] stage1_11;
   wire [2:0] stage1_12;
   wire [1:0] stage1_13;
   wire [0:0] stage1_14;
   wire [0:0] stage2_0;
   wire [0:0] stage2_1;
   wire [0:0] stage2_2;
   wire [0:0] stage2_3;
   wire [0:0] stage2_4;
   wire [0:0] stage2_5;
   wire [0:0] stage2_6;
   wire [4:0] stage2_7;
   wire [1:0] stage2_8;
   wire [0:0] stage2_9;
   wire [1:0] stage2_10;
   wire [1:0] stage2_11;
   wire [3:0] stage2_12;
   wire [2:0] stage2_13;
   wire [0:0] stage2_14;
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
   wire [2:0] stage3_11;
   wire [3:0] stage3_12;
   wire [2:0] stage3_13;
   wire [0:0] stage3_14;
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

   gpc433_5 gpc0 (
      {stage0_1[0], stage0_1[1], 1'b0},
      {stage0_2[0], stage0_2[1], stage0_2[2]},
      {stage0_3[0], stage0_3[1], stage0_3[2], stage0_3[3]},
      {stage1_5[0],stage1_4[0],stage1_3[0],stage1_2[0],stage1_1[0]}
   );
   gpc1163_5 gpc1 (
      {stage0_4[0], stage0_4[1], stage0_4[2]},
      {stage0_5[0], stage0_5[1], stage0_5[2], stage0_5[3], stage0_5[4], stage0_5[5]},
      {stage0_6[0]},
      {stage0_7[0]},
      {stage1_8[0],stage1_7[0],stage1_6[0],stage1_5[1],stage1_4[1]}
   );
   gpc606_5 gpc2 (
      {stage0_6[1], stage0_6[2], stage0_6[3], stage0_6[4], stage0_6[5], stage0_6[6]},
      {stage0_8[0], stage0_8[1], stage0_8[2], stage0_8[3], stage0_8[4], stage0_8[5]},
      {stage1_10[0],stage1_9[0],stage1_8[1],stage1_7[1],stage1_6[1]}
   );
   gpc615_5 gpc3 (
      {stage0_7[1], stage0_7[2], stage0_7[3], stage0_7[4], stage0_7[5]},
      {stage0_8[6]},
      {stage0_9[0], stage0_9[1], stage0_9[2], stage0_9[3], stage0_9[4], stage0_9[5]},
      {stage1_11[0],stage1_10[1],stage1_9[1],stage1_8[2],stage1_7[2]}
   );
   gpc1_1 gpc4 (
      {stage0_0[0]},
      {stage1_0[0]}
   );
   gpc1_1 gpc5 (
      {stage0_4[3]},
      {stage1_4[2]}
   );
   gpc1_1 gpc6 (
      {stage0_4[4]},
      {stage1_4[3]}
   );
   gpc1_1 gpc7 (
      {stage0_7[6]},
      {stage1_7[3]}
   );
   gpc1_1 gpc8 (
      {stage0_7[7]},
      {stage1_7[4]}
   );
   gpc1_1 gpc9 (
      {stage0_10[0]},
      {stage1_10[2]}
   );
   gpc1_1 gpc10 (
      {stage0_10[1]},
      {stage1_10[3]}
   );
   gpc1_1 gpc11 (
      {stage0_10[2]},
      {stage1_10[4]}
   );
   gpc1_1 gpc12 (
      {stage0_10[3]},
      {stage1_10[5]}
   );
   gpc1_1 gpc13 (
      {stage0_10[4]},
      {stage1_10[6]}
   );
   gpc1_1 gpc14 (
      {stage0_11[0]},
      {stage1_11[1]}
   );
   gpc1_1 gpc15 (
      {stage0_11[1]},
      {stage1_11[2]}
   );
   gpc1_1 gpc16 (
      {stage0_11[2]},
      {stage1_11[3]}
   );
   gpc1_1 gpc17 (
      {stage0_11[3]},
      {stage1_11[4]}
   );
   gpc1_1 gpc18 (
      {stage0_12[0]},
      {stage1_12[0]}
   );
   gpc1_1 gpc19 (
      {stage0_12[1]},
      {stage1_12[1]}
   );
   gpc1_1 gpc20 (
      {stage0_12[2]},
      {stage1_12[2]}
   );
   gpc1_1 gpc21 (
      {stage0_13[0]},
      {stage1_13[0]}
   );
   gpc1_1 gpc22 (
      {stage0_13[1]},
      {stage1_13[1]}
   );
   gpc1_1 gpc23 (
      {stage0_14[0]},
      {stage1_14[0]}
   );
   gpc1244_5 gpc24 (
      {stage1_4[0], stage1_4[1], stage1_4[2], stage1_4[3]},
      {stage1_5[0], stage1_5[1], 1'b0, 1'b0},
      {stage1_6[0], stage1_6[1]},
      {stage1_7[0]},
      {stage2_8[0],stage2_7[0],stage2_6[0],stage2_5[0],stage2_4[0]}
   );
   gpc623_5 gpc25 (
      {stage1_8[0], stage1_8[1], stage1_8[2]},
      {stage1_9[0], stage1_9[1]},
      {stage1_10[0], stage1_10[1], stage1_10[2], stage1_10[3], stage1_10[4], stage1_10[5]},
      {stage2_12[0],stage2_11[0],stage2_10[0],stage2_9[0],stage2_8[1]}
   );
   gpc151_4 gpc26 (
      {stage1_10[6]},
      {stage1_11[0], stage1_11[1], stage1_11[2], stage1_11[3], stage1_11[4]},
      {stage1_12[0]},
      {stage2_13[0],stage2_12[1],stage2_11[1],stage2_10[1]}
   );
   gpc1_1 gpc27 (
      {stage1_0[0]},
      {stage2_0[0]}
   );
   gpc1_1 gpc28 (
      {stage1_1[0]},
      {stage2_1[0]}
   );
   gpc1_1 gpc29 (
      {stage1_2[0]},
      {stage2_2[0]}
   );
   gpc1_1 gpc30 (
      {stage1_3[0]},
      {stage2_3[0]}
   );
   gpc1_1 gpc31 (
      {stage1_7[1]},
      {stage2_7[1]}
   );
   gpc1_1 gpc32 (
      {stage1_7[2]},
      {stage2_7[2]}
   );
   gpc1_1 gpc33 (
      {stage1_7[3]},
      {stage2_7[3]}
   );
   gpc1_1 gpc34 (
      {stage1_7[4]},
      {stage2_7[4]}
   );
   gpc1_1 gpc35 (
      {stage1_12[1]},
      {stage2_12[2]}
   );
   gpc1_1 gpc36 (
      {stage1_12[2]},
      {stage2_12[3]}
   );
   gpc1_1 gpc37 (
      {stage1_13[0]},
      {stage2_13[1]}
   );
   gpc1_1 gpc38 (
      {stage1_13[1]},
      {stage2_13[2]}
   );
   gpc1_1 gpc39 (
      {stage1_14[0]},
      {stage2_14[0]}
   );
   gpc2126_5 gpc40 (
      {stage2_7[0], stage2_7[1], stage2_7[2], stage2_7[3], stage2_7[4], 1'b0},
      {stage2_8[0], stage2_8[1]},
      {stage2_9[0]},
      {stage2_10[0], stage2_10[1]},
      {stage3_11[0],stage3_10[0],stage3_9[0],stage3_8[0],stage3_7[0]}
   );
   gpc1_1 gpc41 (
      {stage2_0[0]},
      {stage3_0[0]}
   );
   gpc1_1 gpc42 (
      {stage2_1[0]},
      {stage3_1[0]}
   );
   gpc1_1 gpc43 (
      {stage2_2[0]},
      {stage3_2[0]}
   );
   gpc1_1 gpc44 (
      {stage2_3[0]},
      {stage3_3[0]}
   );
   gpc1_1 gpc45 (
      {stage2_4[0]},
      {stage3_4[0]}
   );
   gpc1_1 gpc46 (
      {stage2_5[0]},
      {stage3_5[0]}
   );
   gpc1_1 gpc47 (
      {stage2_6[0]},
      {stage3_6[0]}
   );
   gpc1_1 gpc48 (
      {stage2_11[0]},
      {stage3_11[1]}
   );
   gpc1_1 gpc49 (
      {stage2_11[1]},
      {stage3_11[2]}
   );
   gpc1_1 gpc50 (
      {stage2_12[0]},
      {stage3_12[0]}
   );
   gpc1_1 gpc51 (
      {stage2_12[1]},
      {stage3_12[1]}
   );
   gpc1_1 gpc52 (
      {stage2_12[2]},
      {stage3_12[2]}
   );
   gpc1_1 gpc53 (
      {stage2_12[3]},
      {stage3_12[3]}
   );
   gpc1_1 gpc54 (
      {stage2_13[0]},
      {stage3_13[0]}
   );
   gpc1_1 gpc55 (
      {stage2_13[1]},
      {stage3_13[1]}
   );
   gpc1_1 gpc56 (
      {stage2_13[2]},
      {stage3_13[2]}
   );
   gpc1_1 gpc57 (
      {stage2_14[0]},
      {stage3_14[0]}
   );
   gpc1343_5 gpc58 (
      {stage3_11[0], stage3_11[1], stage3_11[2]},
      {stage3_12[0], stage3_12[1], stage3_12[2], stage3_12[3]},
      {stage3_13[0], stage3_13[1], stage3_13[2]},
      {stage3_14[0]},
      {stage4_15[0],stage4_14[0],stage4_13[0],stage4_12[0],stage4_11[0]}
   );
   gpc1_1 gpc59 (
      {stage3_0[0]},
      {stage4_0[0]}
   );
   gpc1_1 gpc60 (
      {stage3_1[0]},
      {stage4_1[0]}
   );
   gpc1_1 gpc61 (
      {stage3_2[0]},
      {stage4_2[0]}
   );
   gpc1_1 gpc62 (
      {stage3_3[0]},
      {stage4_3[0]}
   );
   gpc1_1 gpc63 (
      {stage3_4[0]},
      {stage4_4[0]}
   );
   gpc1_1 gpc64 (
      {stage3_5[0]},
      {stage4_5[0]}
   );
   gpc1_1 gpc65 (
      {stage3_6[0]},
      {stage4_6[0]}
   );
   gpc1_1 gpc66 (
      {stage3_7[0]},
      {stage4_7[0]}
   );
   gpc1_1 gpc67 (
      {stage3_8[0]},
      {stage4_8[0]}
   );
   gpc1_1 gpc68 (
      {stage3_9[0]},
      {stage4_9[0]}
   );
   gpc1_1 gpc69 (
      {stage3_10[0]},
      {stage4_10[0]}
   );
endmodule
