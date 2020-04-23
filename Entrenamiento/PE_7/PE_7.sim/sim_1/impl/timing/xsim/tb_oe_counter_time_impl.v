// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (lin64) Build 2729669 Thu Dec  5 04:48:12 MST 2019
// Date        : Thu Apr 23 00:18:07 2020
// Host        : Manjaro-Envy running 64-bit Manjaro Linux
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /run/media/fnavarro/DATA/6to/Tecnicas_Digitales_IV/Practicos/Entrenamiento/PE_7/PE_7.sim/sim_1/impl/timing/xsim/tb_oe_counter_time_impl.v
// Design      : oe_counter
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module bin2sseg
   (sseg_OBUF,
    ff0_Q,
    Q,
    ff1_Q);
  output [5:0]sseg_OBUF;
  input ff0_Q;
  input Q;
  input ff1_Q;

  wire Q;
  wire ff0_Q;
  wire ff1_Q;
  wire [5:0]sseg_OBUF;

  LUT3 #(
    .INIT(8'h06)) 
    \sseg_OBUF[0]_inst_i_1 
       (.I0(Q),
        .I1(ff0_Q),
        .I2(ff1_Q),
        .O(sseg_OBUF[0]));
  LUT3 #(
    .INIT(8'h28)) 
    \sseg_OBUF[1]_inst_i_1 
       (.I0(Q),
        .I1(ff1_Q),
        .I2(ff0_Q),
        .O(sseg_OBUF[1]));
  LUT3 #(
    .INIT(8'h86)) 
    \sseg_OBUF[3]_inst_i_1 
       (.I0(Q),
        .I1(ff0_Q),
        .I2(ff1_Q),
        .O(sseg_OBUF[2]));
  LUT3 #(
    .INIT(8'hF4)) 
    \sseg_OBUF[4]_inst_i_1 
       (.I0(ff1_Q),
        .I1(Q),
        .I2(ff0_Q),
        .O(sseg_OBUF[3]));
  LUT3 #(
    .INIT(8'hD4)) 
    \sseg_OBUF[5]_inst_i_1 
       (.I0(Q),
        .I1(ff1_Q),
        .I2(ff0_Q),
        .O(sseg_OBUF[4]));
  LUT3 #(
    .INIT(8'h83)) 
    \sseg_OBUF[6]_inst_i_1 
       (.I0(ff0_Q),
        .I1(Q),
        .I2(ff1_Q),
        .O(sseg_OBUF[5]));
endmodule

module jk_ff
   (ff0_Q,
    sseg_OBUF,
    Q_reg_0,
    clk_IBUF_BUFG,
    ff1_Q,
    Q);
  output ff0_Q;
  output [0:0]sseg_OBUF;
  input Q_reg_0;
  input clk_IBUF_BUFG;
  input ff1_Q;
  input Q;

  wire Q;
  wire Q_reg_0;
  wire clk_IBUF_BUFG;
  wire ff0_Q;
  wire ff1_Q;
  wire [0:0]sseg_OBUF;

  FDRE #(
    .INIT(1'b0)) 
    Q_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Q_reg_0),
        .Q(ff0_Q),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h04)) 
    \sseg_OBUF[2]_inst_i_1 
       (.I0(ff0_Q),
        .I1(ff1_Q),
        .I2(Q),
        .O(sseg_OBUF));
endmodule

(* ORIG_REF_NAME = "jk_ff" *) 
module jk_ff_0
   (ff1_Q,
    clk_IBUF_BUFG,
    tick,
    ff0_Q,
    odd_even_IBUF,
    reset_IBUF);
  output ff1_Q;
  input clk_IBUF_BUFG;
  input tick;
  input ff0_Q;
  input odd_even_IBUF;
  input reset_IBUF;

  wire Q_i_1__0_n_0;
  wire clk_IBUF_BUFG;
  wire ff0_Q;
  wire ff1_Q;
  wire odd_even_IBUF;
  wire reset_IBUF;
  wire tick;

  LUT5 #(
    .INIT(32'h0000666A)) 
    Q_i_1__0
       (.I0(ff1_Q),
        .I1(tick),
        .I2(ff0_Q),
        .I3(odd_even_IBUF),
        .I4(reset_IBUF),
        .O(Q_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    Q_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Q_i_1__0_n_0),
        .Q(ff1_Q),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "jk_ff" *) 
module jk_ff_1
   (Q,
    clk_IBUF_BUFG,
    tick,
    ff0_Q,
    ff1_Q,
    odd_even_IBUF,
    reset_IBUF);
  output Q;
  input clk_IBUF_BUFG;
  input tick;
  input ff0_Q;
  input ff1_Q;
  input odd_even_IBUF;
  input reset_IBUF;

  wire Q;
  wire Q_i_1__1_n_0;
  wire clk_IBUF_BUFG;
  wire ff0_Q;
  wire ff1_Q;
  wire odd_even_IBUF;
  wire reset_IBUF;
  wire tick;

  LUT6 #(
    .INIT(64'h0000000066AA6AAA)) 
    Q_i_1__1
       (.I0(Q),
        .I1(tick),
        .I2(ff0_Q),
        .I3(ff1_Q),
        .I4(odd_even_IBUF),
        .I5(reset_IBUF),
        .O(Q_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    Q_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Q_i_1__1_n_0),
        .Q(Q),
        .R(1'b0));
endmodule

module mod_m_counter
   (tick,
    \r_reg_reg[0]_0 ,
    clk_IBUF_BUFG,
    reset_IBUF,
    ff0_Q,
    odd_even_IBUF);
  output tick;
  output \r_reg_reg[0]_0 ;
  input clk_IBUF_BUFG;
  input reset_IBUF;
  input ff0_Q;
  input odd_even_IBUF;

  wire clk_IBUF_BUFG;
  wire ff0_Q;
  wire odd_even_IBUF;
  wire p_0_in;
  wire \r_reg_reg[0]_0 ;
  wire reset_IBUF;
  wire tick;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h004E)) 
    Q_i_1
       (.I0(tick),
        .I1(ff0_Q),
        .I2(odd_even_IBUF),
        .I3(reset_IBUF),
        .O(\r_reg_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \r_reg[0]_i_1 
       (.I0(tick),
        .O(p_0_in));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(p_0_in),
        .Q(tick));
endmodule

(* ECO_CHECKSUM = "a7a8848e" *) 
(* NotValidForBitStream *)
module oe_counter
   (reset,
    clk,
    odd_even,
    on_off,
    sseg,
    an);
  input reset;
  input clk;
  input odd_even;
  input on_off;
  output [6:0]sseg;
  output [3:0]an;

  wire Q;
  wire [3:0]an;
  wire [0:0]an_OBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire ff0_Q;
  wire ff1_Q;
  wire odd_even;
  wire odd_even_IBUF;
  wire on_off;
  wire on_off_IBUF;
  wire one_seg_counter_n_1;
  wire reset;
  wire reset_IBUF;
  wire [6:0]sseg;
  wire [6:0]sseg_OBUF;
  wire tick;

initial begin
 $sdf_annotate("tb_oe_counter_time_impl.sdf",,,,"tool_control");
end
  OBUF \an_OBUF[0]_inst 
       (.I(an_OBUF),
        .O(an[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \an_OBUF[0]_inst_i_1 
       (.I0(on_off_IBUF),
        .O(an_OBUF));
  OBUF \an_OBUF[1]_inst 
       (.I(1'b1),
        .O(an[1]));
  OBUF \an_OBUF[2]_inst 
       (.I(1'b1),
        .O(an[2]));
  OBUF \an_OBUF[3]_inst 
       (.I(1'b1),
        .O(an[3]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  bin2sseg display
       (.Q(Q),
        .ff0_Q(ff0_Q),
        .ff1_Q(ff1_Q),
        .sseg_OBUF({sseg_OBUF[6:3],sseg_OBUF[1:0]}));
  jk_ff ff0
       (.Q(Q),
        .Q_reg_0(one_seg_counter_n_1),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .ff0_Q(ff0_Q),
        .ff1_Q(ff1_Q),
        .sseg_OBUF(sseg_OBUF[2]));
  jk_ff_0 ff1
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .ff0_Q(ff0_Q),
        .ff1_Q(ff1_Q),
        .odd_even_IBUF(odd_even_IBUF),
        .reset_IBUF(reset_IBUF),
        .tick(tick));
  jk_ff_1 ff2
       (.Q(Q),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .ff0_Q(ff0_Q),
        .ff1_Q(ff1_Q),
        .odd_even_IBUF(odd_even_IBUF),
        .reset_IBUF(reset_IBUF),
        .tick(tick));
  IBUF odd_even_IBUF_inst
       (.I(odd_even),
        .O(odd_even_IBUF));
  IBUF on_off_IBUF_inst
       (.I(on_off),
        .O(on_off_IBUF));
  mod_m_counter one_seg_counter
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .ff0_Q(ff0_Q),
        .odd_even_IBUF(odd_even_IBUF),
        .\r_reg_reg[0]_0 (one_seg_counter_n_1),
        .reset_IBUF(reset_IBUF),
        .tick(tick));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  OBUF \sseg_OBUF[0]_inst 
       (.I(sseg_OBUF[0]),
        .O(sseg[0]));
  OBUF \sseg_OBUF[1]_inst 
       (.I(sseg_OBUF[1]),
        .O(sseg[1]));
  OBUF \sseg_OBUF[2]_inst 
       (.I(sseg_OBUF[2]),
        .O(sseg[2]));
  OBUF \sseg_OBUF[3]_inst 
       (.I(sseg_OBUF[3]),
        .O(sseg[3]));
  OBUF \sseg_OBUF[4]_inst 
       (.I(sseg_OBUF[4]),
        .O(sseg[4]));
  OBUF \sseg_OBUF[5]_inst 
       (.I(sseg_OBUF[5]),
        .O(sseg[5]));
  OBUF \sseg_OBUF[6]_inst 
       (.I(sseg_OBUF[6]),
        .O(sseg[6]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
