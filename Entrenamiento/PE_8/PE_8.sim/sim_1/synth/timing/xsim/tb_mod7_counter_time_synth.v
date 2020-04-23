// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Mon Apr 20 11:39:51 2020
// Host        : fnavarro-HPEnvy-MjrXFCE running 64-bit Manjaro Linux
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               {/run/media/fnavarro/Datos/fnavarro/6to/Tecnicas Digitales
//               IV/Practicos/Entrenamiento/PE_8/PE_8.sim/sim_1/synth/timing/xsim/tb_mod7_counter_time_synth.v}
// Design      : mod7_acounter
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module bin2sseg
   (sseg_OBUF,
    sel0);
  output [5:0]sseg_OBUF;
  input [2:0]sel0;

  wire [2:0]sel0;
  wire [5:0]sseg_OBUF;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \sseg_OBUF[0]_inst_i_1 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .O(sseg_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \sseg_OBUF[1]_inst_i_1 
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .O(sseg_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h86)) 
    \sseg_OBUF[3]_inst_i_1 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .O(sseg_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \sseg_OBUF[4]_inst_i_1 
       (.I0(sel0[1]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .O(sseg_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \sseg_OBUF[5]_inst_i_1 
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .O(sseg_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h83)) 
    \sseg_OBUF[6]_inst_i_1 
       (.I0(sel0[0]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .O(sseg_OBUF[5]));
endmodule

module jk_ff
   (sel0,
    sseg_OBUF,
    max_tick,
    reset_IBUF,
    \sseg[2] );
  output [0:0]sel0;
  output [0:0]sseg_OBUF;
  input max_tick;
  input reset_IBUF;
  input [1:0]\sseg[2] ;

  wire Q_i_1_n_0;
  wire max_tick;
  wire reset_IBUF;
  wire [0:0]sel0;
  wire [1:0]\sseg[2] ;
  wire [0:0]sseg_OBUF;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h9)) 
    Q_i_1
       (.I0(reset_IBUF),
        .I1(sel0),
        .O(Q_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    Q_reg
       (.C(max_tick),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(Q_i_1_n_0),
        .Q(sel0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \sseg_OBUF[2]_inst_i_1 
       (.I0(sel0),
        .I1(\sseg[2] [0]),
        .I2(\sseg[2] [1]),
        .O(sseg_OBUF));
endmodule

(* ORIG_REF_NAME = "jk_ff" *) 
module jk_ff_0
   (Q_reg_0,
    sel0,
    reset_IBUF);
  output [0:0]Q_reg_0;
  input [0:0]sel0;
  input reset_IBUF;

  wire Q_i_1__0_n_0;
  wire [0:0]Q_reg_0;
  wire reset_IBUF;
  wire [0:0]sel0;

  LUT2 #(
    .INIT(4'h9)) 
    Q_i_1__0
       (.I0(reset_IBUF),
        .I1(Q_reg_0),
        .O(Q_i_1__0_n_0));
  FDCE #(
    .INIT(1'b0)) 
    Q_reg
       (.C(sel0),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(Q_i_1__0_n_0),
        .Q(Q_reg_0));
endmodule

(* ORIG_REF_NAME = "jk_ff" *) 
module jk_ff_1
   (Q_reg_0,
    Q_reg_1,
    reset_IBUF);
  output [0:0]Q_reg_0;
  input [0:0]Q_reg_1;
  input reset_IBUF;

  wire Q_i_1__1_n_0;
  wire [0:0]Q_reg_0;
  wire [0:0]Q_reg_1;
  wire reset_IBUF;

  LUT2 #(
    .INIT(4'h9)) 
    Q_i_1__1
       (.I0(reset_IBUF),
        .I1(Q_reg_0),
        .O(Q_i_1__1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    Q_reg
       (.C(Q_reg_1),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(Q_i_1__1_n_0),
        .Q(Q_reg_0));
endmodule

(* NotValidForBitStream *)
module mod7_acounter
   (reset,
    clk,
    on_off,
    sseg,
    an);
  input reset;
  input clk;
  input on_off;
  output [6:0]sseg;
  output [3:0]an;

  wire [3:0]an;
  wire [0:0]an_OBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire max_tick;
  wire on_off;
  wire on_off_IBUF;
  wire reset;
  wire reset_IBUF;
  wire [2:0]sel0;
  wire [6:0]sseg;
  wire [6:0]sseg_OBUF;

initial begin
 $sdf_annotate("tb_mod7_counter_time_synth.sdf",,,,"tool_control");
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
       (.sel0(sel0),
        .sseg_OBUF({sseg_OBUF[6:3],sseg_OBUF[1:0]}));
  jk_ff ff0
       (.max_tick(max_tick),
        .reset_IBUF(reset_IBUF),
        .sel0(sel0[0]),
        .\sseg[2] (sel0[2:1]),
        .sseg_OBUF(sseg_OBUF[2]));
  jk_ff_0 ff1
       (.Q_reg_0(sel0[1]),
        .reset_IBUF(reset_IBUF),
        .sel0(sel0[0]));
  jk_ff_1 ff2
       (.Q_reg_0(sel0[2]),
        .Q_reg_1(sel0[1]),
        .reset_IBUF(reset_IBUF));
  IBUF on_off_IBUF_inst
       (.I(on_off),
        .O(on_off_IBUF));
  mod_m_counter one_seg_counter
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .max_tick(max_tick),
        .reset_IBUF(reset_IBUF));
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

module mod_m_counter
   (max_tick,
    clk_IBUF_BUFG,
    reset_IBUF);
  output max_tick;
  input clk_IBUF_BUFG;
  input reset_IBUF;

  wire clk_IBUF_BUFG;
  wire [26:1]data0;
  wire max_tick;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__0_n_1;
  wire plusOp_carry__0_n_2;
  wire plusOp_carry__0_n_3;
  wire plusOp_carry__1_n_0;
  wire plusOp_carry__1_n_1;
  wire plusOp_carry__1_n_2;
  wire plusOp_carry__1_n_3;
  wire plusOp_carry__2_n_0;
  wire plusOp_carry__2_n_1;
  wire plusOp_carry__2_n_2;
  wire plusOp_carry__2_n_3;
  wire plusOp_carry__3_n_0;
  wire plusOp_carry__3_n_1;
  wire plusOp_carry__3_n_2;
  wire plusOp_carry__3_n_3;
  wire plusOp_carry__4_n_0;
  wire plusOp_carry__4_n_1;
  wire plusOp_carry__4_n_2;
  wire plusOp_carry__4_n_3;
  wire plusOp_carry__5_n_3;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire [26:0]r_next;
  wire [26:0]r_reg;
  wire \r_reg[26]_i_2_n_0 ;
  wire \r_reg[26]_i_3_n_0 ;
  wire \r_reg[26]_i_4_n_0 ;
  wire \r_reg[26]_i_5_n_0 ;
  wire \r_reg[26]_i_6_n_0 ;
  wire \r_reg[26]_i_7_n_0 ;
  wire \r_reg[26]_i_8_n_0 ;
  wire reset_IBUF;
  wire [3:1]NLW_plusOp_carry__5_CO_UNCONNECTED;
  wire [3:2]NLW_plusOp_carry__5_O_UNCONNECTED;

  LUT3 #(
    .INIT(8'h01)) 
    Q_i_2
       (.I0(\r_reg[26]_i_2_n_0 ),
        .I1(\r_reg[26]_i_3_n_0 ),
        .I2(\r_reg[26]_i_4_n_0 ),
        .O(max_tick));
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3}),
        .CYINIT(r_reg[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(r_reg[4:1]));
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(r_reg[8:5]));
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({plusOp_carry__1_n_0,plusOp_carry__1_n_1,plusOp_carry__1_n_2,plusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(r_reg[12:9]));
  CARRY4 plusOp_carry__2
       (.CI(plusOp_carry__1_n_0),
        .CO({plusOp_carry__2_n_0,plusOp_carry__2_n_1,plusOp_carry__2_n_2,plusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(r_reg[16:13]));
  CARRY4 plusOp_carry__3
       (.CI(plusOp_carry__2_n_0),
        .CO({plusOp_carry__3_n_0,plusOp_carry__3_n_1,plusOp_carry__3_n_2,plusOp_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(r_reg[20:17]));
  CARRY4 plusOp_carry__4
       (.CI(plusOp_carry__3_n_0),
        .CO({plusOp_carry__4_n_0,plusOp_carry__4_n_1,plusOp_carry__4_n_2,plusOp_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S(r_reg[24:21]));
  CARRY4 plusOp_carry__5
       (.CI(plusOp_carry__4_n_0),
        .CO({NLW_plusOp_carry__5_CO_UNCONNECTED[3:1],plusOp_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp_carry__5_O_UNCONNECTED[3:2],data0[26:25]}),
        .S({1'b0,1'b0,r_reg[26:25]}));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \r_reg[0]_i_1 
       (.I0(r_reg[0]),
        .O(r_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \r_reg[10]_i_1 
       (.I0(\r_reg[26]_i_2_n_0 ),
        .I1(\r_reg[26]_i_3_n_0 ),
        .I2(\r_reg[26]_i_4_n_0 ),
        .I3(data0[10]),
        .O(r_next[10]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \r_reg[11]_i_1 
       (.I0(\r_reg[26]_i_2_n_0 ),
        .I1(\r_reg[26]_i_3_n_0 ),
        .I2(\r_reg[26]_i_4_n_0 ),
        .I3(data0[11]),
        .O(r_next[11]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \r_reg[12]_i_1 
       (.I0(\r_reg[26]_i_2_n_0 ),
        .I1(\r_reg[26]_i_3_n_0 ),
        .I2(\r_reg[26]_i_4_n_0 ),
        .I3(data0[12]),
        .O(r_next[12]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \r_reg[13]_i_1 
       (.I0(\r_reg[26]_i_2_n_0 ),
        .I1(\r_reg[26]_i_3_n_0 ),
        .I2(\r_reg[26]_i_4_n_0 ),
        .I3(data0[13]),
        .O(r_next[13]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \r_reg[14]_i_1 
       (.I0(\r_reg[26]_i_2_n_0 ),
        .I1(\r_reg[26]_i_3_n_0 ),
        .I2(\r_reg[26]_i_4_n_0 ),
        .I3(data0[14]),
        .O(r_next[14]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \r_reg[15]_i_1 
       (.I0(\r_reg[26]_i_2_n_0 ),
        .I1(\r_reg[26]_i_3_n_0 ),
        .I2(\r_reg[26]_i_4_n_0 ),
        .I3(data0[15]),
        .O(r_next[15]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \r_reg[16]_i_1 
       (.I0(\r_reg[26]_i_2_n_0 ),
        .I1(\r_reg[26]_i_3_n_0 ),
        .I2(\r_reg[26]_i_4_n_0 ),
        .I3(data0[16]),
        .O(r_next[16]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \r_reg[17]_i_1 
       (.I0(\r_reg[26]_i_2_n_0 ),
        .I1(\r_reg[26]_i_3_n_0 ),
        .I2(\r_reg[26]_i_4_n_0 ),
        .I3(data0[17]),
        .O(r_next[17]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \r_reg[18]_i_1 
       (.I0(\r_reg[26]_i_2_n_0 ),
        .I1(\r_reg[26]_i_3_n_0 ),
        .I2(\r_reg[26]_i_4_n_0 ),
        .I3(data0[18]),
        .O(r_next[18]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \r_reg[19]_i_1 
       (.I0(\r_reg[26]_i_2_n_0 ),
        .I1(\r_reg[26]_i_3_n_0 ),
        .I2(\r_reg[26]_i_4_n_0 ),
        .I3(data0[19]),
        .O(r_next[19]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \r_reg[1]_i_1 
       (.I0(\r_reg[26]_i_2_n_0 ),
        .I1(\r_reg[26]_i_3_n_0 ),
        .I2(\r_reg[26]_i_4_n_0 ),
        .I3(data0[1]),
        .O(r_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \r_reg[20]_i_1 
       (.I0(\r_reg[26]_i_2_n_0 ),
        .I1(\r_reg[26]_i_3_n_0 ),
        .I2(\r_reg[26]_i_4_n_0 ),
        .I3(data0[20]),
        .O(r_next[20]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \r_reg[21]_i_1 
       (.I0(\r_reg[26]_i_2_n_0 ),
        .I1(\r_reg[26]_i_3_n_0 ),
        .I2(\r_reg[26]_i_4_n_0 ),
        .I3(data0[21]),
        .O(r_next[21]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \r_reg[22]_i_1 
       (.I0(\r_reg[26]_i_2_n_0 ),
        .I1(\r_reg[26]_i_3_n_0 ),
        .I2(\r_reg[26]_i_4_n_0 ),
        .I3(data0[22]),
        .O(r_next[22]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \r_reg[23]_i_1 
       (.I0(\r_reg[26]_i_2_n_0 ),
        .I1(\r_reg[26]_i_3_n_0 ),
        .I2(\r_reg[26]_i_4_n_0 ),
        .I3(data0[23]),
        .O(r_next[23]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \r_reg[24]_i_1 
       (.I0(\r_reg[26]_i_2_n_0 ),
        .I1(\r_reg[26]_i_3_n_0 ),
        .I2(\r_reg[26]_i_4_n_0 ),
        .I3(data0[24]),
        .O(r_next[24]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \r_reg[25]_i_1 
       (.I0(\r_reg[26]_i_2_n_0 ),
        .I1(\r_reg[26]_i_3_n_0 ),
        .I2(\r_reg[26]_i_4_n_0 ),
        .I3(data0[25]),
        .O(r_next[25]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \r_reg[26]_i_1 
       (.I0(\r_reg[26]_i_2_n_0 ),
        .I1(\r_reg[26]_i_3_n_0 ),
        .I2(\r_reg[26]_i_4_n_0 ),
        .I3(data0[26]),
        .O(r_next[26]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFFFFDF)) 
    \r_reg[26]_i_2 
       (.I0(r_reg[26]),
        .I1(r_reg[25]),
        .I2(r_reg[0]),
        .I3(\r_reg[26]_i_5_n_0 ),
        .I4(\r_reg[26]_i_6_n_0 ),
        .O(\r_reg[26]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFBFFF)) 
    \r_reg[26]_i_3 
       (.I0(r_reg[8]),
        .I1(r_reg[7]),
        .I2(r_reg[5]),
        .I3(r_reg[6]),
        .I4(\r_reg[26]_i_7_n_0 ),
        .O(\r_reg[26]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \r_reg[26]_i_4 
       (.I0(r_reg[15]),
        .I1(r_reg[16]),
        .I2(r_reg[13]),
        .I3(r_reg[14]),
        .I4(\r_reg[26]_i_8_n_0 ),
        .O(\r_reg[26]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \r_reg[26]_i_5 
       (.I0(r_reg[22]),
        .I1(r_reg[21]),
        .I2(r_reg[24]),
        .I3(r_reg[23]),
        .O(\r_reg[26]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \r_reg[26]_i_6 
       (.I0(r_reg[2]),
        .I1(r_reg[1]),
        .I2(r_reg[4]),
        .I3(r_reg[3]),
        .O(\r_reg[26]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \r_reg[26]_i_7 
       (.I0(r_reg[10]),
        .I1(r_reg[9]),
        .I2(r_reg[12]),
        .I3(r_reg[11]),
        .O(\r_reg[26]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \r_reg[26]_i_8 
       (.I0(r_reg[18]),
        .I1(r_reg[17]),
        .I2(r_reg[20]),
        .I3(r_reg[19]),
        .O(\r_reg[26]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \r_reg[2]_i_1 
       (.I0(\r_reg[26]_i_2_n_0 ),
        .I1(\r_reg[26]_i_3_n_0 ),
        .I2(\r_reg[26]_i_4_n_0 ),
        .I3(data0[2]),
        .O(r_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \r_reg[3]_i_1 
       (.I0(\r_reg[26]_i_2_n_0 ),
        .I1(\r_reg[26]_i_3_n_0 ),
        .I2(\r_reg[26]_i_4_n_0 ),
        .I3(data0[3]),
        .O(r_next[3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \r_reg[4]_i_1 
       (.I0(\r_reg[26]_i_2_n_0 ),
        .I1(\r_reg[26]_i_3_n_0 ),
        .I2(\r_reg[26]_i_4_n_0 ),
        .I3(data0[4]),
        .O(r_next[4]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \r_reg[5]_i_1 
       (.I0(\r_reg[26]_i_2_n_0 ),
        .I1(\r_reg[26]_i_3_n_0 ),
        .I2(\r_reg[26]_i_4_n_0 ),
        .I3(data0[5]),
        .O(r_next[5]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \r_reg[6]_i_1 
       (.I0(\r_reg[26]_i_2_n_0 ),
        .I1(\r_reg[26]_i_3_n_0 ),
        .I2(\r_reg[26]_i_4_n_0 ),
        .I3(data0[6]),
        .O(r_next[6]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \r_reg[7]_i_1 
       (.I0(\r_reg[26]_i_2_n_0 ),
        .I1(\r_reg[26]_i_3_n_0 ),
        .I2(\r_reg[26]_i_4_n_0 ),
        .I3(data0[7]),
        .O(r_next[7]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \r_reg[8]_i_1 
       (.I0(\r_reg[26]_i_2_n_0 ),
        .I1(\r_reg[26]_i_3_n_0 ),
        .I2(\r_reg[26]_i_4_n_0 ),
        .I3(data0[8]),
        .O(r_next[8]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \r_reg[9]_i_1 
       (.I0(\r_reg[26]_i_2_n_0 ),
        .I1(\r_reg[26]_i_3_n_0 ),
        .I2(\r_reg[26]_i_4_n_0 ),
        .I3(data0[9]),
        .O(r_next[9]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(r_next[0]),
        .Q(r_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(r_next[10]),
        .Q(r_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(r_next[11]),
        .Q(r_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(r_next[12]),
        .Q(r_reg[12]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(r_next[13]),
        .Q(r_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(r_next[14]),
        .Q(r_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(r_next[15]),
        .Q(r_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(r_next[16]),
        .Q(r_reg[16]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(r_next[17]),
        .Q(r_reg[17]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(r_next[18]),
        .Q(r_reg[18]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(r_next[19]),
        .Q(r_reg[19]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(r_next[1]),
        .Q(r_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(r_next[20]),
        .Q(r_reg[20]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(r_next[21]),
        .Q(r_reg[21]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(r_next[22]),
        .Q(r_reg[22]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(r_next[23]),
        .Q(r_reg[23]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(r_next[24]),
        .Q(r_reg[24]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(r_next[25]),
        .Q(r_reg[25]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(r_next[26]),
        .Q(r_reg[26]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(r_next[2]),
        .Q(r_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(r_next[3]),
        .Q(r_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(r_next[4]),
        .Q(r_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(r_next[5]),
        .Q(r_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(r_next[6]),
        .Q(r_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(r_next[7]),
        .Q(r_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(r_next[8]),
        .Q(r_reg[8]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(r_next[9]),
        .Q(r_reg[9]));
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
