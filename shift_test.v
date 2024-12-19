module compressor (
      input wire [31:0] src0,
      input wire [31:0] src1,
      input wire [31:0] src2,
      input wire [31:0] src3,
      output wire [0:0] dst0,
      output wire [1:0] dst1,
      output wire [0:0] dst2,
      output wire [1:0] dst3,
      output wire [1:0] dst4,
      output wire [1:0] dst5,
      output wire [1:0] dst6,
      output wire [1:0] dst7,
      output wire [1:0] dst8);

   wire [31:0] stage0_0;
   wire [31:0] stage0_1;
   wire [31:0] stage0_2;
   wire [31:0] stage0_3;
   wire [7:0] stage1_0;
   wire [12:0] stage1_1;
   wire [16:0] stage1_2;
   wire [17:0] stage1_3;
   wire [10:0] stage1_4;
   wire [5:0] stage1_5;
   wire [0:0] stage1_6;
   wire [0:0] stage1_7;
   wire [4:0] stage2_0;
   wire [6:0] stage2_1;
   wire [8:0] stage2_2;
   wire [7:0] stage2_3;
   wire [6:0] stage2_4;
   wire [9:0] stage2_5;
   wire [8:0] stage2_6;
   wire [6:0] stage2_7;
   wire [4:0] stage2_8;
   wire [0:0] stage3_0;
   wire [1:0] stage3_1;
   wire [3:0] stage3_2;
   wire [4:0] stage3_3;
   wire [2:0] stage3_4;
   wire [3:0] stage3_5;
   wire [3:0] stage3_6;
   wire [3:0] stage3_7;
   wire [2:0] stage3_8;
   wire [0:0] stage4_0;
   wire [1:0] stage4_1;
   wire [0:0] stage4_2;
   wire [1:0] stage4_3;
   wire [1:0] stage4_4;
   wire [1:0] stage4_5;
   wire [1:0] stage4_6;
   wire [1:0] stage4_7;
   wire [1:0] stage4_8;

   assign stage0_0 = src0;
   assign stage0_1 = src1;
   assign stage0_2 = src2;
   assign stage0_3 = src3;
   assign dst0 = stage4_0;
   assign dst1 = stage4_1;
   assign dst2 = stage4_2;
   assign dst3 = stage4_3;
   assign dst4 = stage4_4;
   assign dst5 = stage4_5;
   assign dst6 = stage4_6;
   assign dst7 = stage4_7;
   assign dst8 = stage4_8;

   gpc135_4 gpc0 (
      {stage0_0[0], stage0_0[1], stage0_0[2], stage0_0[3], stage0_0[4]},
      {stage0_1[0], stage0_1[1], stage0_1[2]},
      {stage0_2[0]},
      {stage1_3[0],stage1_2[0],stage1_1[0],stage1_0[0]}
   );
   gpc215_4 gpc1 (
      {stage0_0[5], stage0_0[6], stage0_0[7], stage0_0[8], stage0_0[9]},
      {stage0_1[3]},
      {stage0_2[1], stage0_2[2]},
      {stage1_3[1],stage1_2[1],stage1_1[1],stage1_0[1]}
   );
   gpc3_2 gpc2 (
      {stage0_0[10], stage0_0[11], stage0_0[12]},
      {stage1_1[2],stage1_0[2]}
   );
   gpc7_3 gpc3 (
      {stage0_0[13], stage0_0[14], stage0_0[15], stage0_0[16], stage0_0[17], stage0_0[18], stage0_0[19]},
      {stage1_2[2],stage1_1[3],stage1_0[3]}
   );
   gpc7_3 gpc4 (
      {stage0_0[20], stage0_0[21], stage0_0[22], stage0_0[23], stage0_0[24], stage0_0[25], stage0_0[26]},
      {stage1_2[3],stage1_1[4],stage1_0[4]}
   );
   gpc7_3 gpc5 (
      {stage0_0[27], stage0_0[28], stage0_0[29], stage0_0[30], stage0_0[31], 1'b0, 1'b0},
      {stage1_2[4],stage1_1[5],stage1_0[5]}
   );
   gpc7_3 gpc6 (
      {1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0},
      {stage1_2[5],stage1_1[6],stage1_0[6]}
   );
   gpc7_3 gpc7 (
      {1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0},
      {stage1_2[6],stage1_1[7],stage1_0[7]}
   );
   gpc7_3 gpc8 (
      {stage0_1[4], stage0_1[5], stage0_1[6], stage0_1[7], stage0_1[8], stage0_1[9], stage0_1[10]},
      {stage1_3[2],stage1_2[7],stage1_1[8]}
   );
   gpc7_3 gpc9 (
      {stage0_1[11], stage0_1[12], stage0_1[13], stage0_1[14], stage0_1[15], stage0_1[16], stage0_1[17]},
      {stage1_3[3],stage1_2[8],stage1_1[9]}
   );
   gpc7_3 gpc10 (
      {stage0_1[18], stage0_1[19], stage0_1[20], stage0_1[21], stage0_1[22], stage0_1[23], stage0_1[24]},
      {stage1_3[4],stage1_2[9],stage1_1[10]}
   );
   gpc7_3 gpc11 (
      {stage0_1[25], stage0_1[26], stage0_1[27], stage0_1[28], stage0_1[29], stage0_1[30], stage0_1[31]},
      {stage1_3[5],stage1_2[10],stage1_1[11]}
   );
   gpc7_3 gpc12 (
      {1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0},
      {stage1_3[6],stage1_2[11],stage1_1[12]}
   );
   gpc7_3 gpc13 (
      {stage0_2[3], stage0_2[4], stage0_2[5], stage0_2[6], stage0_2[7], stage0_2[8], stage0_2[9]},
      {stage1_4[0],stage1_3[7],stage1_2[12]}
   );
   gpc7_3 gpc14 (
      {stage0_2[10], stage0_2[11], stage0_2[12], stage0_2[13], stage0_2[14], stage0_2[15], stage0_2[16]},
      {stage1_4[1],stage1_3[8],stage1_2[13]}
   );
   gpc7_3 gpc15 (
      {stage0_2[17], stage0_2[18], stage0_2[19], stage0_2[20], stage0_2[21], stage0_2[22], stage0_2[23]},
      {stage1_4[2],stage1_3[9],stage1_2[14]}
   );
   gpc7_3 gpc16 (
      {stage0_2[24], stage0_2[25], stage0_2[26], stage0_2[27], stage0_2[28], stage0_2[29], stage0_2[30]},
      {stage1_4[3],stage1_3[10],stage1_2[15]}
   );
   gpc7_3 gpc17 (
      {stage0_2[31], 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0},
      {stage1_4[4],stage1_3[11],stage1_2[16]}
   );
   gpc606_5 gpc18 (
      {stage0_3[0], stage0_3[1], stage0_3[2], stage0_3[3], stage0_3[4], stage0_3[5]},
      {1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0},
      {stage1_7[0],stage1_6[0],stage1_5[0],stage1_4[5],stage1_3[12]}
   );
   gpc7_3 gpc19 (
      {stage0_3[6], stage0_3[7], stage0_3[8], stage0_3[9], stage0_3[10], stage0_3[11], stage0_3[12]},
      {stage1_5[1],stage1_4[6],stage1_3[13]}
   );
   gpc7_3 gpc20 (
      {stage0_3[13], stage0_3[14], stage0_3[15], stage0_3[16], stage0_3[17], stage0_3[18], stage0_3[19]},
      {stage1_5[2],stage1_4[7],stage1_3[14]}
   );
   gpc7_3 gpc21 (
      {stage0_3[20], stage0_3[21], stage0_3[22], stage0_3[23], stage0_3[24], stage0_3[25], stage0_3[26]},
      {stage1_5[3],stage1_4[8],stage1_3[15]}
   );
   gpc7_3 gpc22 (
      {stage0_3[27], stage0_3[28], stage0_3[29], stage0_3[30], stage0_3[31], 1'b0, 1'b0},
      {stage1_5[4],stage1_4[9],stage1_3[16]}
   );
   gpc7_3 gpc23 (
      {1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0},
      {stage1_5[5],stage1_4[10],stage1_3[17]}
   );
   gpc15_3 gpc24 (
      {stage1_0[0], stage1_0[1], stage1_0[2], stage1_0[3], stage1_0[4]},
      {stage1_1[0]},
      {stage2_2[0],stage2_1[0],stage2_0[0]}
   );
   gpc215_4 gpc25 (
      {stage1_0[5], stage1_0[6], stage1_0[7], 1'b0, 1'b0},
      {stage1_1[1]},
      {stage1_2[0], stage1_2[1]},
      {stage2_3[0],stage2_2[1],stage2_1[1],stage2_0[1]}
   );
   gpc3_2 gpc26 (
      {1'b0, 1'b0, 1'b0},
      {stage2_1[2],stage2_0[2]}
   );
   gpc7_3 gpc27 (
      {1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0},
      {stage2_2[2],stage2_1[3],stage2_0[3]}
   );
   gpc7_3 gpc28 (
      {1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0},
      {stage2_2[3],stage2_1[4],stage2_0[4]}
   );
   gpc7_3 gpc29 (
      {stage1_1[2], stage1_1[3], stage1_1[4], stage1_1[5], stage1_1[6], stage1_1[7], stage1_1[8]},
      {stage2_3[1],stage2_2[4],stage2_1[5]}
   );
   gpc7_3 gpc30 (
      {stage1_1[9], stage1_1[10], stage1_1[11], stage1_1[12], 1'b0, 1'b0, 1'b0},
      {stage2_3[2],stage2_2[5],stage2_1[6]}
   );
   gpc7_3 gpc31 (
      {stage1_2[2], stage1_2[3], stage1_2[4], stage1_2[5], stage1_2[6], stage1_2[7], stage1_2[8]},
      {stage2_4[0],stage2_3[3],stage2_2[6]}
   );
   gpc7_3 gpc32 (
      {stage1_2[9], stage1_2[10], stage1_2[11], stage1_2[12], stage1_2[13], stage1_2[14], stage1_2[15]},
      {stage2_4[1],stage2_3[4],stage2_2[7]}
   );
   gpc7_3 gpc33 (
      {stage1_3[0], stage1_3[1], stage1_3[2], stage1_3[3], stage1_3[4], stage1_3[5], stage1_3[6]},
      {stage2_5[0],stage2_4[2],stage2_3[5]}
   );
   gpc7_3 gpc34 (
      {stage1_3[7], stage1_3[8], stage1_3[9], stage1_3[10], stage1_3[11], stage1_3[12], stage1_3[13]},
      {stage2_5[1],stage2_4[3],stage2_3[6]}
   );
   gpc7_3 gpc35 (
      {stage1_3[14], stage1_3[15], stage1_3[16], stage1_3[17], 1'b0, 1'b0, 1'b0},
      {stage2_5[2],stage2_4[4],stage2_3[7]}
   );
   gpc7_3 gpc36 (
      {stage1_4[0], stage1_4[1], stage1_4[2], stage1_4[3], stage1_4[4], stage1_4[5], stage1_4[6]},
      {stage2_6[0],stage2_5[3],stage2_4[5]}
   );
   gpc7_3 gpc37 (
      {stage1_4[7], stage1_4[8], stage1_4[9], stage1_4[10], 1'b0, 1'b0, 1'b0},
      {stage2_6[1],stage2_5[4],stage2_4[6]}
   );
   gpc1406_5 gpc38 (
      {stage1_5[0], stage1_5[1], stage1_5[2], stage1_5[3], stage1_5[4], stage1_5[5]},
      {stage1_7[0], 1'b0, 1'b0, 1'b0},
      {1'b0},
      {stage2_8[0],stage2_7[0],stage2_6[2],stage2_5[5]}
   );
   gpc207_4 gpc39 (
      {1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0},
      {1'b0, 1'b0},
      {stage2_8[1],stage2_7[1],stage2_6[3],stage2_5[6]}
   );
   gpc215_4 gpc40 (
      {1'b0, 1'b0, 1'b0, 1'b0, 1'b0},
      {stage1_6[0]},
      {1'b0, 1'b0},
      {stage2_8[2],stage2_7[2],stage2_6[4],stage2_5[7]}
   );
   gpc615_5 gpc41 (
      {1'b0, 1'b0, 1'b0, 1'b0, 1'b0},
      {1'b0},
      {1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0},
      {stage2_8[3],stage2_7[3],stage2_6[5],stage2_5[8]}
   );
   gpc7_3 gpc42 (
      {1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0},
      {stage2_7[4],stage2_6[6],stage2_5[9]}
   );
   gpc215_4 gpc43 (
      {1'b0, 1'b0, 1'b0, 1'b0, 1'b0},
      {1'b0},
      {1'b0, 1'b0},
      {stage2_8[4],stage2_7[5],stage2_6[7]}
   );
   gpc3_2 gpc44 (
      {1'b0, 1'b0, 1'b0},
      {stage2_7[6],stage2_6[8]}
   );
   gpc1_1 gpc45 (
      {stage1_2[16]},
      {stage2_2[8]}
   );
   gpc135_4 gpc46 (
      {stage2_0[0], stage2_0[1], stage2_0[2], stage2_0[3], stage2_0[4]},
      {stage2_1[0], stage2_1[1], stage2_1[2]},
      {stage2_2[0]},
      {stage3_3[0],stage3_2[0],stage3_1[0],stage3_0[0]}
   );
   gpc7_3 gpc47 (
      {stage2_1[3], stage2_1[4], stage2_1[5], stage2_1[6], 1'b0, 1'b0, 1'b0},
      {stage3_3[1],stage3_2[1],stage3_1[1]}
   );
   gpc7_3 gpc48 (
      {stage2_2[1], stage2_2[2], stage2_2[3], stage2_2[4], stage2_2[5], stage2_2[6], stage2_2[7]},
      {stage3_4[0],stage3_3[2],stage3_2[2]}
   );
   gpc7_3 gpc49 (
      {stage2_3[0], stage2_3[1], stage2_3[2], stage2_3[3], stage2_3[4], stage2_3[5], stage2_3[6]},
      {stage3_5[0],stage3_4[1],stage3_3[3]}
   );
   gpc7_3 gpc50 (
      {stage2_4[0], stage2_4[1], stage2_4[2], stage2_4[3], stage2_4[4], stage2_4[5], stage2_4[6]},
      {stage3_6[0],stage3_5[1],stage3_4[2]}
   );
   gpc23_3 gpc51 (
      {stage2_5[0], stage2_5[1], stage2_5[2]},
      {stage2_6[0], stage2_6[1]},
      {stage3_7[0],stage3_6[1],stage3_5[2]}
   );
   gpc7_3 gpc52 (
      {stage2_5[3], stage2_5[4], stage2_5[5], stage2_5[6], stage2_5[7], stage2_5[8], stage2_5[9]},
      {stage3_7[1],stage3_6[2],stage3_5[3]}
   );
   gpc7_3 gpc53 (
      {stage2_6[2], stage2_6[3], stage2_6[4], stage2_6[5], stage2_6[6], stage2_6[7], stage2_6[8]},
      {stage3_8[0],stage3_7[2],stage3_6[3]}
   );
   gpc207_4 gpc54 (
      {stage2_7[0], stage2_7[1], stage2_7[2], stage2_7[3], stage2_7[4], stage2_7[5], stage2_7[6]},
      {1'b0, 1'b0},
      {stage3_8[1],stage3_7[3]}
   );
   gpc135_4 gpc55 (
      {stage2_8[0], stage2_8[1], stage2_8[2], stage2_8[3], stage2_8[4]},
      {1'b0, 1'b0, 1'b0},
      {1'b0},
      {stage3_8[2]}
   );
   gpc1_1 gpc56 (
      {stage2_2[8]},
      {stage3_2[3]}
   );
   gpc1_1 gpc57 (
      {stage2_3[7]},
      {stage3_3[4]}
   );
   gpc615_5 gpc58 (
      {stage3_0[0], 1'b0, 1'b0, 1'b0, 1'b0},
      {stage3_1[0]},
      {stage3_2[0], stage3_2[1], stage3_2[2], stage3_2[3], 1'b0, 1'b0},
      {stage4_4[0],stage4_3[0],stage4_2[0],stage4_1[0],stage4_0[0]}
   );
   gpc135_4 gpc59 (
      {stage3_3[0], stage3_3[1], stage3_3[2], stage3_3[3], stage3_3[4]},
      {stage3_4[0], stage3_4[1], stage3_4[2]},
      {stage3_5[0]},
      {stage4_6[0],stage4_5[0],stage4_4[1],stage4_3[1]}
   );
   gpc1343_5 gpc60 (
      {stage3_5[1], stage3_5[2], stage3_5[3]},
      {stage3_6[0], stage3_6[1], stage3_6[2], stage3_6[3]},
      {stage3_7[0], stage3_7[1], stage3_7[2]},
      {stage3_8[0]},
      {stage4_8[0],stage4_7[0],stage4_6[1],stage4_5[1]}
   );
   gpc1325_5 gpc61 (
      {stage3_7[3], 1'b0, 1'b0, 1'b0, 1'b0},
      {stage3_8[1], stage3_8[2]},
      {1'b0, 1'b0, 1'b0},
      {1'b0},
      {stage4_8[1],stage4_7[1]}
   );
   gpc1_1 gpc62 (
      {stage3_1[1]},
      {stage4_1[1]}
   );
endmodule
module shift_register(
        input wire clk,
        input wire src0_,
        input wire src1_,
        input wire src2_,
        input wire src3_,
        output wire [0:0] dst0,
        output wire [1:0] dst1,
        output wire [0:0] dst2,
        output wire [1:0] dst3,
        output wire [1:0] dst4,
        output wire [1:0] dst5,
        output wire [1:0] dst6,
        output wire [1:0] dst7,
        output wire [1:0] dst8);
    reg [31:0] src0;
    reg [31:0] src1;
    reg [31:0] src2;
    reg [31:0] src3;
    neweecompressor neweecompressor(
            .src0(src0),
            .src1(src1),
            .src2(src2),
            .src3(src3),
            .dst0(dst0),
            .dst1(dst1),
            .dst2(dst2),
            .dst3(dst3),
            .dst4(dst4),
            .dst5(dst5),
            .dst6(dst6),
            .dst7(dst7),
            .dst8(dst8));
    initial begin
        src0 <= 32'h0;
        src1 <= 32'h0;
        src2 <= 32'h0;
        src3 <= 32'h0;
    end
    always @(posedge clk) begin
        src0 <= {src0, src0_};
        src1 <= {src1, src1_};
        src2 <= {src2, src2_};
        src3 <= {src3, src3_};
    end
endmodule
