module gpc3_2(input [2:0] src0, output [1:0] dst);
    wire [0:0] gene;
    wire [0:0] prop;
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
    CARRY4 carry4_inst0(
        .CO(carryout[3:0]),
        .O(out[3:0]),
        .CYINIT(1'h0),
        .CI(src0[0]),
        .DI({3'h0, gene[0:0]}),
        .S({3'h0, prop[0:0]})
    );
    assign dst = {carryout[0], out[0]};
endmodule
