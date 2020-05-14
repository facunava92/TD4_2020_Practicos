// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (lin64) Build 2729669 Thu Dec  5 04:48:12 MST 2019
// Date        : Wed May 13 17:03:53 2020
// Host        : Manjaro-Envy running 64-bit Manjaro Linux
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /run/media/fnavarro/DATA/Git/6to/Tecnicas_Digitales_IV/Practicos/Trabajo_Practico_1/TP1/TP1.sim/sim_1/impl/timing/xsim/tb_1a_time_impl.v
// Design      : motorcc_cl
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module disp_mux
   (sseg_OBUF,
    an_OBUF,
    CLK,
    AR,
    Q,
    \sseg_OBUF[0]_inst_i_1_0 ,
    \sseg_OBUF[0]_inst_i_1_1 ,
    \sseg_OBUF[0]_inst_i_1_2 );
  output [6:0]sseg_OBUF;
  output [3:0]an_OBUF;
  input CLK;
  input [0:0]AR;
  input [3:0]Q;
  input [3:0]\sseg_OBUF[0]_inst_i_1_0 ;
  input [3:0]\sseg_OBUF[0]_inst_i_1_1 ;
  input [3:0]\sseg_OBUF[0]_inst_i_1_2 ;

  wire [0:0]AR;
  wire CLK;
  wire [3:0]Q;
  wire [3:0]an_OBUF;
  wire \q_reg[0]_i_2_n_0 ;
  wire \q_reg_reg[0]_i_1_n_0 ;
  wire \q_reg_reg[0]_i_1_n_4 ;
  wire \q_reg_reg[0]_i_1_n_5 ;
  wire \q_reg_reg[0]_i_1_n_6 ;
  wire \q_reg_reg[0]_i_1_n_7 ;
  wire \q_reg_reg[12]_i_1_n_0 ;
  wire \q_reg_reg[12]_i_1_n_4 ;
  wire \q_reg_reg[12]_i_1_n_5 ;
  wire \q_reg_reg[12]_i_1_n_6 ;
  wire \q_reg_reg[12]_i_1_n_7 ;
  wire \q_reg_reg[16]_i_1_n_5 ;
  wire \q_reg_reg[16]_i_1_n_6 ;
  wire \q_reg_reg[16]_i_1_n_7 ;
  wire \q_reg_reg[4]_i_1_n_0 ;
  wire \q_reg_reg[4]_i_1_n_4 ;
  wire \q_reg_reg[4]_i_1_n_5 ;
  wire \q_reg_reg[4]_i_1_n_6 ;
  wire \q_reg_reg[4]_i_1_n_7 ;
  wire \q_reg_reg[8]_i_1_n_0 ;
  wire \q_reg_reg[8]_i_1_n_4 ;
  wire \q_reg_reg[8]_i_1_n_5 ;
  wire \q_reg_reg[8]_i_1_n_6 ;
  wire \q_reg_reg[8]_i_1_n_7 ;
  wire \q_reg_reg_n_0_[0] ;
  wire \q_reg_reg_n_0_[10] ;
  wire \q_reg_reg_n_0_[11] ;
  wire \q_reg_reg_n_0_[12] ;
  wire \q_reg_reg_n_0_[13] ;
  wire \q_reg_reg_n_0_[14] ;
  wire \q_reg_reg_n_0_[15] ;
  wire \q_reg_reg_n_0_[16] ;
  wire \q_reg_reg_n_0_[1] ;
  wire \q_reg_reg_n_0_[2] ;
  wire \q_reg_reg_n_0_[3] ;
  wire \q_reg_reg_n_0_[4] ;
  wire \q_reg_reg_n_0_[5] ;
  wire \q_reg_reg_n_0_[6] ;
  wire \q_reg_reg_n_0_[7] ;
  wire \q_reg_reg_n_0_[8] ;
  wire \q_reg_reg_n_0_[9] ;
  wire [1:0]sel;
  wire [3:0]sel0;
  wire [6:0]sseg_OBUF;
  wire [3:0]\sseg_OBUF[0]_inst_i_1_0 ;
  wire [3:0]\sseg_OBUF[0]_inst_i_1_1 ;
  wire [3:0]\sseg_OBUF[0]_inst_i_1_2 ;
  wire [2:0]\NLW_q_reg_reg[0]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_q_reg_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_q_reg_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_q_reg_reg[16]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_q_reg_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_q_reg_reg[8]_i_1_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'hE)) 
    \an_OBUF[0]_inst_i_1 
       (.I0(sel[0]),
        .I1(sel[1]),
        .O(an_OBUF[0]));
  LUT2 #(
    .INIT(4'hB)) 
    \an_OBUF[1]_inst_i_1 
       (.I0(sel[1]),
        .I1(sel[0]),
        .O(an_OBUF[1]));
  LUT2 #(
    .INIT(4'hB)) 
    \an_OBUF[2]_inst_i_1 
       (.I0(sel[0]),
        .I1(sel[1]),
        .O(an_OBUF[2]));
  LUT2 #(
    .INIT(4'h7)) 
    \an_OBUF[3]_inst_i_1 
       (.I0(sel[0]),
        .I1(sel[1]),
        .O(an_OBUF[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \q_reg[0]_i_2 
       (.I0(\q_reg_reg_n_0_[0] ),
        .O(\q_reg[0]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg_reg[0]_i_1_n_7 ),
        .Q(\q_reg_reg_n_0_[0] ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \q_reg_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\q_reg_reg[0]_i_1_n_0 ,\NLW_q_reg_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\q_reg_reg[0]_i_1_n_4 ,\q_reg_reg[0]_i_1_n_5 ,\q_reg_reg[0]_i_1_n_6 ,\q_reg_reg[0]_i_1_n_7 }),
        .S({\q_reg_reg_n_0_[3] ,\q_reg_reg_n_0_[2] ,\q_reg_reg_n_0_[1] ,\q_reg[0]_i_2_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg_reg[8]_i_1_n_5 ),
        .Q(\q_reg_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg_reg[8]_i_1_n_4 ),
        .Q(\q_reg_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg_reg[12]_i_1_n_7 ),
        .Q(\q_reg_reg_n_0_[12] ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \q_reg_reg[12]_i_1 
       (.CI(\q_reg_reg[8]_i_1_n_0 ),
        .CO({\q_reg_reg[12]_i_1_n_0 ,\NLW_q_reg_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\q_reg_reg[12]_i_1_n_4 ,\q_reg_reg[12]_i_1_n_5 ,\q_reg_reg[12]_i_1_n_6 ,\q_reg_reg[12]_i_1_n_7 }),
        .S({\q_reg_reg_n_0_[15] ,\q_reg_reg_n_0_[14] ,\q_reg_reg_n_0_[13] ,\q_reg_reg_n_0_[12] }));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg_reg[12]_i_1_n_6 ),
        .Q(\q_reg_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg_reg[12]_i_1_n_5 ),
        .Q(\q_reg_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg_reg[12]_i_1_n_4 ),
        .Q(\q_reg_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg_reg[16]_i_1_n_7 ),
        .Q(\q_reg_reg_n_0_[16] ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \q_reg_reg[16]_i_1 
       (.CI(\q_reg_reg[12]_i_1_n_0 ),
        .CO(\NLW_q_reg_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_q_reg_reg[16]_i_1_O_UNCONNECTED [3],\q_reg_reg[16]_i_1_n_5 ,\q_reg_reg[16]_i_1_n_6 ,\q_reg_reg[16]_i_1_n_7 }),
        .S({1'b0,sel,\q_reg_reg_n_0_[16] }));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg_reg[16]_i_1_n_6 ),
        .Q(sel[0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg_reg[16]_i_1_n_5 ),
        .Q(sel[1]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg_reg[0]_i_1_n_6 ),
        .Q(\q_reg_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg_reg[0]_i_1_n_5 ),
        .Q(\q_reg_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg_reg[0]_i_1_n_4 ),
        .Q(\q_reg_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg_reg[4]_i_1_n_7 ),
        .Q(\q_reg_reg_n_0_[4] ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \q_reg_reg[4]_i_1 
       (.CI(\q_reg_reg[0]_i_1_n_0 ),
        .CO({\q_reg_reg[4]_i_1_n_0 ,\NLW_q_reg_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\q_reg_reg[4]_i_1_n_4 ,\q_reg_reg[4]_i_1_n_5 ,\q_reg_reg[4]_i_1_n_6 ,\q_reg_reg[4]_i_1_n_7 }),
        .S({\q_reg_reg_n_0_[7] ,\q_reg_reg_n_0_[6] ,\q_reg_reg_n_0_[5] ,\q_reg_reg_n_0_[4] }));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg_reg[4]_i_1_n_6 ),
        .Q(\q_reg_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg_reg[4]_i_1_n_5 ),
        .Q(\q_reg_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg_reg[4]_i_1_n_4 ),
        .Q(\q_reg_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg_reg[8]_i_1_n_7 ),
        .Q(\q_reg_reg_n_0_[8] ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \q_reg_reg[8]_i_1 
       (.CI(\q_reg_reg[4]_i_1_n_0 ),
        .CO({\q_reg_reg[8]_i_1_n_0 ,\NLW_q_reg_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\q_reg_reg[8]_i_1_n_4 ,\q_reg_reg[8]_i_1_n_5 ,\q_reg_reg[8]_i_1_n_6 ,\q_reg_reg[8]_i_1_n_7 }),
        .S({\q_reg_reg_n_0_[11] ,\q_reg_reg_n_0_[10] ,\q_reg_reg_n_0_[9] ,\q_reg_reg_n_0_[8] }));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg_reg[8]_i_1_n_6 ),
        .Q(\q_reg_reg_n_0_[9] ));
  LUT4 #(
    .INIT(16'h2094)) 
    \sseg_OBUF[0]_inst_i_1 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(sseg_OBUF[0]));
  LUT4 #(
    .INIT(16'hA4C8)) 
    \sseg_OBUF[1]_inst_i_1 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .O(sseg_OBUF[1]));
  LUT4 #(
    .INIT(16'hA210)) 
    \sseg_OBUF[2]_inst_i_1 
       (.I0(sel0[3]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .O(sseg_OBUF[2]));
  LUT4 #(
    .INIT(16'hC034)) 
    \sseg_OBUF[3]_inst_i_1 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(sseg_OBUF[3]));
  LUT4 #(
    .INIT(16'h5710)) 
    \sseg_OBUF[4]_inst_i_1 
       (.I0(sel0[3]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .O(sseg_OBUF[4]));
  LUT4 #(
    .INIT(16'h5390)) 
    \sseg_OBUF[5]_inst_i_1 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(sseg_OBUF[5]));
  LUT4 #(
    .INIT(16'h4025)) 
    \sseg_OBUF[6]_inst_i_1 
       (.I0(sel0[3]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .O(sseg_OBUF[6]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \sseg_OBUF[6]_inst_i_2 
       (.I0(Q[3]),
        .I1(\sseg_OBUF[0]_inst_i_1_0 [3]),
        .I2(\sseg_OBUF[0]_inst_i_1_1 [3]),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(\sseg_OBUF[0]_inst_i_1_2 [3]),
        .O(sel0[3]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \sseg_OBUF[6]_inst_i_3 
       (.I0(Q[0]),
        .I1(\sseg_OBUF[0]_inst_i_1_0 [0]),
        .I2(\sseg_OBUF[0]_inst_i_1_1 [0]),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(\sseg_OBUF[0]_inst_i_1_2 [0]),
        .O(sel0[0]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \sseg_OBUF[6]_inst_i_4 
       (.I0(Q[2]),
        .I1(\sseg_OBUF[0]_inst_i_1_0 [2]),
        .I2(\sseg_OBUF[0]_inst_i_1_1 [2]),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(\sseg_OBUF[0]_inst_i_1_2 [2]),
        .O(sel0[2]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \sseg_OBUF[6]_inst_i_5 
       (.I0(Q[1]),
        .I1(\sseg_OBUF[0]_inst_i_1_0 [1]),
        .I2(\sseg_OBUF[0]_inst_i_1_1 [1]),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(\sseg_OBUF[0]_inst_i_1_2 [1]),
        .O(sel0[1]));
endmodule

(* ECO_CHECKSUM = "515c66c6" *) 
(* NotValidForBitStream *)
module motorcc_cl
   (clk,
    reset,
    A,
    B,
    dir,
    an,
    sseg);
  input clk;
  input reset;
  input A;
  input B;
  output dir;
  output [3:0]an;
  output [6:0]sseg;

  wire A;
  wire A_IBUF;
  wire B;
  wire B_IBUF;
  wire [3:0]an;
  wire [3:0]an_OBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire d0_next;
  wire dir;
  wire dir_OBUF;
  wire down_s;
  wire quadrature_decoder_n_3;
  wire reset;
  wire reset_IBUF;
  wire [6:0]sseg;
  wire [6:0]sseg_OBUF;
  wire up_s;

initial begin
 $sdf_annotate("tb_1a_time_impl.sdf",,,,"tool_control");
end
  IBUF A_IBUF_inst
       (.I(A),
        .O(A_IBUF));
  IBUF B_IBUF_inst
       (.I(B),
        .O(B_IBUF));
  OBUF \an_OBUF[0]_inst 
       (.I(an_OBUF[0]),
        .O(an[0]));
  OBUF \an_OBUF[1]_inst 
       (.I(an_OBUF[1]),
        .O(an[1]));
  OBUF \an_OBUF[2]_inst 
       (.I(an_OBUF[2]),
        .O(an[2]));
  OBUF \an_OBUF[3]_inst 
       (.I(an_OBUF[3]),
        .O(an[3]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF dir_OBUF_inst
       (.I(dir_OBUF),
        .O(dir));
  quad_decoder quadrature_decoder
       (.AR(reset_IBUF),
        .A_IBUF(A_IBUF),
        .B_IBUF(B_IBUF),
        .CLK(clk_IBUF_BUFG),
        .E(d0_next),
        .down_s(down_s),
        .up_reg_0(quadrature_decoder_n_3),
        .up_s(up_s));
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
  up_down_counter up_down_ctr
       (.AR(reset_IBUF),
        .CLK(clk_IBUF_BUFG),
        .E(d0_next),
        .an_OBUF(an_OBUF),
        .dir_OBUF(dir_OBUF),
        .down_s(down_s),
        .\r_reg_reg[0]_0 (quadrature_decoder_n_3),
        .sseg_OBUF(sseg_OBUF),
        .up_s(up_s));
endmodule

module quad_decoder
   (up_s,
    down_s,
    E,
    up_reg_0,
    CLK,
    AR,
    B_IBUF,
    A_IBUF);
  output up_s;
  output down_s;
  output [0:0]E;
  output up_reg_0;
  input CLK;
  input [0:0]AR;
  input B_IBUF;
  input A_IBUF;

  wire [0:0]AR;
  wire A_IBUF;
  wire B_IBUF;
  wire CLK;
  wire [0:0]E;
  wire down_n_0;
  wire down_s;
  wire [1:0]state_next;
  wire [1:0]state_reg;
  wire \up_inferred__2/i__n_0 ;
  wire \up_inferred__3/i__n_0 ;
  wire up_reg_0;
  wire up_s;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2466)) 
    \FSM_sequential_state_reg[0]_i_1 
       (.I0(A_IBUF),
        .I1(B_IBUF),
        .I2(state_reg[1]),
        .I3(state_reg[0]),
        .O(state_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hC8C4)) 
    \FSM_sequential_state_reg[1]_i_1 
       (.I0(B_IBUF),
        .I1(A_IBUF),
        .I2(state_reg[1]),
        .I3(state_reg[0]),
        .O(state_next[1]));
  (* FSM_ENCODED_STATES = "s1:11,s3:01,s0:00,s2:10" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(state_next[0]),
        .Q(state_reg[0]));
  (* FSM_ENCODED_STATES = "s1:11,s3:01,s0:00,s2:10" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(state_next[1]),
        .Q(state_reg[1]));
  LUT2 #(
    .INIT(4'hE)) 
    \d0_reg[3]_i_1 
       (.I0(up_s),
        .I1(down_s),
        .O(E));
  LUT4 #(
    .INIT(16'h636C)) 
    down
       (.I0(A_IBUF),
        .I1(state_reg[1]),
        .I2(state_reg[0]),
        .I3(B_IBUF),
        .O(down_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    down_reg
       (.CLR(1'b0),
        .D(down_n_0),
        .G(\up_inferred__3/i__n_0 ),
        .GE(1'b1),
        .Q(down_s));
  LUT2 #(
    .INIT(4'hE)) 
    \r_reg[0]_i_1 
       (.I0(down_s),
        .I1(up_s),
        .O(up_reg_0));
  LUT4 #(
    .INIT(16'h8124)) 
    \up_inferred__2/i_ 
       (.I0(B_IBUF),
        .I1(A_IBUF),
        .I2(state_reg[1]),
        .I3(state_reg[0]),
        .O(\up_inferred__2/i__n_0 ));
  LUT4 #(
    .INIT(16'hBDE7)) 
    \up_inferred__3/i_ 
       (.I0(A_IBUF),
        .I1(B_IBUF),
        .I2(state_reg[1]),
        .I3(state_reg[0]),
        .O(\up_inferred__3/i__n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    up_reg
       (.CLR(1'b0),
        .D(\up_inferred__2/i__n_0 ),
        .G(\up_inferred__3/i__n_0 ),
        .GE(1'b1),
        .Q(up_s));
endmodule

module up_down_counter
   (dir_OBUF,
    sseg_OBUF,
    an_OBUF,
    CLK,
    AR,
    \r_reg_reg[0]_0 ,
    up_s,
    down_s,
    E);
  output dir_OBUF;
  output [6:0]sseg_OBUF;
  output [3:0]an_OBUF;
  input CLK;
  input [0:0]AR;
  input \r_reg_reg[0]_0 ;
  input up_s;
  input down_s;
  input [0:0]E;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]E;
  wire [3:0]an_OBUF;
  wire [3:0]d0_reg;
  wire \d0_reg[0]_i_1_n_0 ;
  wire \d0_reg[1]_i_1_n_0 ;
  wire \d0_reg[2]_i_1_n_0 ;
  wire \d0_reg[3]_i_2_n_0 ;
  wire [3:0]d1_next;
  wire [3:0]d1_reg;
  wire \d1_reg[3]_i_1_n_0 ;
  wire [3:0]d2_next;
  wire [3:0]d2_reg;
  wire \d2_reg[3]_i_1_n_0 ;
  wire \d2_reg[3]_i_3_n_0 ;
  wire \d2_reg[3]_i_4_n_0 ;
  wire [3:0]d3_next;
  wire [3:0]d3_reg;
  wire \d3_reg[3]_i_1_n_0 ;
  wire \d3_reg[3]_i_3_n_0 ;
  wire \d3_reg[3]_i_4_n_0 ;
  wire \d3_reg[3]_i_5_n_0 ;
  wire \d3_reg[3]_i_6_n_0 ;
  wire dir_OBUF;
  wire down_s;
  wire r_next2;
  wire \r_reg[0]_i_10_n_0 ;
  wire \r_reg[0]_i_12_n_0 ;
  wire \r_reg[0]_i_13_n_0 ;
  wire \r_reg[0]_i_14_n_0 ;
  wire \r_reg[0]_i_15_n_0 ;
  wire \r_reg[0]_i_16_n_0 ;
  wire \r_reg[0]_i_17_n_0 ;
  wire \r_reg[0]_i_3_n_0 ;
  wire \r_reg[0]_i_4_n_0 ;
  wire \r_reg[0]_i_5_n_0 ;
  wire \r_reg[0]_i_6_n_0 ;
  wire \r_reg[0]_i_7_n_0 ;
  wire \r_reg[0]_i_8_n_0 ;
  wire \r_reg[0]_i_9_n_0 ;
  wire \r_reg[12]_i_2_n_0 ;
  wire \r_reg[12]_i_3_n_0 ;
  wire \r_reg[12]_i_4_n_0 ;
  wire \r_reg[4]_i_2_n_0 ;
  wire \r_reg[4]_i_3_n_0 ;
  wire \r_reg[4]_i_4_n_0 ;
  wire \r_reg[4]_i_5_n_0 ;
  wire \r_reg[4]_i_6_n_0 ;
  wire \r_reg[4]_i_7_n_0 ;
  wire \r_reg[4]_i_8_n_0 ;
  wire \r_reg[4]_i_9_n_0 ;
  wire \r_reg[8]_i_2_n_0 ;
  wire \r_reg[8]_i_3_n_0 ;
  wire \r_reg[8]_i_4_n_0 ;
  wire \r_reg[8]_i_5_n_0 ;
  wire \r_reg[8]_i_6_n_0 ;
  wire \r_reg[8]_i_7_n_0 ;
  wire \r_reg[8]_i_8_n_0 ;
  wire \r_reg[8]_i_9_n_0 ;
  wire [12:0]r_reg_reg;
  wire \r_reg_reg[0]_0 ;
  wire \r_reg_reg[0]_i_2_n_0 ;
  wire \r_reg_reg[0]_i_2_n_4 ;
  wire \r_reg_reg[0]_i_2_n_5 ;
  wire \r_reg_reg[0]_i_2_n_6 ;
  wire \r_reg_reg[0]_i_2_n_7 ;
  wire \r_reg_reg[12]_i_1_n_6 ;
  wire \r_reg_reg[12]_i_1_n_7 ;
  wire \r_reg_reg[4]_i_1_n_0 ;
  wire \r_reg_reg[4]_i_1_n_4 ;
  wire \r_reg_reg[4]_i_1_n_5 ;
  wire \r_reg_reg[4]_i_1_n_6 ;
  wire \r_reg_reg[4]_i_1_n_7 ;
  wire \r_reg_reg[8]_i_1_n_0 ;
  wire \r_reg_reg[8]_i_1_n_4 ;
  wire \r_reg_reg[8]_i_1_n_5 ;
  wire \r_reg_reg[8]_i_1_n_6 ;
  wire \r_reg_reg[8]_i_1_n_7 ;
  wire [6:0]sseg_OBUF;
  wire up_s;
  wire [2:0]\NLW_r_reg_reg[0]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_r_reg_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_r_reg_reg[12]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_r_reg_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_r_reg_reg[8]_i_1_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \d0_reg[0]_i_1 
       (.I0(d0_reg[0]),
        .O(\d0_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h55A2AA54)) 
    \d0_reg[1]_i_1 
       (.I0(up_s),
        .I1(d0_reg[3]),
        .I2(d0_reg[2]),
        .I3(d0_reg[1]),
        .I4(d0_reg[0]),
        .O(\d0_reg[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h5AF0F0A4)) 
    \d0_reg[2]_i_1 
       (.I0(up_s),
        .I1(d0_reg[3]),
        .I2(d0_reg[2]),
        .I3(d0_reg[0]),
        .I4(d0_reg[1]),
        .O(\d0_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h6CC4CCC9)) 
    \d0_reg[3]_i_2 
       (.I0(up_s),
        .I1(d0_reg[3]),
        .I2(d0_reg[2]),
        .I3(d0_reg[1]),
        .I4(d0_reg[0]),
        .O(\d0_reg[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \d0_reg_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\d0_reg[0]_i_1_n_0 ),
        .Q(d0_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \d0_reg_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\d0_reg[1]_i_1_n_0 ),
        .Q(d0_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \d0_reg_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\d0_reg[2]_i_1_n_0 ),
        .Q(d0_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \d0_reg_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\d0_reg[3]_i_2_n_0 ),
        .Q(d0_reg[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \d1_reg[0]_i_1 
       (.I0(d1_reg[0]),
        .O(d1_next[0]));
  (* \PinAttr:I4:HOLD_DETOUR  = "194" *) 
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h55A2AA54)) 
    \d1_reg[1]_i_1 
       (.I0(up_s),
        .I1(d1_reg[3]),
        .I2(d1_reg[2]),
        .I3(d1_reg[1]),
        .I4(d1_reg[0]),
        .O(d1_next[1]));
  (* \PinAttr:I3:HOLD_DETOUR  = "194" *) 
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h5AF0F0A4)) 
    \d1_reg[2]_i_1 
       (.I0(up_s),
        .I1(d1_reg[3]),
        .I2(d1_reg[2]),
        .I3(d1_reg[0]),
        .I4(d1_reg[1]),
        .O(d1_next[2]));
  LUT6 #(
    .INIT(64'h00000A0000000004)) 
    \d1_reg[3]_i_1 
       (.I0(up_s),
        .I1(down_s),
        .I2(d0_reg[1]),
        .I3(d0_reg[0]),
        .I4(d0_reg[2]),
        .I5(d0_reg[3]),
        .O(\d1_reg[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h6CC4CCC9)) 
    \d1_reg[3]_i_2 
       (.I0(up_s),
        .I1(d1_reg[3]),
        .I2(d1_reg[2]),
        .I3(d1_reg[1]),
        .I4(d1_reg[0]),
        .O(d1_next[3]));
  FDCE #(
    .INIT(1'b0)) 
    \d1_reg_reg[0] 
       (.C(CLK),
        .CE(\d1_reg[3]_i_1_n_0 ),
        .CLR(AR),
        .D(d1_next[0]),
        .Q(d1_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \d1_reg_reg[1] 
       (.C(CLK),
        .CE(\d1_reg[3]_i_1_n_0 ),
        .CLR(AR),
        .D(d1_next[1]),
        .Q(d1_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \d1_reg_reg[2] 
       (.C(CLK),
        .CE(\d1_reg[3]_i_1_n_0 ),
        .CLR(AR),
        .D(d1_next[2]),
        .Q(d1_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \d1_reg_reg[3] 
       (.C(CLK),
        .CE(\d1_reg[3]_i_1_n_0 ),
        .CLR(AR),
        .D(d1_next[3]),
        .Q(d1_reg[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \d2_reg[0]_i_1 
       (.I0(d2_reg[0]),
        .O(d2_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h55A2AA54)) 
    \d2_reg[1]_i_1 
       (.I0(up_s),
        .I1(d2_reg[3]),
        .I2(d2_reg[2]),
        .I3(d2_reg[1]),
        .I4(d2_reg[0]),
        .O(d2_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h5AF0F0A4)) 
    \d2_reg[2]_i_1 
       (.I0(up_s),
        .I1(d2_reg[3]),
        .I2(d2_reg[2]),
        .I3(d2_reg[0]),
        .I4(d2_reg[1]),
        .O(d2_next[2]));
  LUT6 #(
    .INIT(64'h1010101010101F10)) 
    \d2_reg[3]_i_1 
       (.I0(\d2_reg[3]_i_3_n_0 ),
        .I1(\d2_reg[3]_i_4_n_0 ),
        .I2(up_s),
        .I3(down_s),
        .I4(\d3_reg[3]_i_6_n_0 ),
        .I5(\d3_reg[3]_i_4_n_0 ),
        .O(\d2_reg[3]_i_1_n_0 ));
  (* \PinAttr:I3:HOLD_DETOUR  = "182" *) 
  LUT5 #(
    .INIT(32'h6CC4CCC9)) 
    \d2_reg[3]_i_2 
       (.I0(up_s),
        .I1(d2_reg[3]),
        .I2(d2_reg[2]),
        .I3(d2_reg[1]),
        .I4(d2_reg[0]),
        .O(d2_next[3]));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \d2_reg[3]_i_3 
       (.I0(d0_reg[3]),
        .I1(d0_reg[0]),
        .I2(d0_reg[2]),
        .I3(d0_reg[1]),
        .O(\d2_reg[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \d2_reg[3]_i_4 
       (.I0(d1_reg[3]),
        .I1(d1_reg[0]),
        .I2(d1_reg[2]),
        .I3(d1_reg[1]),
        .O(\d2_reg[3]_i_4_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \d2_reg_reg[0] 
       (.C(CLK),
        .CE(\d2_reg[3]_i_1_n_0 ),
        .CLR(AR),
        .D(d2_next[0]),
        .Q(d2_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \d2_reg_reg[1] 
       (.C(CLK),
        .CE(\d2_reg[3]_i_1_n_0 ),
        .CLR(AR),
        .D(d2_next[1]),
        .Q(d2_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \d2_reg_reg[2] 
       (.C(CLK),
        .CE(\d2_reg[3]_i_1_n_0 ),
        .CLR(AR),
        .D(d2_next[2]),
        .Q(d2_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \d2_reg_reg[3] 
       (.C(CLK),
        .CE(\d2_reg[3]_i_1_n_0 ),
        .CLR(AR),
        .D(d2_next[3]),
        .Q(d2_reg[3]));
  (* \PinAttr:I0:HOLD_DETOUR  = "193" *) 
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \d3_reg[0]_i_1 
       (.I0(d3_reg[0]),
        .O(d3_next[0]));
  (* \PinAttr:I4:HOLD_DETOUR  = "193" *) 
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h55A8AA54)) 
    \d3_reg[1]_i_1 
       (.I0(up_s),
        .I1(d3_reg[3]),
        .I2(d3_reg[2]),
        .I3(d3_reg[1]),
        .I4(d3_reg[0]),
        .O(d3_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h5AF0F0A4)) 
    \d3_reg[2]_i_1 
       (.I0(up_s),
        .I1(d3_reg[3]),
        .I2(d3_reg[2]),
        .I3(d3_reg[0]),
        .I4(d3_reg[1]),
        .O(d3_next[2]));
  LUT6 #(
    .INIT(64'h88888888888888B8)) 
    \d3_reg[3]_i_1 
       (.I0(\d3_reg[3]_i_3_n_0 ),
        .I1(up_s),
        .I2(down_s),
        .I3(\d3_reg[3]_i_4_n_0 ),
        .I4(\d3_reg[3]_i_5_n_0 ),
        .I5(\d3_reg[3]_i_6_n_0 ),
        .O(\d3_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h6CCCCCC8)) 
    \d3_reg[3]_i_2 
       (.I0(up_s),
        .I1(d3_reg[3]),
        .I2(d3_reg[1]),
        .I3(d3_reg[0]),
        .I4(d3_reg[2]),
        .O(d3_next[3]));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \d3_reg[3]_i_3 
       (.I0(d2_reg[3]),
        .I1(d2_reg[0]),
        .I2(d2_reg[2]),
        .I3(d2_reg[1]),
        .I4(\d2_reg[3]_i_4_n_0 ),
        .I5(\d2_reg[3]_i_3_n_0 ),
        .O(\d3_reg[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \d3_reg[3]_i_4 
       (.I0(d0_reg[1]),
        .I1(d0_reg[0]),
        .I2(d0_reg[2]),
        .I3(d0_reg[3]),
        .O(\d3_reg[3]_i_4_n_0 ));
  (* \PinAttr:I0:HOLD_DETOUR  = "182" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \d3_reg[3]_i_5 
       (.I0(d2_reg[1]),
        .I1(d2_reg[0]),
        .I2(d2_reg[2]),
        .I3(d2_reg[3]),
        .O(\d3_reg[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \d3_reg[3]_i_6 
       (.I0(d1_reg[1]),
        .I1(d1_reg[0]),
        .I2(d1_reg[2]),
        .I3(d1_reg[3]),
        .O(\d3_reg[3]_i_6_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \d3_reg_reg[0] 
       (.C(CLK),
        .CE(\d3_reg[3]_i_1_n_0 ),
        .CLR(AR),
        .D(d3_next[0]),
        .Q(d3_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \d3_reg_reg[1] 
       (.C(CLK),
        .CE(\d3_reg[3]_i_1_n_0 ),
        .CLR(AR),
        .D(d3_next[1]),
        .Q(d3_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \d3_reg_reg[2] 
       (.C(CLK),
        .CE(\d3_reg[3]_i_1_n_0 ),
        .CLR(AR),
        .D(d3_next[2]),
        .Q(d3_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \d3_reg_reg[3] 
       (.C(CLK),
        .CE(\d3_reg[3]_i_1_n_0 ),
        .CLR(AR),
        .D(d3_next[3]),
        .Q(d3_reg[3]));
  disp_mux mux_disp
       (.AR(AR),
        .CLK(CLK),
        .Q(d1_reg),
        .an_OBUF(an_OBUF),
        .sseg_OBUF(sseg_OBUF),
        .\sseg_OBUF[0]_inst_i_1_0 (d0_reg),
        .\sseg_OBUF[0]_inst_i_1_1 (d3_reg),
        .\sseg_OBUF[0]_inst_i_1_2 (d2_reg));
  LUT5 #(
    .INIT(32'h01111111)) 
    \r_reg[0]_i_10 
       (.I0(r_reg_reg[0]),
        .I1(r_next2),
        .I2(up_s),
        .I3(\r_reg[0]_i_12_n_0 ),
        .I4(\r_reg[0]_i_13_n_0 ),
        .O(\r_reg[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \r_reg[0]_i_11 
       (.I0(down_s),
        .I1(\r_reg[0]_i_14_n_0 ),
        .I2(\r_reg[0]_i_15_n_0 ),
        .I3(r_reg_reg[12]),
        .I4(dir_OBUF),
        .I5(\r_reg[0]_i_16_n_0 ),
        .O(r_next2));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \r_reg[0]_i_12 
       (.I0(r_reg_reg[10]),
        .I1(r_reg_reg[11]),
        .I2(r_reg_reg[9]),
        .I3(\r_reg[0]_i_17_n_0 ),
        .I4(dir_OBUF),
        .I5(r_reg_reg[12]),
        .O(\r_reg[0]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \r_reg[0]_i_13 
       (.I0(r_reg_reg[6]),
        .I1(r_reg_reg[8]),
        .I2(r_reg_reg[7]),
        .O(\r_reg[0]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \r_reg[0]_i_14 
       (.I0(r_reg_reg[10]),
        .I1(r_reg_reg[11]),
        .I2(r_reg_reg[9]),
        .O(\r_reg[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    \r_reg[0]_i_15 
       (.I0(r_reg_reg[1]),
        .I1(r_reg_reg[2]),
        .I2(r_reg_reg[0]),
        .I3(r_reg_reg[3]),
        .I4(r_reg_reg[4]),
        .I5(r_reg_reg[5]),
        .O(\r_reg[0]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \r_reg[0]_i_16 
       (.I0(r_reg_reg[8]),
        .I1(r_reg_reg[7]),
        .I2(r_reg_reg[6]),
        .O(\r_reg[0]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \r_reg[0]_i_17 
       (.I0(r_reg_reg[1]),
        .I1(r_reg_reg[2]),
        .I2(r_reg_reg[0]),
        .I3(r_reg_reg[4]),
        .I4(r_reg_reg[5]),
        .I5(r_reg_reg[3]),
        .O(\r_reg[0]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \r_reg[0]_i_3 
       (.I0(r_next2),
        .I1(up_s),
        .O(\r_reg[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \r_reg[0]_i_4 
       (.I0(r_next2),
        .I1(up_s),
        .O(\r_reg[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \r_reg[0]_i_5 
       (.I0(r_next2),
        .I1(up_s),
        .O(\r_reg[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h02222222)) 
    \r_reg[0]_i_6 
       (.I0(r_reg_reg[0]),
        .I1(r_next2),
        .I2(up_s),
        .I3(\r_reg[0]_i_12_n_0 ),
        .I4(\r_reg[0]_i_13_n_0 ),
        .O(\r_reg[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h0070000F)) 
    \r_reg[0]_i_7 
       (.I0(\r_reg[0]_i_13_n_0 ),
        .I1(\r_reg[0]_i_12_n_0 ),
        .I2(up_s),
        .I3(r_next2),
        .I4(r_reg_reg[3]),
        .O(\r_reg[0]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h0070000F)) 
    \r_reg[0]_i_8 
       (.I0(\r_reg[0]_i_13_n_0 ),
        .I1(\r_reg[0]_i_12_n_0 ),
        .I2(up_s),
        .I3(r_next2),
        .I4(r_reg_reg[2]),
        .O(\r_reg[0]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h0070000F)) 
    \r_reg[0]_i_9 
       (.I0(\r_reg[0]_i_13_n_0 ),
        .I1(\r_reg[0]_i_12_n_0 ),
        .I2(up_s),
        .I3(r_next2),
        .I4(r_reg_reg[1]),
        .O(\r_reg[0]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \r_reg[12]_i_2 
       (.I0(r_next2),
        .I1(up_s),
        .O(\r_reg[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0070000F)) 
    \r_reg[12]_i_3 
       (.I0(\r_reg[0]_i_13_n_0 ),
        .I1(\r_reg[0]_i_12_n_0 ),
        .I2(up_s),
        .I3(r_next2),
        .I4(dir_OBUF),
        .O(\r_reg[12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0070000F)) 
    \r_reg[12]_i_4 
       (.I0(\r_reg[0]_i_13_n_0 ),
        .I1(\r_reg[0]_i_12_n_0 ),
        .I2(up_s),
        .I3(r_next2),
        .I4(r_reg_reg[12]),
        .O(\r_reg[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \r_reg[4]_i_2 
       (.I0(r_next2),
        .I1(up_s),
        .O(\r_reg[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \r_reg[4]_i_3 
       (.I0(r_next2),
        .I1(up_s),
        .O(\r_reg[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \r_reg[4]_i_4 
       (.I0(r_next2),
        .I1(up_s),
        .O(\r_reg[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \r_reg[4]_i_5 
       (.I0(r_next2),
        .I1(up_s),
        .O(\r_reg[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h09)) 
    \r_reg[4]_i_6 
       (.I0(r_reg_reg[7]),
        .I1(up_s),
        .I2(r_next2),
        .O(\r_reg[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000E0F00F0F)) 
    \r_reg[4]_i_7 
       (.I0(r_reg_reg[7]),
        .I1(r_reg_reg[8]),
        .I2(r_reg_reg[6]),
        .I3(\r_reg[0]_i_12_n_0 ),
        .I4(up_s),
        .I5(r_next2),
        .O(\r_reg[4]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h0070000F)) 
    \r_reg[4]_i_8 
       (.I0(\r_reg[0]_i_13_n_0 ),
        .I1(\r_reg[0]_i_12_n_0 ),
        .I2(up_s),
        .I3(r_next2),
        .I4(r_reg_reg[5]),
        .O(\r_reg[4]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h0070000F)) 
    \r_reg[4]_i_9 
       (.I0(\r_reg[0]_i_13_n_0 ),
        .I1(\r_reg[0]_i_12_n_0 ),
        .I2(up_s),
        .I3(r_next2),
        .I4(r_reg_reg[4]),
        .O(\r_reg[4]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \r_reg[8]_i_2 
       (.I0(r_next2),
        .I1(up_s),
        .O(\r_reg[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \r_reg[8]_i_3 
       (.I0(r_next2),
        .I1(up_s),
        .O(\r_reg[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \r_reg[8]_i_4 
       (.I0(r_next2),
        .I1(up_s),
        .O(\r_reg[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \r_reg[8]_i_5 
       (.I0(r_next2),
        .I1(up_s),
        .O(\r_reg[8]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0070000F)) 
    \r_reg[8]_i_6 
       (.I0(\r_reg[0]_i_13_n_0 ),
        .I1(\r_reg[0]_i_12_n_0 ),
        .I2(up_s),
        .I3(r_next2),
        .I4(r_reg_reg[11]),
        .O(\r_reg[8]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h0070000F)) 
    \r_reg[8]_i_7 
       (.I0(\r_reg[0]_i_13_n_0 ),
        .I1(\r_reg[0]_i_12_n_0 ),
        .I2(up_s),
        .I3(r_next2),
        .I4(r_reg_reg[10]),
        .O(\r_reg[8]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h0070000F)) 
    \r_reg[8]_i_8 
       (.I0(\r_reg[0]_i_13_n_0 ),
        .I1(\r_reg[0]_i_12_n_0 ),
        .I2(up_s),
        .I3(r_next2),
        .I4(r_reg_reg[9]),
        .O(\r_reg[8]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h09)) 
    \r_reg[8]_i_9 
       (.I0(r_reg_reg[8]),
        .I1(up_s),
        .I2(r_next2),
        .O(\r_reg[8]_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[0] 
       (.C(CLK),
        .CE(\r_reg_reg[0]_0 ),
        .CLR(AR),
        .D(\r_reg_reg[0]_i_2_n_7 ),
        .Q(r_reg_reg[0]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \r_reg_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\r_reg_reg[0]_i_2_n_0 ,\NLW_r_reg_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\r_reg[0]_i_3_n_0 ,\r_reg[0]_i_4_n_0 ,\r_reg[0]_i_5_n_0 ,\r_reg[0]_i_6_n_0 }),
        .O({\r_reg_reg[0]_i_2_n_4 ,\r_reg_reg[0]_i_2_n_5 ,\r_reg_reg[0]_i_2_n_6 ,\r_reg_reg[0]_i_2_n_7 }),
        .S({\r_reg[0]_i_7_n_0 ,\r_reg[0]_i_8_n_0 ,\r_reg[0]_i_9_n_0 ,\r_reg[0]_i_10_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[10] 
       (.C(CLK),
        .CE(\r_reg_reg[0]_0 ),
        .CLR(AR),
        .D(\r_reg_reg[8]_i_1_n_5 ),
        .Q(r_reg_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[11] 
       (.C(CLK),
        .CE(\r_reg_reg[0]_0 ),
        .CLR(AR),
        .D(\r_reg_reg[8]_i_1_n_4 ),
        .Q(r_reg_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[12] 
       (.C(CLK),
        .CE(\r_reg_reg[0]_0 ),
        .CLR(AR),
        .D(\r_reg_reg[12]_i_1_n_7 ),
        .Q(r_reg_reg[12]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \r_reg_reg[12]_i_1 
       (.CI(\r_reg_reg[8]_i_1_n_0 ),
        .CO(\NLW_r_reg_reg[12]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\r_reg[12]_i_2_n_0 }),
        .O({\NLW_r_reg_reg[12]_i_1_O_UNCONNECTED [3:2],\r_reg_reg[12]_i_1_n_6 ,\r_reg_reg[12]_i_1_n_7 }),
        .S({1'b0,1'b0,\r_reg[12]_i_3_n_0 ,\r_reg[12]_i_4_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[13] 
       (.C(CLK),
        .CE(\r_reg_reg[0]_0 ),
        .CLR(AR),
        .D(\r_reg_reg[12]_i_1_n_6 ),
        .Q(dir_OBUF));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[1] 
       (.C(CLK),
        .CE(\r_reg_reg[0]_0 ),
        .CLR(AR),
        .D(\r_reg_reg[0]_i_2_n_6 ),
        .Q(r_reg_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[2] 
       (.C(CLK),
        .CE(\r_reg_reg[0]_0 ),
        .CLR(AR),
        .D(\r_reg_reg[0]_i_2_n_5 ),
        .Q(r_reg_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[3] 
       (.C(CLK),
        .CE(\r_reg_reg[0]_0 ),
        .CLR(AR),
        .D(\r_reg_reg[0]_i_2_n_4 ),
        .Q(r_reg_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[4] 
       (.C(CLK),
        .CE(\r_reg_reg[0]_0 ),
        .CLR(AR),
        .D(\r_reg_reg[4]_i_1_n_7 ),
        .Q(r_reg_reg[4]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \r_reg_reg[4]_i_1 
       (.CI(\r_reg_reg[0]_i_2_n_0 ),
        .CO({\r_reg_reg[4]_i_1_n_0 ,\NLW_r_reg_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\r_reg[4]_i_2_n_0 ,\r_reg[4]_i_3_n_0 ,\r_reg[4]_i_4_n_0 ,\r_reg[4]_i_5_n_0 }),
        .O({\r_reg_reg[4]_i_1_n_4 ,\r_reg_reg[4]_i_1_n_5 ,\r_reg_reg[4]_i_1_n_6 ,\r_reg_reg[4]_i_1_n_7 }),
        .S({\r_reg[4]_i_6_n_0 ,\r_reg[4]_i_7_n_0 ,\r_reg[4]_i_8_n_0 ,\r_reg[4]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[5] 
       (.C(CLK),
        .CE(\r_reg_reg[0]_0 ),
        .CLR(AR),
        .D(\r_reg_reg[4]_i_1_n_6 ),
        .Q(r_reg_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[6] 
       (.C(CLK),
        .CE(\r_reg_reg[0]_0 ),
        .CLR(AR),
        .D(\r_reg_reg[4]_i_1_n_5 ),
        .Q(r_reg_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[7] 
       (.C(CLK),
        .CE(\r_reg_reg[0]_0 ),
        .CLR(AR),
        .D(\r_reg_reg[4]_i_1_n_4 ),
        .Q(r_reg_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[8] 
       (.C(CLK),
        .CE(\r_reg_reg[0]_0 ),
        .CLR(AR),
        .D(\r_reg_reg[8]_i_1_n_7 ),
        .Q(r_reg_reg[8]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \r_reg_reg[8]_i_1 
       (.CI(\r_reg_reg[4]_i_1_n_0 ),
        .CO({\r_reg_reg[8]_i_1_n_0 ,\NLW_r_reg_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\r_reg[8]_i_2_n_0 ,\r_reg[8]_i_3_n_0 ,\r_reg[8]_i_4_n_0 ,\r_reg[8]_i_5_n_0 }),
        .O({\r_reg_reg[8]_i_1_n_4 ,\r_reg_reg[8]_i_1_n_5 ,\r_reg_reg[8]_i_1_n_6 ,\r_reg_reg[8]_i_1_n_7 }),
        .S({\r_reg[8]_i_6_n_0 ,\r_reg[8]_i_7_n_0 ,\r_reg[8]_i_8_n_0 ,\r_reg[8]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[9] 
       (.C(CLK),
        .CE(\r_reg_reg[0]_0 ),
        .CLR(AR),
        .D(\r_reg_reg[8]_i_1_n_6 ),
        .Q(r_reg_reg[9]));
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
