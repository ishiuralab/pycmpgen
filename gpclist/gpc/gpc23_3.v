module gpc23_3(input [2:0] src0, input [1:0] src1, output [2:0] dst);
    wire [1:0] gene;
    wire [1:0] prop;
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
    CARRY4 carry4_inst0(
        .CO(carryout[3:0]),
        .O(out[3:0]),
        .CYINIT(1'h0),
        .CI(src0[0]),
        .DI({2'h0, gene[1:0]}),
        .S({2'h0, prop[1:0]})
    );
    assign dst = {carryout[1], out[1], out[0]};
endmodule
