module shift_register(
        input wire clk,
        input wire src0_,
        input wire src1_,
        input wire src2_,
        input wire src3_,
        input wire src4_,
        input wire src5_,
        input wire src6_,
        input wire src7_,
        input wire src8_,
        input wire src9_,
        input wire src10_,
        input wire src11_,
        input wire src12_,
        input wire src13_,
        input wire src14_,
        input wire src15_,
        input wire src16_,
        input wire src17_,
        input wire src18_,
        input wire src19_,
        input wire src20_,
        input wire src21_,
        input wire src22_,
        input wire src23_,
        input wire src24_,
        input wire src25_,
        input wire src26_,
        input wire src27_,
        input wire src28_,
        input wire src29_,
        input wire src30_,
        input wire src31_,
        input wire src32_,
        input wire src33_,
        input wire src34_,
        input wire src35_,
        input wire src36_,
        input wire src37_,
        input wire src38_,
        input wire src39_,
        input wire src40_,
        input wire src41_,
        input wire src42_,
        input wire src43_,
        input wire src44_,
        input wire src45_,
        input wire src46_,
        input wire src47_,
        input wire src48_,
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
        output wire [0:0] dst15,
        output wire [0:0] dst16,
        output wire [0:0] dst17,
        output wire [0:0] dst18,
        output wire [0:0] dst19,
        output wire [0:0] dst20,
        output wire [0:0] dst21,
        output wire [0:0] dst22,
        output wire [0:0] dst23,
        output wire [0:0] dst24,
        output wire [0:0] dst25,
        output wire [0:0] dst26,
        output wire [0:0] dst27,
        output wire [0:0] dst28,
        output wire [0:0] dst29,
        output wire [0:0] dst30,
        output wire [0:0] dst31,
        output wire [0:0] dst32,
        output wire [0:0] dst33,
        output wire [0:0] dst34,
        output wire [0:0] dst35,
        output wire [0:0] dst36,
        output wire [0:0] dst37,
        output wire [0:0] dst38,
        output wire [0:0] dst39,
        output wire [0:0] dst40,
        output wire [0:0] dst41,
        output wire [0:0] dst42,
        output wire [0:0] dst43,
        output wire [0:0] dst44,
        output wire [0:0] dst45,
        output wire [0:0] dst46,
        output wire [0:0] dst47,
        output wire [0:0] dst48,
        output wire [0:0] dst49);
    reg [0:0] src0;
    reg [1:0] src1;
    reg [2:0] src2;
    reg [3:0] src3;
    reg [4:0] src4;
    reg [5:0] src5;
    reg [6:0] src6;
    reg [7:0] src7;
    reg [8:0] src8;
    reg [9:0] src9;
    reg [10:0] src10;
    reg [11:0] src11;
    reg [12:0] src12;
    reg [13:0] src13;
    reg [14:0] src14;
    reg [15:0] src15;
    reg [16:0] src16;
    reg [17:0] src17;
    reg [18:0] src18;
    reg [19:0] src19;
    reg [20:0] src20;
    reg [21:0] src21;
    reg [22:0] src22;
    reg [23:0] src23;
    reg [24:0] src24;
    reg [23:0] src25;
    reg [22:0] src26;
    reg [21:0] src27;
    reg [20:0] src28;
    reg [19:0] src29;
    reg [18:0] src30;
    reg [17:0] src31;
    reg [16:0] src32;
    reg [15:0] src33;
    reg [14:0] src34;
    reg [13:0] src35;
    reg [12:0] src36;
    reg [11:0] src37;
    reg [10:0] src38;
    reg [9:0] src39;
    reg [8:0] src40;
    reg [7:0] src41;
    reg [6:0] src42;
    reg [5:0] src43;
    reg [4:0] src44;
    reg [3:0] src45;
    reg [2:0] src46;
    reg [1:0] src47;
    reg [0:0] src48;
    compressor compressor(
            .src0(src0),
            .src1(src1),
            .src2(src2),
            .src3(src3),
            .src4(src4),
            .src5(src5),
            .src6(src6),
            .src7(src7),
            .src8(src8),
            .src9(src9),
            .src10(src10),
            .src11(src11),
            .src12(src12),
            .src13(src13),
            .src14(src14),
            .src15(src15),
            .src16(src16),
            .src17(src17),
            .src18(src18),
            .src19(src19),
            .src20(src20),
            .src21(src21),
            .src22(src22),
            .src23(src23),
            .src24(src24),
            .src25(src25),
            .src26(src26),
            .src27(src27),
            .src28(src28),
            .src29(src29),
            .src30(src30),
            .src31(src31),
            .src32(src32),
            .src33(src33),
            .src34(src34),
            .src35(src35),
            .src36(src36),
            .src37(src37),
            .src38(src38),
            .src39(src39),
            .src40(src40),
            .src41(src41),
            .src42(src42),
            .src43(src43),
            .src44(src44),
            .src45(src45),
            .src46(src46),
            .src47(src47),
            .src48(src48),
            .dst0(dst0),
            .dst1(dst1),
            .dst2(dst2),
            .dst3(dst3),
            .dst4(dst4),
            .dst5(dst5),
            .dst6(dst6),
            .dst7(dst7),
            .dst8(dst8),
            .dst9(dst9),
            .dst10(dst10),
            .dst11(dst11),
            .dst12(dst12),
            .dst13(dst13),
            .dst14(dst14),
            .dst15(dst15),
            .dst16(dst16),
            .dst17(dst17),
            .dst18(dst18),
            .dst19(dst19),
            .dst20(dst20),
            .dst21(dst21),
            .dst22(dst22),
            .dst23(dst23),
            .dst24(dst24),
            .dst25(dst25),
            .dst26(dst26),
            .dst27(dst27),
            .dst28(dst28),
            .dst29(dst29),
            .dst30(dst30),
            .dst31(dst31),
            .dst32(dst32),
            .dst33(dst33),
            .dst34(dst34),
            .dst35(dst35),
            .dst36(dst36),
            .dst37(dst37),
            .dst38(dst38),
            .dst39(dst39),
            .dst40(dst40),
            .dst41(dst41),
            .dst42(dst42),
            .dst43(dst43),
            .dst44(dst44),
            .dst45(dst45),
            .dst46(dst46),
            .dst47(dst47),
            .dst48(dst48),
            .dst49(dst49));
    initial begin
        src0 <= 1'h0;
        src1 <= 2'h0;
        src2 <= 3'h0;
        src3 <= 4'h0;
        src4 <= 5'h0;
        src5 <= 6'h0;
        src6 <= 7'h0;
        src7 <= 8'h0;
        src8 <= 9'h0;
        src9 <= 10'h0;
        src10 <= 11'h0;
        src11 <= 12'h0;
        src12 <= 13'h0;
        src13 <= 14'h0;
        src14 <= 15'h0;
        src15 <= 16'h0;
        src16 <= 17'h0;
        src17 <= 18'h0;
        src18 <= 19'h0;
        src19 <= 20'h0;
        src20 <= 21'h0;
        src21 <= 22'h0;
        src22 <= 23'h0;
        src23 <= 24'h0;
        src24 <= 25'h0;
        src25 <= 24'h0;
        src26 <= 23'h0;
        src27 <= 22'h0;
        src28 <= 21'h0;
        src29 <= 20'h0;
        src30 <= 19'h0;
        src31 <= 18'h0;
        src32 <= 17'h0;
        src33 <= 16'h0;
        src34 <= 15'h0;
        src35 <= 14'h0;
        src36 <= 13'h0;
        src37 <= 12'h0;
        src38 <= 11'h0;
        src39 <= 10'h0;
        src40 <= 9'h0;
        src41 <= 8'h0;
        src42 <= 7'h0;
        src43 <= 6'h0;
        src44 <= 5'h0;
        src45 <= 4'h0;
        src46 <= 3'h0;
        src47 <= 2'h0;
        src48 <= 1'h0;
    end
    always @(posedge clk) begin
        src0 <= {src0, src0_};
        src1 <= {src1, src1_};
        src2 <= {src2, src2_};
        src3 <= {src3, src3_};
        src4 <= {src4, src4_};
        src5 <= {src5, src5_};
        src6 <= {src6, src6_};
        src7 <= {src7, src7_};
        src8 <= {src8, src8_};
        src9 <= {src9, src9_};
        src10 <= {src10, src10_};
        src11 <= {src11, src11_};
        src12 <= {src12, src12_};
        src13 <= {src13, src13_};
        src14 <= {src14, src14_};
        src15 <= {src15, src15_};
        src16 <= {src16, src16_};
        src17 <= {src17, src17_};
        src18 <= {src18, src18_};
        src19 <= {src19, src19_};
        src20 <= {src20, src20_};
        src21 <= {src21, src21_};
        src22 <= {src22, src22_};
        src23 <= {src23, src23_};
        src24 <= {src24, src24_};
        src25 <= {src25, src25_};
        src26 <= {src26, src26_};
        src27 <= {src27, src27_};
        src28 <= {src28, src28_};
        src29 <= {src29, src29_};
        src30 <= {src30, src30_};
        src31 <= {src31, src31_};
        src32 <= {src32, src32_};
        src33 <= {src33, src33_};
        src34 <= {src34, src34_};
        src35 <= {src35, src35_};
        src36 <= {src36, src36_};
        src37 <= {src37, src37_};
        src38 <= {src38, src38_};
        src39 <= {src39, src39_};
        src40 <= {src40, src40_};
        src41 <= {src41, src41_};
        src42 <= {src42, src42_};
        src43 <= {src43, src43_};
        src44 <= {src44, src44_};
        src45 <= {src45, src45_};
        src46 <= {src46, src46_};
        src47 <= {src47, src47_};
        src48 <= {src48, src48_};
    end
endmodule
