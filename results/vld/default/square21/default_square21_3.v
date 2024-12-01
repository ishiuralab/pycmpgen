module compressor_without_rowadder (
      input wire [20:0] src0,
      input wire [20:0] src1,
      input wire [20:0] src2,
      input wire [20:0] src3,
      input wire [20:0] src4,
      input wire [20:0] src5,
      input wire [20:0] src6,
      input wire [20:0] src7,
      input wire [20:0] src8,
      input wire [20:0] src9,
      input wire [20:0] src10,
      input wire [20:0] src11,
      input wire [20:0] src12,
      input wire [20:0] src13,
      input wire [20:0] src14,
      input wire [20:0] src15,
      input wire [20:0] src16,
      input wire [20:0] src17,
      input wire [20:0] src18,
      input wire [20:0] src19,
      input wire [20:0] src20,
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
      output wire [1:0] dst12,
      output wire [1:0] dst13,
      output wire [1:0] dst14,
      output wire [1:0] dst15,
      output wire [1:0] dst16,
      output wire [1:0] dst17,
      output wire [1:0] dst18,
      output wire [1:0] dst19,
      output wire [1:0] dst20,
      output wire [1:0] dst21,
      output wire [1:0] dst22,
      output wire [0:0] dst23,
      output wire [1:0] dst24);

   wire [20:0] stage0_0;
   wire [20:0] stage0_1;
   wire [20:0] stage0_2;
   wire [20:0] stage0_3;
   wire [20:0] stage0_4;
   wire [20:0] stage0_5;
   wire [20:0] stage0_6;
   wire [20:0] stage0_7;
   wire [20:0] stage0_8;
   wire [20:0] stage0_9;
   wire [20:0] stage0_10;
   wire [20:0] stage0_11;
   wire [20:0] stage0_12;
   wire [20:0] stage0_13;
   wire [20:0] stage0_14;
   wire [20:0] stage0_15;
   wire [20:0] stage0_16;
   wire [20:0] stage0_17;
   wire [20:0] stage0_18;
   wire [20:0] stage0_19;
   wire [20:0] stage0_20;
   wire [9:0] stage1_0;
   wire [6:0] stage1_1;
   wire [10:0] stage1_2;
   wire [10:0] stage1_3;
   wire [13:0] stage1_4;
   wire [6:0] stage1_5;
   wire [11:0] stage1_6;
   wire [10:0] stage1_7;
   wire [7:0] stage1_8;
   wire [11:0] stage1_9;
   wire [10:0] stage1_10;
   wire [7:0] stage1_11;
   wire [7:0] stage1_12;
   wire [11:0] stage1_13;
   wire [11:0] stage1_14;
   wire [6:0] stage1_15;
   wire [15:0] stage1_16;
   wire [8:0] stage1_17;
   wire [7:0] stage1_18;
   wire [7:0] stage1_19;
   wire [9:0] stage1_20;
   wire [5:0] stage1_21;
   wire [2:0] stage1_22;
   wire [5:0] stage2_0;
   wire [1:0] stage2_1;
   wire [6:0] stage2_2;
   wire [2:0] stage2_3;
   wire [5:0] stage2_4;
   wire [4:0] stage2_5;
   wire [2:0] stage2_6;
   wire [5:0] stage2_7;
   wire [4:0] stage2_8;
   wire [2:0] stage2_9;
   wire [3:0] stage2_10;
   wire [5:0] stage2_11;
   wire [4:0] stage2_12;
   wire [2:0] stage2_13;
   wire [5:0] stage2_14;
   wire [3:0] stage2_15;
   wire [3:0] stage2_16;
   wire [4:0] stage2_17;
   wire [4:0] stage2_18;
   wire [2:0] stage2_19;
   wire [4:0] stage2_20;
   wire [2:0] stage2_21;
   wire [3:0] stage2_22;
   wire [0:0] stage2_23;
   wire [0:0] stage2_24;
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
   wire [1:0] stage3_12;
   wire [1:0] stage3_13;
   wire [1:0] stage3_14;
   wire [1:0] stage3_15;
   wire [1:0] stage3_16;
   wire [1:0] stage3_17;
   wire [1:0] stage3_18;
   wire [1:0] stage3_19;
   wire [1:0] stage3_20;
   wire [1:0] stage3_21;
   wire [1:0] stage3_22;
   wire [0:0] stage3_23;
   wire [1:0] stage3_24;

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
   assign dst18 = stage3_18;
   assign dst19 = stage3_19;
   assign dst20 = stage3_20;
   assign dst21 = stage3_21;
   assign dst22 = stage3_22;
   assign dst23 = stage3_23;
   assign dst24 = stage3_24;

   gpc606_5 gpc0 (
      {stage0_0[0], stage0_0[1], stage0_0[2], stage0_0[3], stage0_0[4], stage0_0[5]},
      {stage0_2[0], stage0_2[1], stage0_2[2], stage0_2[3], stage0_2[4], stage0_2[5]},
      {stage1_4[0],stage1_3[0],stage1_2[0],stage1_1[0],stage1_0[0]}
   );
   gpc2063_5 gpc1 (
      {stage0_0[6], stage0_0[7], stage0_0[8]},
      {stage0_1[0], stage0_1[1], stage0_1[2], stage0_1[3], stage0_1[4], stage0_1[5]},
      {stage0_3[0], stage0_3[1]},
      {stage1_4[1],stage1_3[1],stage1_2[1],stage1_1[1],stage1_0[1]}
   );
   gpc2063_5 gpc2 (
      {stage0_0[9], stage0_0[10], stage0_0[11]},
      {stage0_1[6], stage0_1[7], stage0_1[8], stage0_1[9], stage0_1[10], stage0_1[11]},
      {stage0_3[2], stage0_3[3]},
      {stage1_4[2],stage1_3[2],stage1_2[2],stage1_1[2],stage1_0[2]}
   );
   gpc2063_5 gpc3 (
      {stage0_0[12], stage0_0[13], stage0_0[14]},
      {stage0_1[12], stage0_1[13], stage0_1[14], stage0_1[15], stage0_1[16], stage0_1[17]},
      {stage0_3[4], stage0_3[5]},
      {stage1_4[3],stage1_3[3],stage1_2[3],stage1_1[3],stage1_0[3]}
   );
   gpc425_5 gpc4 (
      {stage0_2[6], stage0_2[7], stage0_2[8], stage0_2[9], stage0_2[10]},
      {stage0_3[6], stage0_3[7]},
      {stage0_4[0], stage0_4[1], stage0_4[2], stage0_4[3]},
      {stage1_6[0],stage1_5[0],stage1_4[4],stage1_3[4],stage1_2[4]}
   );
   gpc615_5 gpc5 (
      {stage0_2[11], stage0_2[12], stage0_2[13], stage0_2[14], stage0_2[15]},
      {stage0_3[8]},
      {stage0_4[4], stage0_4[5], stage0_4[6], stage0_4[7], stage0_4[8], stage0_4[9]},
      {stage1_6[1],stage1_5[1],stage1_4[5],stage1_3[5],stage1_2[5]}
   );
   gpc606_5 gpc6 (
      {stage0_3[9], stage0_3[10], stage0_3[11], stage0_3[12], stage0_3[13], stage0_3[14]},
      {stage0_5[0], stage0_5[1], stage0_5[2], stage0_5[3], stage0_5[4], stage0_5[5]},
      {stage1_7[0],stage1_6[2],stage1_5[2],stage1_4[6],stage1_3[6]}
   );
   gpc1253_5 gpc7 (
      {stage0_3[15], stage0_3[16], stage0_3[17]},
      {stage0_4[10], stage0_4[11], stage0_4[12], stage0_4[13], stage0_4[14]},
      {stage0_5[6], stage0_5[7]},
      {stage0_6[0]},
      {stage1_7[1],stage1_6[3],stage1_5[3],stage1_4[7],stage1_3[7]}
   );
   gpc606_5 gpc8 (
      {stage0_5[8], stage0_5[9], stage0_5[10], stage0_5[11], stage0_5[12], stage0_5[13]},
      {stage0_7[0], stage0_7[1], stage0_7[2], stage0_7[3], stage0_7[4], stage0_7[5]},
      {stage1_9[0],stage1_8[0],stage1_7[2],stage1_6[4],stage1_5[4]}
   );
   gpc606_5 gpc9 (
      {stage0_5[14], stage0_5[15], stage0_5[16], stage0_5[17], stage0_5[18], stage0_5[19]},
      {stage0_7[6], stage0_7[7], stage0_7[8], stage0_7[9], stage0_7[10], stage0_7[11]},
      {stage1_9[1],stage1_8[1],stage1_7[3],stage1_6[5],stage1_5[5]}
   );
   gpc606_5 gpc10 (
      {stage0_6[1], stage0_6[2], stage0_6[3], stage0_6[4], stage0_6[5], stage0_6[6]},
      {stage0_8[0], stage0_8[1], stage0_8[2], stage0_8[3], stage0_8[4], stage0_8[5]},
      {stage1_10[0],stage1_9[2],stage1_8[2],stage1_7[4],stage1_6[6]}
   );
   gpc606_5 gpc11 (
      {stage0_6[7], stage0_6[8], stage0_6[9], stage0_6[10], stage0_6[11], stage0_6[12]},
      {stage0_8[6], stage0_8[7], stage0_8[8], stage0_8[9], stage0_8[10], stage0_8[11]},
      {stage1_10[1],stage1_9[3],stage1_8[3],stage1_7[5],stage1_6[7]}
   );
   gpc615_5 gpc12 (
      {stage0_6[13], stage0_6[14], stage0_6[15], stage0_6[16], stage0_6[17]},
      {stage0_7[12]},
      {stage0_8[12], stage0_8[13], stage0_8[14], stage0_8[15], stage0_8[16], stage0_8[17]},
      {stage1_10[2],stage1_9[4],stage1_8[4],stage1_7[6],stage1_6[8]}
   );
   gpc615_5 gpc13 (
      {stage0_7[13], stage0_7[14], stage0_7[15], stage0_7[16], stage0_7[17]},
      {stage0_8[18]},
      {stage0_9[0], stage0_9[1], stage0_9[2], stage0_9[3], stage0_9[4], stage0_9[5]},
      {stage1_11[0],stage1_10[3],stage1_9[5],stage1_8[5],stage1_7[7]}
   );
   gpc606_5 gpc14 (
      {stage0_9[6], stage0_9[7], stage0_9[8], stage0_9[9], stage0_9[10], stage0_9[11]},
      {stage0_11[0], stage0_11[1], stage0_11[2], stage0_11[3], stage0_11[4], stage0_11[5]},
      {stage1_13[0],stage1_12[0],stage1_11[1],stage1_10[4],stage1_9[6]}
   );
   gpc615_5 gpc15 (
      {stage0_9[12], stage0_9[13], stage0_9[14], stage0_9[15], stage0_9[16]},
      {stage0_10[0]},
      {stage0_11[6], stage0_11[7], stage0_11[8], stage0_11[9], stage0_11[10], stage0_11[11]},
      {stage1_13[1],stage1_12[1],stage1_11[2],stage1_10[5],stage1_9[7]}
   );
   gpc606_5 gpc16 (
      {stage0_10[1], stage0_10[2], stage0_10[3], stage0_10[4], stage0_10[5], stage0_10[6]},
      {stage0_12[0], stage0_12[1], stage0_12[2], stage0_12[3], stage0_12[4], stage0_12[5]},
      {stage1_14[0],stage1_13[2],stage1_12[2],stage1_11[3],stage1_10[6]}
   );
   gpc606_5 gpc17 (
      {stage0_10[7], stage0_10[8], stage0_10[9], stage0_10[10], stage0_10[11], stage0_10[12]},
      {stage0_12[6], stage0_12[7], stage0_12[8], stage0_12[9], stage0_12[10], stage0_12[11]},
      {stage1_14[1],stage1_13[3],stage1_12[3],stage1_11[4],stage1_10[7]}
   );
   gpc2126_5 gpc18 (
      {stage0_10[13], stage0_10[14], stage0_10[15], stage0_10[16], stage0_10[17], stage0_10[18]},
      {stage0_11[12], stage0_11[13]},
      {stage0_12[12]},
      {stage0_13[0], stage0_13[1]},
      {stage1_14[2],stage1_13[4],stage1_12[4],stage1_11[5],stage1_10[8]}
   );
   gpc1316_5 gpc19 (
      {stage0_11[14], stage0_11[15], stage0_11[16], stage0_11[17], stage0_11[18], stage0_11[19]},
      {stage0_12[13]},
      {stage0_13[2], stage0_13[3], stage0_13[4]},
      {stage0_14[0]},
      {stage1_15[0],stage1_14[3],stage1_13[5],stage1_12[5],stage1_11[6]}
   );
   gpc606_5 gpc20 (
      {stage0_12[14], stage0_12[15], stage0_12[16], stage0_12[17], stage0_12[18], stage0_12[19]},
      {stage0_14[1], stage0_14[2], stage0_14[3], stage0_14[4], stage0_14[5], stage0_14[6]},
      {stage1_16[0],stage1_15[1],stage1_14[4],stage1_13[6],stage1_12[6]}
   );
   gpc615_5 gpc21 (
      {stage0_13[5], stage0_13[6], stage0_13[7], stage0_13[8], stage0_13[9]},
      {stage0_14[7]},
      {stage0_15[0], stage0_15[1], stage0_15[2], stage0_15[3], stage0_15[4], stage0_15[5]},
      {stage1_17[0],stage1_16[1],stage1_15[2],stage1_14[5],stage1_13[7]}
   );
   gpc615_5 gpc22 (
      {stage0_13[10], stage0_13[11], stage0_13[12], stage0_13[13], stage0_13[14]},
      {stage0_14[8]},
      {stage0_15[6], stage0_15[7], stage0_15[8], stage0_15[9], stage0_15[10], stage0_15[11]},
      {stage1_17[1],stage1_16[2],stage1_15[3],stage1_14[6],stage1_13[8]}
   );
   gpc1244_5 gpc23 (
      {stage0_13[15], stage0_13[16], stage0_13[17], stage0_13[18]},
      {stage0_14[9], stage0_14[10], stage0_14[11], stage0_14[12]},
      {stage0_15[12], stage0_15[13]},
      {stage0_16[0]},
      {stage1_17[2],stage1_16[3],stage1_15[4],stage1_14[7],stage1_13[9]}
   );
   gpc615_5 gpc24 (
      {stage0_14[13], stage0_14[14], stage0_14[15], stage0_14[16], stage0_14[17]},
      {stage0_15[14]},
      {stage0_16[1], stage0_16[2], stage0_16[3], stage0_16[4], stage0_16[5], stage0_16[6]},
      {stage1_18[0],stage1_17[3],stage1_16[4],stage1_15[5],stage1_14[8]}
   );
   gpc1406_5 gpc25 (
      {stage0_15[15], stage0_15[16], stage0_15[17], stage0_15[18], stage0_15[19], stage0_15[20]},
      {stage0_17[0], stage0_17[1], stage0_17[2], stage0_17[3]},
      {stage0_18[0]},
      {stage1_19[0],stage1_18[1],stage1_17[4],stage1_16[5],stage1_15[6]}
   );
   gpc615_5 gpc26 (
      {stage0_16[7], stage0_16[8], stage0_16[9], stage0_16[10], stage0_16[11]},
      {stage0_17[4]},
      {stage0_18[1], stage0_18[2], stage0_18[3], stage0_18[4], stage0_18[5], stage0_18[6]},
      {stage1_20[0],stage1_19[1],stage1_18[2],stage1_17[5],stage1_16[6]}
   );
   gpc606_5 gpc27 (
      {stage0_17[5], stage0_17[6], stage0_17[7], stage0_17[8], stage0_17[9], stage0_17[10]},
      {stage0_19[0], stage0_19[1], stage0_19[2], stage0_19[3], stage0_19[4], stage0_19[5]},
      {stage1_21[0],stage1_20[1],stage1_19[2],stage1_18[3],stage1_17[6]}
   );
   gpc615_5 gpc28 (
      {stage0_17[11], stage0_17[12], stage0_17[13], stage0_17[14], stage0_17[15]},
      {stage0_18[7]},
      {stage0_19[6], stage0_19[7], stage0_19[8], stage0_19[9], stage0_19[10], stage0_19[11]},
      {stage1_21[1],stage1_20[2],stage1_19[3],stage1_18[4],stage1_17[7]}
   );
   gpc615_5 gpc29 (
      {stage0_17[16], stage0_17[17], stage0_17[18], stage0_17[19], stage0_17[20]},
      {stage0_18[8]},
      {stage0_19[12], stage0_19[13], stage0_19[14], stage0_19[15], stage0_19[16], stage0_19[17]},
      {stage1_21[2],stage1_20[3],stage1_19[4],stage1_18[5],stage1_17[8]}
   );
   gpc606_5 gpc30 (
      {stage0_18[9], stage0_18[10], stage0_18[11], stage0_18[12], stage0_18[13], stage0_18[14]},
      {stage0_20[0], stage0_20[1], stage0_20[2], stage0_20[3], stage0_20[4], stage0_20[5]},
      {stage1_22[0],stage1_21[3],stage1_20[4],stage1_19[5],stage1_18[6]}
   );
   gpc606_5 gpc31 (
      {stage0_18[15], stage0_18[16], stage0_18[17], stage0_18[18], stage0_18[19], stage0_18[20]},
      {stage0_20[6], stage0_20[7], stage0_20[8], stage0_20[9], stage0_20[10], stage0_20[11]},
      {stage1_22[1],stage1_21[4],stage1_20[5],stage1_19[6],stage1_18[7]}
   );
   gpc63_4 gpc32 (
      {stage0_19[18], stage0_19[19], stage0_19[20]},
      {stage0_20[12], stage0_20[13], stage0_20[14], stage0_20[15], stage0_20[16], stage0_20[17]},
      {stage1_22[2],stage1_21[5],stage1_20[6],stage1_19[7]}
   );
   gpc1_1 gpc33 (
      {stage0_0[15]},
      {stage1_0[4]}
   );
   gpc1_1 gpc34 (
      {stage0_0[16]},
      {stage1_0[5]}
   );
   gpc1_1 gpc35 (
      {stage0_0[17]},
      {stage1_0[6]}
   );
   gpc1_1 gpc36 (
      {stage0_0[18]},
      {stage1_0[7]}
   );
   gpc1_1 gpc37 (
      {stage0_0[19]},
      {stage1_0[8]}
   );
   gpc1_1 gpc38 (
      {stage0_0[20]},
      {stage1_0[9]}
   );
   gpc1_1 gpc39 (
      {stage0_1[18]},
      {stage1_1[4]}
   );
   gpc1_1 gpc40 (
      {stage0_1[19]},
      {stage1_1[5]}
   );
   gpc1_1 gpc41 (
      {stage0_1[20]},
      {stage1_1[6]}
   );
   gpc1_1 gpc42 (
      {stage0_2[16]},
      {stage1_2[6]}
   );
   gpc1_1 gpc43 (
      {stage0_2[17]},
      {stage1_2[7]}
   );
   gpc1_1 gpc44 (
      {stage0_2[18]},
      {stage1_2[8]}
   );
   gpc1_1 gpc45 (
      {stage0_2[19]},
      {stage1_2[9]}
   );
   gpc1_1 gpc46 (
      {stage0_2[20]},
      {stage1_2[10]}
   );
   gpc1_1 gpc47 (
      {stage0_3[18]},
      {stage1_3[8]}
   );
   gpc1_1 gpc48 (
      {stage0_3[19]},
      {stage1_3[9]}
   );
   gpc1_1 gpc49 (
      {stage0_3[20]},
      {stage1_3[10]}
   );
   gpc1_1 gpc50 (
      {stage0_4[15]},
      {stage1_4[8]}
   );
   gpc1_1 gpc51 (
      {stage0_4[16]},
      {stage1_4[9]}
   );
   gpc1_1 gpc52 (
      {stage0_4[17]},
      {stage1_4[10]}
   );
   gpc1_1 gpc53 (
      {stage0_4[18]},
      {stage1_4[11]}
   );
   gpc1_1 gpc54 (
      {stage0_4[19]},
      {stage1_4[12]}
   );
   gpc1_1 gpc55 (
      {stage0_4[20]},
      {stage1_4[13]}
   );
   gpc1_1 gpc56 (
      {stage0_5[20]},
      {stage1_5[6]}
   );
   gpc1_1 gpc57 (
      {stage0_6[18]},
      {stage1_6[9]}
   );
   gpc1_1 gpc58 (
      {stage0_6[19]},
      {stage1_6[10]}
   );
   gpc1_1 gpc59 (
      {stage0_6[20]},
      {stage1_6[11]}
   );
   gpc1_1 gpc60 (
      {stage0_7[18]},
      {stage1_7[8]}
   );
   gpc1_1 gpc61 (
      {stage0_7[19]},
      {stage1_7[9]}
   );
   gpc1_1 gpc62 (
      {stage0_7[20]},
      {stage1_7[10]}
   );
   gpc1_1 gpc63 (
      {stage0_8[19]},
      {stage1_8[6]}
   );
   gpc1_1 gpc64 (
      {stage0_8[20]},
      {stage1_8[7]}
   );
   gpc1_1 gpc65 (
      {stage0_9[17]},
      {stage1_9[8]}
   );
   gpc1_1 gpc66 (
      {stage0_9[18]},
      {stage1_9[9]}
   );
   gpc1_1 gpc67 (
      {stage0_9[19]},
      {stage1_9[10]}
   );
   gpc1_1 gpc68 (
      {stage0_9[20]},
      {stage1_9[11]}
   );
   gpc1_1 gpc69 (
      {stage0_10[19]},
      {stage1_10[9]}
   );
   gpc1_1 gpc70 (
      {stage0_10[20]},
      {stage1_10[10]}
   );
   gpc1_1 gpc71 (
      {stage0_11[20]},
      {stage1_11[7]}
   );
   gpc1_1 gpc72 (
      {stage0_12[20]},
      {stage1_12[7]}
   );
   gpc1_1 gpc73 (
      {stage0_13[19]},
      {stage1_13[10]}
   );
   gpc1_1 gpc74 (
      {stage0_13[20]},
      {stage1_13[11]}
   );
   gpc1_1 gpc75 (
      {stage0_14[18]},
      {stage1_14[9]}
   );
   gpc1_1 gpc76 (
      {stage0_14[19]},
      {stage1_14[10]}
   );
   gpc1_1 gpc77 (
      {stage0_14[20]},
      {stage1_14[11]}
   );
   gpc1_1 gpc78 (
      {stage0_16[12]},
      {stage1_16[7]}
   );
   gpc1_1 gpc79 (
      {stage0_16[13]},
      {stage1_16[8]}
   );
   gpc1_1 gpc80 (
      {stage0_16[14]},
      {stage1_16[9]}
   );
   gpc1_1 gpc81 (
      {stage0_16[15]},
      {stage1_16[10]}
   );
   gpc1_1 gpc82 (
      {stage0_16[16]},
      {stage1_16[11]}
   );
   gpc1_1 gpc83 (
      {stage0_16[17]},
      {stage1_16[12]}
   );
   gpc1_1 gpc84 (
      {stage0_16[18]},
      {stage1_16[13]}
   );
   gpc1_1 gpc85 (
      {stage0_16[19]},
      {stage1_16[14]}
   );
   gpc1_1 gpc86 (
      {stage0_16[20]},
      {stage1_16[15]}
   );
   gpc1_1 gpc87 (
      {stage0_20[18]},
      {stage1_20[7]}
   );
   gpc1_1 gpc88 (
      {stage0_20[19]},
      {stage1_20[8]}
   );
   gpc1_1 gpc89 (
      {stage0_20[20]},
      {stage1_20[9]}
   );
   gpc615_5 gpc90 (
      {stage1_0[0], stage1_0[1], stage1_0[2], stage1_0[3], stage1_0[4]},
      {stage1_1[0]},
      {stage1_2[0], stage1_2[1], stage1_2[2], stage1_2[3], stage1_2[4], stage1_2[5]},
      {stage2_4[0],stage2_3[0],stage2_2[0],stage2_1[0],stage2_0[0]}
   );
   gpc606_5 gpc91 (
      {stage1_1[1], stage1_1[2], stage1_1[3], stage1_1[4], stage1_1[5], stage1_1[6]},
      {stage1_3[0], stage1_3[1], stage1_3[2], stage1_3[3], stage1_3[4], stage1_3[5]},
      {stage2_5[0],stage2_4[1],stage2_3[1],stage2_2[1],stage2_1[1]}
   );
   gpc615_5 gpc92 (
      {stage1_3[6], stage1_3[7], stage1_3[8], stage1_3[9], stage1_3[10]},
      {stage1_4[0]},
      {stage1_5[0], stage1_5[1], stage1_5[2], stage1_5[3], stage1_5[4], stage1_5[5]},
      {stage2_7[0],stage2_6[0],stage2_5[1],stage2_4[2],stage2_3[2]}
   );
   gpc606_5 gpc93 (
      {stage1_4[1], stage1_4[2], stage1_4[3], stage1_4[4], stage1_4[5], stage1_4[6]},
      {stage1_6[0], stage1_6[1], stage1_6[2], stage1_6[3], stage1_6[4], stage1_6[5]},
      {stage2_8[0],stage2_7[1],stage2_6[1],stage2_5[2],stage2_4[3]}
   );
   gpc606_5 gpc94 (
      {stage1_4[7], stage1_4[8], stage1_4[9], stage1_4[10], stage1_4[11], stage1_4[12]},
      {stage1_6[6], stage1_6[7], stage1_6[8], stage1_6[9], stage1_6[10], stage1_6[11]},
      {stage2_8[1],stage2_7[2],stage2_6[2],stage2_5[3],stage2_4[4]}
   );
   gpc615_5 gpc95 (
      {stage1_7[0], stage1_7[1], stage1_7[2], stage1_7[3], stage1_7[4]},
      {stage1_8[0]},
      {stage1_9[0], stage1_9[1], stage1_9[2], stage1_9[3], stage1_9[4], stage1_9[5]},
      {stage2_11[0],stage2_10[0],stage2_9[0],stage2_8[2],stage2_7[3]}
   );
   gpc615_5 gpc96 (
      {stage1_7[5], stage1_7[6], stage1_7[7], stage1_7[8], stage1_7[9]},
      {stage1_8[1]},
      {stage1_9[6], stage1_9[7], stage1_9[8], stage1_9[9], stage1_9[10], stage1_9[11]},
      {stage2_11[1],stage2_10[1],stage2_9[1],stage2_8[3],stage2_7[4]}
   );
   gpc606_5 gpc97 (
      {stage1_8[2], stage1_8[3], stage1_8[4], stage1_8[5], stage1_8[6], stage1_8[7]},
      {stage1_10[0], stage1_10[1], stage1_10[2], stage1_10[3], stage1_10[4], stage1_10[5]},
      {stage2_12[0],stage2_11[2],stage2_10[2],stage2_9[2],stage2_8[4]}
   );
   gpc615_5 gpc98 (
      {stage1_10[6], stage1_10[7], stage1_10[8], stage1_10[9], stage1_10[10]},
      {stage1_11[0]},
      {stage1_12[0], stage1_12[1], stage1_12[2], stage1_12[3], stage1_12[4], stage1_12[5]},
      {stage2_14[0],stage2_13[0],stage2_12[1],stage2_11[3],stage2_10[3]}
   );
   gpc606_5 gpc99 (
      {stage1_11[1], stage1_11[2], stage1_11[3], stage1_11[4], stage1_11[5], stage1_11[6]},
      {stage1_13[0], stage1_13[1], stage1_13[2], stage1_13[3], stage1_13[4], stage1_13[5]},
      {stage2_15[0],stage2_14[1],stage2_13[1],stage2_12[2],stage2_11[4]}
   );
   gpc606_5 gpc100 (
      {stage1_13[6], stage1_13[7], stage1_13[8], stage1_13[9], stage1_13[10], stage1_13[11]},
      {stage1_15[0], stage1_15[1], stage1_15[2], stage1_15[3], stage1_15[4], stage1_15[5]},
      {stage2_17[0],stage2_16[0],stage2_15[1],stage2_14[2],stage2_13[2]}
   );
   gpc606_5 gpc101 (
      {stage1_14[0], stage1_14[1], stage1_14[2], stage1_14[3], stage1_14[4], stage1_14[5]},
      {stage1_16[0], stage1_16[1], stage1_16[2], stage1_16[3], stage1_16[4], stage1_16[5]},
      {stage2_18[0],stage2_17[1],stage2_16[1],stage2_15[2],stage2_14[3]}
   );
   gpc615_5 gpc102 (
      {stage1_14[6], stage1_14[7], stage1_14[8], stage1_14[9], stage1_14[10]},
      {stage1_15[6]},
      {stage1_16[6], stage1_16[7], stage1_16[8], stage1_16[9], stage1_16[10], stage1_16[11]},
      {stage2_18[1],stage2_17[2],stage2_16[2],stage2_15[3],stage2_14[4]}
   );
   gpc1244_5 gpc103 (
      {stage1_16[12], stage1_16[13], stage1_16[14], stage1_16[15]},
      {stage1_17[0], stage1_17[1], stage1_17[2], stage1_17[3]},
      {stage1_18[0], stage1_18[1]},
      {stage1_19[0]},
      {stage2_20[0],stage2_19[0],stage2_18[2],stage2_17[3],stage2_16[3]}
   );
   gpc615_5 gpc104 (
      {stage1_17[4], stage1_17[5], stage1_17[6], stage1_17[7], stage1_17[8]},
      {stage1_18[2]},
      {stage1_19[1], stage1_19[2], stage1_19[3], stage1_19[4], stage1_19[5], stage1_19[6]},
      {stage2_21[0],stage2_20[1],stage2_19[1],stage2_18[3],stage2_17[4]}
   );
   gpc615_5 gpc105 (
      {stage1_18[3], stage1_18[4], stage1_18[5], stage1_18[6], stage1_18[7]},
      {stage1_19[7]},
      {stage1_20[0], stage1_20[1], stage1_20[2], stage1_20[3], stage1_20[4], stage1_20[5]},
      {stage2_22[0],stage2_21[1],stage2_20[2],stage2_19[2],stage2_18[4]}
   );
   gpc1163_5 gpc106 (
      {stage1_20[6], stage1_20[7], stage1_20[8]},
      {stage1_21[0], stage1_21[1], stage1_21[2], stage1_21[3], stage1_21[4], stage1_21[5]},
      {stage1_22[0]},
      {1'b0},
      {stage2_24[0],stage2_23[0],stage2_22[1],stage2_21[2],stage2_20[3]}
   );
   gpc1_1 gpc107 (
      {stage1_0[5]},
      {stage2_0[1]}
   );
   gpc1_1 gpc108 (
      {stage1_0[6]},
      {stage2_0[2]}
   );
   gpc1_1 gpc109 (
      {stage1_0[7]},
      {stage2_0[3]}
   );
   gpc1_1 gpc110 (
      {stage1_0[8]},
      {stage2_0[4]}
   );
   gpc1_1 gpc111 (
      {stage1_0[9]},
      {stage2_0[5]}
   );
   gpc1_1 gpc112 (
      {stage1_2[6]},
      {stage2_2[2]}
   );
   gpc1_1 gpc113 (
      {stage1_2[7]},
      {stage2_2[3]}
   );
   gpc1_1 gpc114 (
      {stage1_2[8]},
      {stage2_2[4]}
   );
   gpc1_1 gpc115 (
      {stage1_2[9]},
      {stage2_2[5]}
   );
   gpc1_1 gpc116 (
      {stage1_2[10]},
      {stage2_2[6]}
   );
   gpc1_1 gpc117 (
      {stage1_4[13]},
      {stage2_4[5]}
   );
   gpc1_1 gpc118 (
      {stage1_5[6]},
      {stage2_5[4]}
   );
   gpc1_1 gpc119 (
      {stage1_7[10]},
      {stage2_7[5]}
   );
   gpc1_1 gpc120 (
      {stage1_11[7]},
      {stage2_11[5]}
   );
   gpc1_1 gpc121 (
      {stage1_12[6]},
      {stage2_12[3]}
   );
   gpc1_1 gpc122 (
      {stage1_12[7]},
      {stage2_12[4]}
   );
   gpc1_1 gpc123 (
      {stage1_14[11]},
      {stage2_14[5]}
   );
   gpc1_1 gpc124 (
      {stage1_20[9]},
      {stage2_20[4]}
   );
   gpc1_1 gpc125 (
      {stage1_22[1]},
      {stage2_22[2]}
   );
   gpc1_1 gpc126 (
      {stage1_22[2]},
      {stage2_22[3]}
   );
   gpc615_5 gpc127 (
      {stage2_0[0], stage2_0[1], stage2_0[2], stage2_0[3], stage2_0[4]},
      {stage2_1[0]},
      {stage2_2[0], stage2_2[1], stage2_2[2], stage2_2[3], stage2_2[4], stage2_2[5]},
      {stage3_4[0],stage3_3[0],stage3_2[0],stage3_1[0],stage3_0[0]}
   );
   gpc2063_5 gpc128 (
      {stage2_3[0], stage2_3[1], stage2_3[2]},
      {stage2_4[0], stage2_4[1], stage2_4[2], stage2_4[3], stage2_4[4], stage2_4[5]},
      {stage2_6[0], stage2_6[1]},
      {stage3_7[0],stage3_6[0],stage3_5[0],stage3_4[1],stage3_3[1]}
   );
   gpc615_5 gpc129 (
      {stage2_5[0], stage2_5[1], stage2_5[2], stage2_5[3], stage2_5[4]},
      {stage2_6[2]},
      {stage2_7[0], stage2_7[1], stage2_7[2], stage2_7[3], stage2_7[4], stage2_7[5]},
      {stage3_9[0],stage3_8[0],stage3_7[1],stage3_6[1],stage3_5[1]}
   );
   gpc135_4 gpc130 (
      {stage2_8[0], stage2_8[1], stage2_8[2], stage2_8[3], stage2_8[4]},
      {stage2_9[0], stage2_9[1], stage2_9[2]},
      {stage2_10[0]},
      {stage3_11[0],stage3_10[0],stage3_9[1],stage3_8[1]}
   );
   gpc2063_5 gpc131 (
      {stage2_10[1], stage2_10[2], stage2_10[3]},
      {stage2_11[0], stage2_11[1], stage2_11[2], stage2_11[3], stage2_11[4], stage2_11[5]},
      {stage2_13[0], stage2_13[1]},
      {stage3_14[0],stage3_13[0],stage3_12[0],stage3_11[1],stage3_10[1]}
   );
   gpc615_5 gpc132 (
      {stage2_12[0], stage2_12[1], stage2_12[2], stage2_12[3], stage2_12[4]},
      {stage2_13[2]},
      {stage2_14[0], stage2_14[1], stage2_14[2], stage2_14[3], stage2_14[4], stage2_14[5]},
      {stage3_16[0],stage3_15[0],stage3_14[1],stage3_13[1],stage3_12[1]}
   );
   gpc1244_5 gpc133 (
      {stage2_15[0], stage2_15[1], stage2_15[2], stage2_15[3]},
      {stage2_16[0], stage2_16[1], stage2_16[2], stage2_16[3]},
      {stage2_17[0], stage2_17[1]},
      {stage2_18[0]},
      {stage3_19[0],stage3_18[0],stage3_17[0],stage3_16[1],stage3_15[1]}
   );
   gpc1343_5 gpc134 (
      {stage2_17[2], stage2_17[3], stage2_17[4]},
      {stage2_18[1], stage2_18[2], stage2_18[3], stage2_18[4]},
      {stage2_19[0], stage2_19[1], stage2_19[2]},
      {stage2_20[0]},
      {stage3_21[0],stage3_20[0],stage3_19[1],stage3_18[1],stage3_17[1]}
   );
   gpc1334_5 gpc135 (
      {stage2_20[1], stage2_20[2], stage2_20[3], stage2_20[4]},
      {stage2_21[0], stage2_21[1], stage2_21[2]},
      {stage2_22[0], stage2_22[1], stage2_22[2]},
      {stage2_23[0]},
      {stage3_24[0],stage3_23[0],stage3_22[0],stage3_21[1],stage3_20[1]}
   );
   gpc1_1 gpc136 (
      {stage2_0[5]},
      {stage3_0[1]}
   );
   gpc1_1 gpc137 (
      {stage2_1[1]},
      {stage3_1[1]}
   );
   gpc1_1 gpc138 (
      {stage2_2[6]},
      {stage3_2[1]}
   );
   gpc1_1 gpc139 (
      {stage2_22[3]},
      {stage3_22[1]}
   );
   gpc1_1 gpc140 (
      {stage2_24[0]},
      {stage3_24[1]}
   );
endmodule
module cascade_fa_25(input [1:0] src0, input [1:0] src1, input [1:0] src2, input [1:0] src3, input [1:0] src4, input [1:0] src5, input [1:0] src6, input [1:0] src7, input [1:0] src8, input [1:0] src9, input [1:0] src10, input [1:0] src11, input [1:0] src12, input [1:0] src13, input [1:0] src14, input [1:0] src15, input [1:0] src16, input [1:0] src17, input [1:0] src18, input [1:0] src19, input [1:0] src20, input [1:0] src21, input [1:0] src22, input [1:0] src23, input [1:0] src24, output [25:0] dst);
    wire [24:0] gene;
    wire [24:0] prop;
    wire [27:0] out;
    wire [27:0] carryout;
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
        .DI({3'h0, gene[24:24]}),
        .S({3'h0, prop[24:24]})
    );
    assign dst = {carryout[24], out[24], out[23], out[22], out[21], out[20], out[19], out[18], out[17], out[16], out[15], out[14], out[13], out[12], out[11], out[10], out[9], out[8], out[7], out[6], out[5], out[4], out[3], out[2], out[1], out[0]};
endmodule

module rowadder2_1_25_(input [24:0] src0, input [24:0] src1, output [25:0] dst0);
    cascade_fa_25 cascade_fa_25(.src0({src0[0], src1[0]}), .src1({src0[1], src1[1]}), .src2({src0[2], src1[2]}), .src3({src0[3], src1[3]}), .src4({src0[4], src1[4]}), .src5({src0[5], src1[5]}), .src6({src0[6], src1[6]}), .src7({src0[7], src1[7]}), .src8({src0[8], src1[8]}), .src9({src0[9], src1[9]}), .src10({src0[10], src1[10]}), .src11({src0[11], src1[11]}), .src12({src0[12], src1[12]}), .src13({src0[13], src1[13]}), .src14({src0[14], src1[14]}), .src15({src0[15], src1[15]}), .src16({src0[16], src1[16]}), .src17({src0[17], src1[17]}), .src18({src0[18], src1[18]}), .src19({src0[19], src1[19]}), .src20({src0[20], src1[20]}), .src21({src0[21], src1[21]}), .src22({src0[22], src1[22]}), .src23({src0[23], src1[23]}), .src24({src0[24], src1[24]}), .dst(dst0));
endmodule


module rowadder(input [1:0] src0, input [1:0] src1, input [1:0] src2, input [1:0] src3, input [1:0] src4, input [1:0] src5, input [1:0] src6, input [1:0] src7, input [1:0] src8, input [1:0] src9, input [1:0] src10, input [1:0] src11, input [1:0] src12, input [1:0] src13, input [1:0] src14, input [1:0] src15, input [1:0] src16, input [1:0] src17, input [1:0] src18, input [1:0] src19, input [1:0] src20, input [1:0] src21, input [1:0] src22, input [1:0] src23, input [1:0] src24, output dst0, output dst1, output dst2, output dst3, output dst4, output dst5, output dst6, output dst7, output dst8, output dst9, output dst10, output dst11, output dst12, output dst13, output dst14, output dst15, output dst16, output dst17, output dst18, output dst19, output dst20, output dst21, output dst22, output dst23, output dst24, output dst25);
    rowadder_rowwise ra(.src0({src24[0], src23[0], src22[0], src21[0], src20[0], src19[0], src18[0], src17[0], src16[0], src15[0], src14[0], src13[0], src12[0], src11[0], src10[0], src9[0], src8[0], src7[0], src6[0], src5[0], src4[0], src3[0], src2[0], src1[0], src0[0]}), .src1({src24[1], src23[1], src22[1], src21[1], src20[1], src19[1], src18[1], src17[1], src16[1], src15[1], src14[1], src13[1], src12[1], src11[1], src10[1], src9[1], src8[1], src7[1], src6[1], src5[1], src4[1], src3[1], src2[1], src1[1], src0[1]}), .dst0({dst25, dst24, dst23, dst22, dst21, dst20, dst19, dst18, dst17, dst16, dst15, dst14, dst13, dst12, dst11, dst10, dst9, dst8, dst7, dst6, dst5, dst4, dst3, dst2, dst1, dst0}));
endmodule
module rowadder_rowwise(input [24:0] src0, input [24:0] src1, output [25:0] dst0);
    wire [25:0] internal0;
    assign dst0 = internal0;
    rowadder2_1_25_ rowadder_0(.src0(src0), .src1(src1), .dst0(internal0));
endmodule

module compressor(input [20:0] src0, input [20:0] src1, input [20:0] src2, input [20:0] src3, input [20:0] src4, input [20:0] src5, input [20:0] src6, input [20:0] src7, input [20:0] src8, input [20:0] src9, input [20:0] src10, input [20:0] src11, input [20:0] src12, input [20:0] src13, input [20:0] src14, input [20:0] src15, input [20:0] src16, input [20:0] src17, input [20:0] src18, input [20:0] src19, input [20:0] src20, output dst0, output dst1, output dst2, output dst3, output dst4, output dst5, output dst6, output dst7, output dst8, output dst9, output dst10, output dst11, output dst12, output dst13, output dst14, output dst15, output dst16, output dst17, output dst18, output dst19, output dst20, output dst21, output dst22, output dst23, output dst24, output dst25);
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
    wire [1:0] compdst12;
    wire [1:0] compdst13;
    wire [1:0] compdst14;
    wire [1:0] compdst15;
    wire [1:0] compdst16;
    wire [1:0] compdst17;
    wire [1:0] compdst18;
    wire [1:0] compdst19;
    wire [1:0] compdst20;
    wire [1:0] compdst21;
    wire [1:0] compdst22;
    wire [0:0] compdst23;
    wire [1:0] compdst24;
    compressor_without_rowadder comp(.src0(src0), .src1(src1), .src2(src2), .src3(src3), .src4(src4), .src5(src5), .src6(src6), .src7(src7), .src8(src8), .src9(src9), .src10(src10), .src11(src11), .src12(src12), .src13(src13), .src14(src14), .src15(src15), .src16(src16), .src17(src17), .src18(src18), .src19(src19), .src20(src20), .dst0(compdst0), .dst1(compdst1), .dst2(compdst2), .dst3(compdst3), .dst4(compdst4), .dst5(compdst5), .dst6(compdst6), .dst7(compdst7), .dst8(compdst8), .dst9(compdst9), .dst10(compdst10), .dst11(compdst11), .dst12(compdst12), .dst13(compdst13), .dst14(compdst14), .dst15(compdst15), .dst16(compdst16), .dst17(compdst17), .dst18(compdst18), .dst19(compdst19), .dst20(compdst20), .dst21(compdst21), .dst22(compdst22), .dst23(compdst23), .dst24(compdst24));
    rowadder ra(.src0(compdst0), .src1(compdst1), .src2(compdst2), .src3(compdst3), .src4(compdst4), .src5(compdst5), .src6(compdst6), .src7(compdst7), .src8(compdst8), .src9(compdst9), .src10(compdst10), .src11(compdst11), .src12(compdst12), .src13(compdst13), .src14(compdst14), .src15(compdst15), .src16(compdst16), .src17(compdst17), .src18(compdst18), .src19(compdst19), .src20(compdst20), .src21(compdst21), .src22(compdst22), .src23({1'h0, compdst23}), .src24(compdst24), .dst0(dst0), .dst1(dst1), .dst2(dst2), .dst3(dst3), .dst4(dst4), .dst5(dst5), .dst6(dst6), .dst7(dst7), .dst8(dst8), .dst9(dst9), .dst10(dst10), .dst11(dst11), .dst12(dst12), .dst13(dst13), .dst14(dst14), .dst15(dst15), .dst16(dst16), .dst17(dst17), .dst18(dst18), .dst19(dst19), .dst20(dst20), .dst21(dst21), .dst22(dst22), .dst23(dst23), .dst24(dst24), .dst25(dst25));
endmodule

