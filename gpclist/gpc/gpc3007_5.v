module gpc3007_5(input [6:0] src0, input [2:0] src3, output [4:0] dst);
    wire [3:0] gene;
    wire [3:0] prop;
    wire [3:0] out;
    wire [3:0] carryout;
    LUT6_2 #(
        .INIT(64'h6996966996696996)
    ) lut6_2_inst0(
        .O5(gene[0]),
        .O6(prop[0]),
        .I0(src0[2]),
        .I1(src0[3]),
        .I2(src0[4]),
        .I3(src0[5]),
        .I4(src0[6]),
        .I5(src0[1])
    );
    LUT5 #(
        .INIT(32'he8808000)
    ) lut5_gene1(
        .O(gene[1]),
        .I0(src0[2]),
        .I1(src0[3]),
        .I2(src0[4]),
        .I3(src0[5]),
        .I4(src0[6])
    );
    LUT5 #(
        .INIT(32'h177e7ee8)
    ) lut5_prop1(
        .O(prop[1]),
        .I0(src0[2]),
        .I1(src0[3]),
        .I2(src0[4]),
        .I3(src0[5]),
        .I4(src0[6])
    );
    LUT1 #(
        .INIT(2'h2)
    ) lut1_gene2(
        .O(gene[2]),
        .I0(src3[0])
    );
    LUT1 #(
        .INIT(2'h0)
    ) lut1_prop2(
        .O(prop[2]),
        .I0(src3[0])
    );
    LUT2 #(
        .INIT(4'h8)
    ) lut2_gene3(
        .O(gene[3]),
        .I0(src3[1]),
        .I1(src3[2])
    );
    LUT2 #(
        .INIT(4'h6)
    ) lut2_prop3(
        .O(prop[3]),
        .I0(src3[1]),
        .I1(src3[2])
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
