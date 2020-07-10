module my_module (
in,
clk,
out
);

// primary inputs
input in;
input clk;

// primary outputs
output out;

// wires
wire n1;
wire n2;
wire n3;
wire n4;
wire n5;
wire n6;
wire in;
wire clk;
wire out;

// cells
my_dff_xsize80 f1 (.d(in), .ck(clk), .q(n1));
my_inv_xsize1 u3 (.a(n1), .o(n2));
my_inv_xsize2 u4 (.a(n2), .o(n3));
my_nand2_xsize1 u6 ( .a(n1), .b(n3), .o(n4));
my_nand4_xsize1 u5 ( .a(n3), .b(n2), .o(n5));
my_nor2_xsize1 u7 ( .a(n4), .b(n5), .o(n6) );
my_dff_xsize80 f2 ( .d(n6), .ck(clk), .q(out) );

endmodule
