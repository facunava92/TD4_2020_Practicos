// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (lin64) Build 2729669 Thu Dec  5 04:48:12 MST 2019
// Date        : Mon May 18 00:13:47 2020
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

module clkdiv
   (\q_reg[10]_0 ,
    CLK,
    reset_IBUF,
    S);
  output \q_reg[10]_0 ;
  input CLK;
  input reset_IBUF;
  input [0:0]S;

  wire CLK;
  wire [0:0]S;
  wire \q[0]_i_2_n_0 ;
  wire \q_reg[0]_i_1_n_0 ;
  wire \q_reg[0]_i_1_n_4 ;
  wire \q_reg[0]_i_1_n_5 ;
  wire \q_reg[0]_i_1_n_6 ;
  wire \q_reg[0]_i_1_n_7 ;
  wire \q_reg[10]_0 ;
  wire \q_reg[4]_i_1_n_0 ;
  wire \q_reg[4]_i_1_n_4 ;
  wire \q_reg[4]_i_1_n_5 ;
  wire \q_reg[4]_i_1_n_6 ;
  wire \q_reg[4]_i_1_n_7 ;
  wire \q_reg[8]_i_1_n_5 ;
  wire \q_reg[8]_i_1_n_6 ;
  wire \q_reg[8]_i_1_n_7 ;
  wire \q_reg_n_0_[0] ;
  wire \q_reg_n_0_[1] ;
  wire \q_reg_n_0_[2] ;
  wire \q_reg_n_0_[3] ;
  wire \q_reg_n_0_[4] ;
  wire \q_reg_n_0_[5] ;
  wire \q_reg_n_0_[6] ;
  wire \q_reg_n_0_[7] ;
  wire \q_reg_n_0_[8] ;
  wire \q_reg_n_0_[9] ;
  wire reset_IBUF;
  wire [2:0]\NLW_q_reg[0]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_q_reg[4]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_q_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_q_reg[8]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \q[0]_i_2 
       (.I0(\q_reg_n_0_[0] ),
        .O(\q[0]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\q_reg[0]_i_1_n_7 ),
        .Q(\q_reg_n_0_[0] ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \q_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\q_reg[0]_i_1_n_0 ,\NLW_q_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\q_reg[0]_i_1_n_4 ,\q_reg[0]_i_1_n_5 ,\q_reg[0]_i_1_n_6 ,\q_reg[0]_i_1_n_7 }),
        .S({\q_reg_n_0_[3] ,\q_reg_n_0_[2] ,\q_reg_n_0_[1] ,\q[0]_i_2_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\q_reg[8]_i_1_n_5 ),
        .Q(\q_reg[10]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\q_reg[0]_i_1_n_6 ),
        .Q(\q_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\q_reg[0]_i_1_n_5 ),
        .Q(\q_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\q_reg[0]_i_1_n_4 ),
        .Q(\q_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\q_reg[4]_i_1_n_7 ),
        .Q(\q_reg_n_0_[4] ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \q_reg[4]_i_1 
       (.CI(\q_reg[0]_i_1_n_0 ),
        .CO({\q_reg[4]_i_1_n_0 ,\NLW_q_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\q_reg[4]_i_1_n_4 ,\q_reg[4]_i_1_n_5 ,\q_reg[4]_i_1_n_6 ,\q_reg[4]_i_1_n_7 }),
        .S({\q_reg_n_0_[7] ,\q_reg_n_0_[6] ,\q_reg_n_0_[5] ,\q_reg_n_0_[4] }));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\q_reg[4]_i_1_n_6 ),
        .Q(\q_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\q_reg[4]_i_1_n_5 ),
        .Q(\q_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\q_reg[4]_i_1_n_4 ),
        .Q(\q_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\q_reg[8]_i_1_n_7 ),
        .Q(\q_reg_n_0_[8] ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \q_reg[8]_i_1 
       (.CI(\q_reg[4]_i_1_n_0 ),
        .CO(\NLW_q_reg[8]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_q_reg[8]_i_1_O_UNCONNECTED [3],\q_reg[8]_i_1_n_5 ,\q_reg[8]_i_1_n_6 ,\q_reg[8]_i_1_n_7 }),
        .S({1'b0,S,\q_reg_n_0_[9] ,\q_reg_n_0_[8] }));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\q_reg[8]_i_1_n_6 ),
        .Q(\q_reg_n_0_[9] ));
endmodule

module debouncer
   (A_s,
    CLK,
    reset_IBUF,
    D);
  output A_s;
  input CLK;
  input reset_IBUF;
  input [0:0]D;

  wire A_s;
  wire CLK;
  wire [0:0]D;
  wire f_data_reg_i_1__0_n_0;
  wire [2:0]filter_next;
  wire \filter_reg_reg_n_0_[0] ;
  wire reset_IBUF;

  LUT5 #(
    .INIT(32'hFFFE8000)) 
    f_data_reg_i_1__0
       (.I0(filter_next[2]),
        .I1(filter_next[1]),
        .I2(filter_next[0]),
        .I3(\filter_reg_reg_n_0_[0] ),
        .I4(A_s),
        .O(f_data_reg_i_1__0_n_0));
  FDCE #(
    .INIT(1'b0)) 
    f_data_reg_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(f_data_reg_i_1__0_n_0),
        .Q(A_s));
  FDCE #(
    .INIT(1'b0)) 
    \filter_reg_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(filter_next[0]),
        .Q(\filter_reg_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \filter_reg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(filter_next[1]),
        .Q(filter_next[0]));
  FDCE #(
    .INIT(1'b0)) 
    \filter_reg_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(filter_next[2]),
        .Q(filter_next[1]));
  FDCE #(
    .INIT(1'b0)) 
    \filter_reg_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(D),
        .Q(filter_next[2]));
endmodule

(* ORIG_REF_NAME = "debouncer" *) 
module debouncer_0
   (B_s,
    CLK,
    reset_IBUF,
    D);
  output B_s;
  input CLK;
  input reset_IBUF;
  input [0:0]D;

  wire B_s;
  wire CLK;
  wire [0:0]D;
  wire f_data_reg_i_1_n_0;
  wire [2:0]filter_next;
  wire \filter_reg_reg_n_0_[0] ;
  wire reset_IBUF;

  LUT5 #(
    .INIT(32'hFFFE8000)) 
    f_data_reg_i_1
       (.I0(filter_next[2]),
        .I1(filter_next[1]),
        .I2(filter_next[0]),
        .I3(\filter_reg_reg_n_0_[0] ),
        .I4(B_s),
        .O(f_data_reg_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    f_data_reg_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(f_data_reg_i_1_n_0),
        .Q(B_s));
  FDCE #(
    .INIT(1'b0)) 
    \filter_reg_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(filter_next[0]),
        .Q(\filter_reg_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \filter_reg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(filter_next[1]),
        .Q(filter_next[0]));
  FDCE #(
    .INIT(1'b0)) 
    \filter_reg_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(filter_next[2]),
        .Q(filter_next[1]));
  FDCE #(
    .INIT(1'b0)) 
    \filter_reg_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(D),
        .Q(filter_next[2]));
endmodule

module disp_mux
   (sseg_OBUF,
    an_OBUF,
    CLK,
    reset_IBUF,
    Q,
    \sseg_OBUF[0]_inst_i_1_0 ,
    \sseg_OBUF[0]_inst_i_1_1 ,
    \sseg_OBUF[0]_inst_i_1_2 );
  output [6:0]sseg_OBUF;
  output [3:0]an_OBUF;
  input CLK;
  input reset_IBUF;
  input [3:0]Q;
  input [3:0]\sseg_OBUF[0]_inst_i_1_0 ;
  input [3:0]\sseg_OBUF[0]_inst_i_1_1 ;
  input [3:0]\sseg_OBUF[0]_inst_i_1_2 ;

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
  wire reset_IBUF;
  wire [1:0]sel;
  wire [6:0]sseg_OBUF;
  wire [3:0]\sseg_OBUF[0]_inst_i_1_0 ;
  wire [3:0]\sseg_OBUF[0]_inst_i_1_1 ;
  wire [3:0]\sseg_OBUF[0]_inst_i_1_2 ;
  wire \sseg_OBUF[6]_inst_i_2_n_0 ;
  wire \sseg_OBUF[6]_inst_i_3_n_0 ;
  wire \sseg_OBUF[6]_inst_i_4_n_0 ;
  wire \sseg_OBUF[6]_inst_i_5_n_0 ;
  wire [2:0]\NLW_q_reg_reg[0]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_q_reg_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_q_reg_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_q_reg_reg[16]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_q_reg_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_q_reg_reg[8]_i_1_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'hE)) 
    \an_OBUF[0]_inst_i_1 
       (.I0(sel[1]),
        .I1(sel[0]),
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
       (.I0(sel[1]),
        .I1(sel[0]),
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
        .CLR(reset_IBUF),
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
        .CLR(reset_IBUF),
        .D(\q_reg_reg[8]_i_1_n_5 ),
        .Q(\q_reg_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\q_reg_reg[8]_i_1_n_4 ),
        .Q(\q_reg_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
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
        .CLR(reset_IBUF),
        .D(\q_reg_reg[12]_i_1_n_6 ),
        .Q(\q_reg_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\q_reg_reg[12]_i_1_n_5 ),
        .Q(\q_reg_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\q_reg_reg[12]_i_1_n_4 ),
        .Q(\q_reg_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
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
        .CLR(reset_IBUF),
        .D(\q_reg_reg[16]_i_1_n_6 ),
        .Q(sel[0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\q_reg_reg[16]_i_1_n_5 ),
        .Q(sel[1]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\q_reg_reg[0]_i_1_n_6 ),
        .Q(\q_reg_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\q_reg_reg[0]_i_1_n_5 ),
        .Q(\q_reg_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\q_reg_reg[0]_i_1_n_4 ),
        .Q(\q_reg_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
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
        .CLR(reset_IBUF),
        .D(\q_reg_reg[4]_i_1_n_6 ),
        .Q(\q_reg_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\q_reg_reg[4]_i_1_n_5 ),
        .Q(\q_reg_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\q_reg_reg[4]_i_1_n_4 ),
        .Q(\q_reg_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
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
        .CLR(reset_IBUF),
        .D(\q_reg_reg[8]_i_1_n_6 ),
        .Q(\q_reg_reg_n_0_[9] ));
  LUT4 #(
    .INIT(16'h2904)) 
    \sseg_OBUF[0]_inst_i_1 
       (.I0(\sseg_OBUF[6]_inst_i_2_n_0 ),
        .I1(\sseg_OBUF[6]_inst_i_3_n_0 ),
        .I2(\sseg_OBUF[6]_inst_i_5_n_0 ),
        .I3(\sseg_OBUF[6]_inst_i_4_n_0 ),
        .O(sseg_OBUF[0]));
  LUT4 #(
    .INIT(16'hA4C8)) 
    \sseg_OBUF[1]_inst_i_1 
       (.I0(\sseg_OBUF[6]_inst_i_2_n_0 ),
        .I1(\sseg_OBUF[6]_inst_i_3_n_0 ),
        .I2(\sseg_OBUF[6]_inst_i_5_n_0 ),
        .I3(\sseg_OBUF[6]_inst_i_4_n_0 ),
        .O(sseg_OBUF[1]));
  LUT4 #(
    .INIT(16'h8098)) 
    \sseg_OBUF[2]_inst_i_1 
       (.I0(\sseg_OBUF[6]_inst_i_2_n_0 ),
        .I1(\sseg_OBUF[6]_inst_i_3_n_0 ),
        .I2(\sseg_OBUF[6]_inst_i_5_n_0 ),
        .I3(\sseg_OBUF[6]_inst_i_4_n_0 ),
        .O(sseg_OBUF[2]));
  LUT4 #(
    .INIT(16'hC304)) 
    \sseg_OBUF[3]_inst_i_1 
       (.I0(\sseg_OBUF[6]_inst_i_2_n_0 ),
        .I1(\sseg_OBUF[6]_inst_i_3_n_0 ),
        .I2(\sseg_OBUF[6]_inst_i_5_n_0 ),
        .I3(\sseg_OBUF[6]_inst_i_4_n_0 ),
        .O(sseg_OBUF[3]));
  LUT4 #(
    .INIT(16'h5710)) 
    \sseg_OBUF[4]_inst_i_1 
       (.I0(\sseg_OBUF[6]_inst_i_2_n_0 ),
        .I1(\sseg_OBUF[6]_inst_i_5_n_0 ),
        .I2(\sseg_OBUF[6]_inst_i_3_n_0 ),
        .I3(\sseg_OBUF[6]_inst_i_4_n_0 ),
        .O(sseg_OBUF[4]));
  LUT4 #(
    .INIT(16'h482E)) 
    \sseg_OBUF[5]_inst_i_1 
       (.I0(\sseg_OBUF[6]_inst_i_5_n_0 ),
        .I1(\sseg_OBUF[6]_inst_i_4_n_0 ),
        .I2(\sseg_OBUF[6]_inst_i_2_n_0 ),
        .I3(\sseg_OBUF[6]_inst_i_3_n_0 ),
        .O(sseg_OBUF[5]));
  LUT4 #(
    .INIT(16'h4019)) 
    \sseg_OBUF[6]_inst_i_1 
       (.I0(\sseg_OBUF[6]_inst_i_2_n_0 ),
        .I1(\sseg_OBUF[6]_inst_i_3_n_0 ),
        .I2(\sseg_OBUF[6]_inst_i_4_n_0 ),
        .I3(\sseg_OBUF[6]_inst_i_5_n_0 ),
        .O(sseg_OBUF[6]));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \sseg_OBUF[6]_inst_i_2 
       (.I0(Q[3]),
        .I1(\sseg_OBUF[0]_inst_i_1_0 [3]),
        .I2(\sseg_OBUF[0]_inst_i_1_1 [3]),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(\sseg_OBUF[0]_inst_i_1_2 [3]),
        .O(\sseg_OBUF[6]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \sseg_OBUF[6]_inst_i_3 
       (.I0(Q[2]),
        .I1(\sseg_OBUF[0]_inst_i_1_0 [2]),
        .I2(\sseg_OBUF[0]_inst_i_1_1 [2]),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(\sseg_OBUF[0]_inst_i_1_2 [2]),
        .O(\sseg_OBUF[6]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \sseg_OBUF[6]_inst_i_4 
       (.I0(\sseg_OBUF[0]_inst_i_1_0 [0]),
        .I1(Q[0]),
        .I2(\sseg_OBUF[0]_inst_i_1_1 [0]),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(\sseg_OBUF[0]_inst_i_1_2 [0]),
        .O(\sseg_OBUF[6]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF0AACCFFF0AACC00)) 
    \sseg_OBUF[6]_inst_i_5 
       (.I0(\sseg_OBUF[0]_inst_i_1_2 [1]),
        .I1(\sseg_OBUF[0]_inst_i_1_0 [1]),
        .I2(\sseg_OBUF[0]_inst_i_1_1 [1]),
        .I3(sel[0]),
        .I4(sel[1]),
        .I5(Q[1]),
        .O(\sseg_OBUF[6]_inst_i_5_n_0 ));
endmodule

(* ECO_CHECKSUM = "58523a5d" *) 
(* NotValidForBitStream *)
module motorcc_cl
   (clk,
    reset,
    A,
    B,
    sw,
    pwm,
    pwm_n,
    led,
    an,
    sseg);
  input clk;
  input reset;
  input A;
  input B;
  input [13:0]sw;
  output pwm;
  output pwm_n;
  output [13:0]led;
  output [3:0]an;
  output [6:0]sseg;

  wire A;
  wire A_IBUF;
  wire A_s;
  wire B;
  wire B_IBUF;
  wire B_s;
  wire [3:0]an;
  wire [3:0]an_OBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire clock_divider_n_0;
  wire d0_next;
  wire down_s;
  wire [13:0]led;
  wire [13:0]led_OBUF;
  wire pwm;
  wire pwm_OBUF;
  wire pwm_n;
  wire pwm_n_OBUF;
  wire [10:10]q_reg;
  wire [13:0]r_reg_reg;
  wire reset;
  wire reset_IBUF;
  wire [6:0]sseg;
  wire [6:0]sseg_OBUF;
  wire [13:0]sw;
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
  clkdiv clock_divider
       (.CLK(clk_IBUF_BUFG),
        .S(q_reg),
        .\q_reg[10]_0 (clock_divider_n_0),
        .reset_IBUF(reset_IBUF));
  debouncer debounce_A
       (.A_s(A_s),
        .CLK(clk_IBUF_BUFG),
        .D(A_IBUF),
        .reset_IBUF(reset_IBUF));
  debouncer_0 debounce_B
       (.B_s(B_s),
        .CLK(clk_IBUF_BUFG),
        .D(B_IBUF),
        .reset_IBUF(reset_IBUF));
  OBUF \led_OBUF[0]_inst 
       (.I(led_OBUF[0]),
        .O(led[0]));
  OBUF \led_OBUF[10]_inst 
       (.I(led_OBUF[10]),
        .O(led[10]));
  OBUF \led_OBUF[11]_inst 
       (.I(led_OBUF[11]),
        .O(led[11]));
  OBUF \led_OBUF[12]_inst 
       (.I(led_OBUF[12]),
        .O(led[12]));
  OBUF \led_OBUF[13]_inst 
       (.I(led_OBUF[13]),
        .O(led[13]));
  OBUF \led_OBUF[1]_inst 
       (.I(led_OBUF[1]),
        .O(led[1]));
  OBUF \led_OBUF[2]_inst 
       (.I(led_OBUF[2]),
        .O(led[2]));
  OBUF \led_OBUF[3]_inst 
       (.I(led_OBUF[3]),
        .O(led[3]));
  OBUF \led_OBUF[4]_inst 
       (.I(led_OBUF[4]),
        .O(led[4]));
  OBUF \led_OBUF[5]_inst 
       (.I(led_OBUF[5]),
        .O(led[5]));
  OBUF \led_OBUF[6]_inst 
       (.I(led_OBUF[6]),
        .O(led[6]));
  OBUF \led_OBUF[7]_inst 
       (.I(led_OBUF[7]),
        .O(led[7]));
  OBUF \led_OBUF[8]_inst 
       (.I(led_OBUF[8]),
        .O(led[8]));
  OBUF \led_OBUF[9]_inst 
       (.I(led_OBUF[9]),
        .O(led[9]));
  BUFG \pos_reg_reg[13]_i_1 
       (.I(clock_divider_n_0),
        .O(q_reg));
  OBUF pwm_OBUF_inst
       (.I(pwm_OBUF),
        .O(pwm));
  pwmg pwm_generator
       (.D(led_OBUF),
        .S(q_reg),
        .pwm_OBUF(pwm_OBUF),
        .pwm_n_OBUF(pwm_n_OBUF),
        .r_reg_reg(r_reg_reg),
        .reset_IBUF(reset_IBUF));
  OBUF pwm_n_OBUF_inst
       (.I(pwm_n_OBUF),
        .O(pwm_n));
  quad_decoder quadrature_decoder
       (.A_s(A_s),
        .B_s(B_s),
        .CLK(clk_IBUF_BUFG),
        .d0_next(d0_next),
        .down_s(down_s),
        .reset_IBUF(reset_IBUF),
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
  IBUF \sw_IBUF[0]_inst 
       (.I(sw[0]),
        .O(led_OBUF[0]));
  IBUF \sw_IBUF[10]_inst 
       (.I(sw[10]),
        .O(led_OBUF[10]));
  IBUF \sw_IBUF[11]_inst 
       (.I(sw[11]),
        .O(led_OBUF[11]));
  IBUF \sw_IBUF[12]_inst 
       (.I(sw[12]),
        .O(led_OBUF[12]));
  IBUF \sw_IBUF[13]_inst 
       (.I(sw[13]),
        .O(led_OBUF[13]));
  IBUF \sw_IBUF[1]_inst 
       (.I(sw[1]),
        .O(led_OBUF[1]));
  IBUF \sw_IBUF[2]_inst 
       (.I(sw[2]),
        .O(led_OBUF[2]));
  IBUF \sw_IBUF[3]_inst 
       (.I(sw[3]),
        .O(led_OBUF[3]));
  IBUF \sw_IBUF[4]_inst 
       (.I(sw[4]),
        .O(led_OBUF[4]));
  IBUF \sw_IBUF[5]_inst 
       (.I(sw[5]),
        .O(led_OBUF[5]));
  IBUF \sw_IBUF[6]_inst 
       (.I(sw[6]),
        .O(led_OBUF[6]));
  IBUF \sw_IBUF[7]_inst 
       (.I(sw[7]),
        .O(led_OBUF[7]));
  IBUF \sw_IBUF[8]_inst 
       (.I(sw[8]),
        .O(led_OBUF[8]));
  IBUF \sw_IBUF[9]_inst 
       (.I(sw[9]),
        .O(led_OBUF[9]));
  up_down_counter up_down_ctr
       (.CLK(clk_IBUF_BUFG),
        .an_OBUF(an_OBUF),
        .d0_next(d0_next),
        .down_s(down_s),
        .r_reg_reg(r_reg_reg),
        .reset_IBUF(reset_IBUF),
        .sseg_OBUF(sseg_OBUF),
        .up_s(up_s));
endmodule

module pwmg
   (pwm_OBUF,
    pwm_n_OBUF,
    S,
    reset_IBUF,
    r_reg_reg,
    D);
  output pwm_OBUF;
  output pwm_n_OBUF;
  input [0:0]S;
  input reset_IBUF;
  input [13:0]r_reg_reg;
  input [13:0]D;

  wire [13:0]D;
  wire [0:0]S;
  wire acw;
  wire [6:0]count;
  wire \count[5]_i_2_n_0 ;
  wire \count[6]_i_2_n_0 ;
  wire [6:0]count_0;
  wire cw;
  wire duty2;
  wire duty21_in;
  wire duty2_carry__0_i_1_n_0;
  wire duty2_carry__0_i_2_n_0;
  wire duty2_carry__0_i_3_n_0;
  wire duty2_carry__0_i_4_n_0;
  wire duty2_carry__0_i_5_n_0;
  wire duty2_carry__0_i_6_n_0;
  wire duty2_carry_i_1_n_0;
  wire duty2_carry_i_2_n_0;
  wire duty2_carry_i_3_n_0;
  wire duty2_carry_i_4_n_0;
  wire duty2_carry_i_5_n_0;
  wire duty2_carry_i_6_n_0;
  wire duty2_carry_i_7_n_0;
  wire duty2_carry_n_0;
  wire \duty2_inferred__0/i__carry_n_0 ;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2__0_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3__0_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4__0_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5__0_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6__0_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1__1_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2__1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3__1_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4__1_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5__0_n_0;
  wire i__carry_i_5__1_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6__0_n_0;
  wire i__carry_i_6__1_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7__0_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8__0_n_0;
  wire i__carry_i_8_n_0;
  wire p_2_in;
  wire \pos_reg_reg_n_0_[0] ;
  wire \pos_reg_reg_n_0_[10] ;
  wire \pos_reg_reg_n_0_[11] ;
  wire \pos_reg_reg_n_0_[12] ;
  wire \pos_reg_reg_n_0_[13] ;
  wire \pos_reg_reg_n_0_[1] ;
  wire \pos_reg_reg_n_0_[2] ;
  wire \pos_reg_reg_n_0_[3] ;
  wire \pos_reg_reg_n_0_[4] ;
  wire \pos_reg_reg_n_0_[5] ;
  wire \pos_reg_reg_n_0_[6] ;
  wire \pos_reg_reg_n_0_[7] ;
  wire \pos_reg_reg_n_0_[8] ;
  wire \pos_reg_reg_n_0_[9] ;
  wire pwm_OBUF;
  wire pwm_n_OBUF;
  wire pwm_next;
  wire pwm_next_i_1_n_0;
  wire pwm_next_i_2_n_0;
  wire pwm_reg;
  wire pwm_reg_i_1_n_0;
  wire [13:0]r_reg_reg;
  wire \ref_reg_reg_n_0_[0] ;
  wire \ref_reg_reg_n_0_[10] ;
  wire \ref_reg_reg_n_0_[11] ;
  wire \ref_reg_reg_n_0_[12] ;
  wire \ref_reg_reg_n_0_[13] ;
  wire \ref_reg_reg_n_0_[1] ;
  wire \ref_reg_reg_n_0_[2] ;
  wire \ref_reg_reg_n_0_[3] ;
  wire \ref_reg_reg_n_0_[4] ;
  wire \ref_reg_reg_n_0_[5] ;
  wire \ref_reg_reg_n_0_[6] ;
  wire \ref_reg_reg_n_0_[7] ;
  wire \ref_reg_reg_n_0_[8] ;
  wire \ref_reg_reg_n_0_[9] ;
  wire reset_IBUF;
  wire [13:0]step_next0;
  wire step_next0_carry__0_i_1_n_0;
  wire step_next0_carry__0_i_2_n_0;
  wire step_next0_carry__0_i_3_n_0;
  wire step_next0_carry__0_i_4_n_0;
  wire step_next0_carry__0_n_0;
  wire step_next0_carry__1_i_1_n_0;
  wire step_next0_carry__1_i_2_n_0;
  wire step_next0_carry__1_i_3_n_0;
  wire step_next0_carry__1_i_4_n_0;
  wire step_next0_carry__1_n_0;
  wire step_next0_carry__2_i_1_n_0;
  wire step_next0_carry__2_i_2_n_0;
  wire step_next0_carry_i_1_n_0;
  wire step_next0_carry_i_2_n_0;
  wire step_next0_carry_i_3_n_0;
  wire step_next0_carry_i_4_n_0;
  wire step_next0_carry_n_0;
  wire step_next1_carry__0_i_1_n_0;
  wire step_next1_carry__0_i_2_n_0;
  wire step_next1_carry__0_i_3_n_0;
  wire step_next1_carry__0_i_4_n_0;
  wire step_next1_carry__0_i_5_n_0;
  wire step_next1_carry__0_i_6_n_0;
  wire step_next1_carry_i_1_n_0;
  wire step_next1_carry_i_2_n_0;
  wire step_next1_carry_i_3_n_0;
  wire step_next1_carry_i_4_n_0;
  wire step_next1_carry_i_5_n_0;
  wire step_next1_carry_i_6_n_0;
  wire step_next1_carry_i_7_n_0;
  wire step_next1_carry_i_8_n_0;
  wire step_next1_carry_n_0;
  wire \step_next1_inferred__0/i__carry_n_0 ;
  wire [13:0]step_reg;
  wire \step_reg[11]_i_2_n_0 ;
  wire \step_reg[11]_i_3_n_0 ;
  wire \step_reg[11]_i_4_n_0 ;
  wire \step_reg[11]_i_5_n_0 ;
  wire \step_reg[11]_i_6_n_0 ;
  wire \step_reg[11]_i_7_n_0 ;
  wire \step_reg[11]_i_8_n_0 ;
  wire \step_reg[11]_i_9_n_0 ;
  wire \step_reg[13]_i_2_n_0 ;
  wire \step_reg[13]_i_3_n_0 ;
  wire \step_reg[13]_i_4_n_0 ;
  wire \step_reg[3]_i_2_n_0 ;
  wire \step_reg[3]_i_3_n_0 ;
  wire \step_reg[3]_i_4_n_0 ;
  wire \step_reg[3]_i_5_n_0 ;
  wire \step_reg[3]_i_6_n_0 ;
  wire \step_reg[3]_i_7_n_0 ;
  wire \step_reg[3]_i_8_n_0 ;
  wire \step_reg[3]_i_9_n_0 ;
  wire \step_reg[7]_i_2_n_0 ;
  wire \step_reg[7]_i_3_n_0 ;
  wire \step_reg[7]_i_4_n_0 ;
  wire \step_reg[7]_i_5_n_0 ;
  wire \step_reg[7]_i_6_n_0 ;
  wire \step_reg[7]_i_7_n_0 ;
  wire \step_reg[7]_i_8_n_0 ;
  wire \step_reg[7]_i_9_n_0 ;
  wire \step_reg_reg[11]_i_1_n_0 ;
  wire \step_reg_reg[11]_i_1_n_4 ;
  wire \step_reg_reg[11]_i_1_n_5 ;
  wire \step_reg_reg[11]_i_1_n_6 ;
  wire \step_reg_reg[11]_i_1_n_7 ;
  wire \step_reg_reg[13]_i_1_n_6 ;
  wire \step_reg_reg[13]_i_1_n_7 ;
  wire \step_reg_reg[3]_i_1_n_0 ;
  wire \step_reg_reg[3]_i_1_n_4 ;
  wire \step_reg_reg[3]_i_1_n_5 ;
  wire \step_reg_reg[3]_i_1_n_6 ;
  wire \step_reg_reg[3]_i_1_n_7 ;
  wire \step_reg_reg[7]_i_1_n_0 ;
  wire \step_reg_reg[7]_i_1_n_4 ;
  wire \step_reg_reg[7]_i_1_n_5 ;
  wire \step_reg_reg[7]_i_1_n_6 ;
  wire \step_reg_reg[7]_i_1_n_7 ;
  wire [2:0]NLW_duty2_carry_CO_UNCONNECTED;
  wire [3:0]NLW_duty2_carry_O_UNCONNECTED;
  wire [3:0]NLW_duty2_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_duty2_carry__0_O_UNCONNECTED;
  wire [2:0]\NLW_duty2_inferred__0/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_duty2_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_duty2_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_duty2_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [2:0]\NLW_pwm_next0_inferred__1/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_pwm_next0_inferred__1/i__carry_O_UNCONNECTED ;
  wire [2:0]NLW_step_next0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_step_next0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_step_next0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_step_next0_carry__2_CO_UNCONNECTED;
  wire [3:2]NLW_step_next0_carry__2_O_UNCONNECTED;
  wire [2:0]NLW_step_next1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_step_next1_carry_O_UNCONNECTED;
  wire [3:0]NLW_step_next1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_step_next1_carry__0_O_UNCONNECTED;
  wire [2:0]\NLW_step_next1_inferred__0/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_step_next1_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_step_next1_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_step_next1_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [2:0]\NLW_step_reg_reg[11]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_step_reg_reg[13]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_step_reg_reg[13]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_step_reg_reg[3]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_step_reg_reg[7]_i_1_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(count[0]),
        .O(count_0[0]));
  LUT6 #(
    .INIT(64'h0000FFFFFFDF0000)) 
    \count[1]_i_1 
       (.I0(count[3]),
        .I1(count[2]),
        .I2(count[6]),
        .I3(\count[6]_i_2_n_0 ),
        .I4(count[0]),
        .I5(count[1]),
        .O(count_0[1]));
  LUT3 #(
    .INIT(8'h78)) 
    \count[2]_i_1 
       (.I0(count[1]),
        .I1(count[0]),
        .I2(count[2]),
        .O(count_0[2]));
  LUT6 #(
    .INIT(64'h6666CCCCCC8CCCCC)) 
    \count[3]_i_1 
       (.I0(count[1]),
        .I1(count[3]),
        .I2(count[6]),
        .I3(\count[6]_i_2_n_0 ),
        .I4(count[0]),
        .I5(count[2]),
        .O(count_0[3]));
  LUT6 #(
    .INIT(64'hF0FFFFF70F000000)) 
    \count[4]_i_1 
       (.I0(count[6]),
        .I1(count[5]),
        .I2(\count[5]_i_2_n_0 ),
        .I3(count[2]),
        .I4(count[1]),
        .I5(count[4]),
        .O(count_0[4]));
  LUT6 #(
    .INIT(64'hBEBFFFFF40400000)) 
    \count[5]_i_1 
       (.I0(\count[5]_i_2_n_0 ),
        .I1(count[2]),
        .I2(count[1]),
        .I3(count[6]),
        .I4(count[4]),
        .I5(count[5]),
        .O(count_0[5]));
  LUT2 #(
    .INIT(4'h7)) 
    \count[5]_i_2 
       (.I0(count[0]),
        .I1(count[3]),
        .O(\count[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9CCCCCCCCCCC8CCC)) 
    \count[6]_i_1 
       (.I0(\count[6]_i_2_n_0 ),
        .I1(count[6]),
        .I2(count[3]),
        .I3(count[0]),
        .I4(count[2]),
        .I5(count[1]),
        .O(count_0[6]));
  LUT2 #(
    .INIT(4'h7)) 
    \count[6]_i_2 
       (.I0(count[4]),
        .I1(count[5]),
        .O(\count[6]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(S),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(count_0[0]),
        .Q(count[0]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(S),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(count_0[1]),
        .Q(count[1]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(S),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(count_0[2]),
        .Q(count[2]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(S),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(count_0[3]),
        .Q(count[3]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(S),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(count_0[4]),
        .Q(count[4]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(S),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(count_0[5]),
        .Q(count[5]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(S),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(count_0[6]),
        .Q(count[6]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 duty2_carry
       (.CI(1'b0),
        .CO({duty2_carry_n_0,NLW_duty2_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({duty2_carry_i_1_n_0,1'b0,duty2_carry_i_2_n_0,duty2_carry_i_3_n_0}),
        .O(NLW_duty2_carry_O_UNCONNECTED[3:0]),
        .S({duty2_carry_i_4_n_0,duty2_carry_i_5_n_0,duty2_carry_i_6_n_0,duty2_carry_i_7_n_0}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 duty2_carry__0
       (.CI(duty2_carry_n_0),
        .CO({NLW_duty2_carry__0_CO_UNCONNECTED[3],duty2,NLW_duty2_carry__0_CO_UNCONNECTED[1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,duty2_carry__0_i_1_n_0,duty2_carry__0_i_2_n_0,duty2_carry__0_i_3_n_0}),
        .O(NLW_duty2_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,duty2_carry__0_i_4_n_0,duty2_carry__0_i_5_n_0,duty2_carry__0_i_6_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    duty2_carry__0_i_1
       (.I0(step_reg[12]),
        .I1(step_reg[13]),
        .O(duty2_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    duty2_carry__0_i_2
       (.I0(step_reg[10]),
        .I1(step_reg[11]),
        .O(duty2_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    duty2_carry__0_i_3
       (.I0(step_reg[8]),
        .I1(step_reg[9]),
        .O(duty2_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    duty2_carry__0_i_4
       (.I0(step_reg[12]),
        .I1(step_reg[13]),
        .O(duty2_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    duty2_carry__0_i_5
       (.I0(step_reg[10]),
        .I1(step_reg[11]),
        .O(duty2_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    duty2_carry__0_i_6
       (.I0(step_reg[8]),
        .I1(step_reg[9]),
        .O(duty2_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    duty2_carry_i_1
       (.I0(step_reg[6]),
        .I1(step_reg[7]),
        .O(duty2_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    duty2_carry_i_2
       (.I0(step_reg[2]),
        .I1(step_reg[3]),
        .O(duty2_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    duty2_carry_i_3
       (.I0(step_reg[0]),
        .I1(step_reg[1]),
        .O(duty2_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    duty2_carry_i_4
       (.I0(step_reg[6]),
        .I1(step_reg[7]),
        .O(duty2_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    duty2_carry_i_5
       (.I0(step_reg[4]),
        .I1(step_reg[5]),
        .O(duty2_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    duty2_carry_i_6
       (.I0(step_reg[2]),
        .I1(step_reg[3]),
        .O(duty2_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    duty2_carry_i_7
       (.I0(step_reg[1]),
        .I1(step_reg[0]),
        .O(duty2_carry_i_7_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \duty2_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\duty2_inferred__0/i__carry_n_0 ,\NLW_duty2_inferred__0/i__carry_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({step_reg[7],i__carry_i_1__0_n_0,step_reg[3],i__carry_i_2__0_n_0}),
        .O(\NLW_duty2_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_3__1_n_0,i__carry_i_4__1_n_0,i__carry_i_5__1_n_0,i__carry_i_6__1_n_0}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \duty2_inferred__0/i__carry__0 
       (.CI(\duty2_inferred__0/i__carry_n_0 ),
        .CO({\NLW_duty2_inferred__0/i__carry__0_CO_UNCONNECTED [3],duty21_in,\NLW_duty2_inferred__0/i__carry__0_CO_UNCONNECTED [1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,i__carry__0_i_1__0_n_0,i__carry__0_i_2__0_n_0,i__carry__0_i_3__0_n_0}),
        .O(\NLW_duty2_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,i__carry__0_i_4__0_n_0,i__carry__0_i_5__0_n_0,i__carry__0_i_6__0_n_0}));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry__0_i_1
       (.I0(\pos_reg_reg_n_0_[12] ),
        .I1(\ref_reg_reg_n_0_[12] ),
        .I2(\ref_reg_reg_n_0_[13] ),
        .I3(\pos_reg_reg_n_0_[13] ),
        .O(i__carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__0_i_1__0
       (.I0(step_reg[12]),
        .I1(step_reg[13]),
        .O(i__carry__0_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry__0_i_2
       (.I0(\pos_reg_reg_n_0_[10] ),
        .I1(\ref_reg_reg_n_0_[10] ),
        .I2(\pos_reg_reg_n_0_[11] ),
        .I3(\ref_reg_reg_n_0_[11] ),
        .O(i__carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_2__0
       (.I0(step_reg[10]),
        .I1(step_reg[11]),
        .O(i__carry__0_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry__0_i_3
       (.I0(\pos_reg_reg_n_0_[8] ),
        .I1(\ref_reg_reg_n_0_[8] ),
        .I2(\pos_reg_reg_n_0_[9] ),
        .I3(\ref_reg_reg_n_0_[9] ),
        .O(i__carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_3__0
       (.I0(step_reg[8]),
        .I1(step_reg[9]),
        .O(i__carry__0_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_4
       (.I0(\ref_reg_reg_n_0_[12] ),
        .I1(\pos_reg_reg_n_0_[12] ),
        .I2(\ref_reg_reg_n_0_[13] ),
        .I3(\pos_reg_reg_n_0_[13] ),
        .O(i__carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_4__0
       (.I0(step_reg[12]),
        .I1(step_reg[13]),
        .O(i__carry__0_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_5
       (.I0(\ref_reg_reg_n_0_[10] ),
        .I1(\pos_reg_reg_n_0_[10] ),
        .I2(\ref_reg_reg_n_0_[11] ),
        .I3(\pos_reg_reg_n_0_[11] ),
        .O(i__carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_5__0
       (.I0(step_reg[10]),
        .I1(step_reg[11]),
        .O(i__carry__0_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_6
       (.I0(\ref_reg_reg_n_0_[8] ),
        .I1(\pos_reg_reg_n_0_[8] ),
        .I2(\ref_reg_reg_n_0_[9] ),
        .I3(\pos_reg_reg_n_0_[9] ),
        .O(i__carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_6__0
       (.I0(step_reg[8]),
        .I1(step_reg[9]),
        .O(i__carry__0_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry_i_1
       (.I0(\pos_reg_reg_n_0_[6] ),
        .I1(\ref_reg_reg_n_0_[6] ),
        .I2(\pos_reg_reg_n_0_[7] ),
        .I3(\ref_reg_reg_n_0_[7] ),
        .O(i__carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry_i_1__0
       (.I0(step_reg[4]),
        .I1(step_reg[5]),
        .O(i__carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_1__1
       (.I0(cw),
        .I1(count[6]),
        .O(i__carry_i_1__1_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry_i_2
       (.I0(\pos_reg_reg_n_0_[4] ),
        .I1(\ref_reg_reg_n_0_[4] ),
        .I2(\pos_reg_reg_n_0_[5] ),
        .I3(\ref_reg_reg_n_0_[5] ),
        .O(i__carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_2__0
       (.I0(step_reg[0]),
        .I1(step_reg[1]),
        .O(i__carry_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h7777007710101777)) 
    i__carry_i_2__1
       (.I0(count[4]),
        .I1(count[5]),
        .I2(duty2),
        .I3(acw),
        .I4(cw),
        .I5(duty21_in),
        .O(i__carry_i_2__1_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry_i_3
       (.I0(\pos_reg_reg_n_0_[2] ),
        .I1(\ref_reg_reg_n_0_[2] ),
        .I2(\pos_reg_reg_n_0_[3] ),
        .I3(\ref_reg_reg_n_0_[3] ),
        .O(i__carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h00DF00D113DF11D3)) 
    i__carry_i_3__0
       (.I0(acw),
        .I1(cw),
        .I2(duty21_in),
        .I3(count[3]),
        .I4(duty2),
        .I5(count[2]),
        .O(i__carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_3__1
       (.I0(step_reg[6]),
        .I1(step_reg[7]),
        .O(i__carry_i_3__1_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry_i_4
       (.I0(\pos_reg_reg_n_0_[0] ),
        .I1(\ref_reg_reg_n_0_[0] ),
        .I2(\pos_reg_reg_n_0_[1] ),
        .I3(\ref_reg_reg_n_0_[1] ),
        .O(i__carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h223F232B)) 
    i__carry_i_4__0
       (.I0(cw),
        .I1(count[1]),
        .I2(count[0]),
        .I3(duty21_in),
        .I4(acw),
        .O(i__carry_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_4__1
       (.I0(step_reg[5]),
        .I1(step_reg[4]),
        .O(i__carry_i_4__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5
       (.I0(\ref_reg_reg_n_0_[6] ),
        .I1(\pos_reg_reg_n_0_[6] ),
        .I2(\ref_reg_reg_n_0_[7] ),
        .I3(\pos_reg_reg_n_0_[7] ),
        .O(i__carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_5__0
       (.I0(count[6]),
        .I1(cw),
        .O(i__carry_i_5__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_5__1
       (.I0(step_reg[2]),
        .I1(step_reg[3]),
        .O(i__carry_i_5__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6
       (.I0(\ref_reg_reg_n_0_[4] ),
        .I1(\pos_reg_reg_n_0_[4] ),
        .I2(\ref_reg_reg_n_0_[5] ),
        .I3(\pos_reg_reg_n_0_[5] ),
        .O(i__carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h8888118821212888)) 
    i__carry_i_6__0
       (.I0(count[4]),
        .I1(count[5]),
        .I2(duty2),
        .I3(acw),
        .I4(cw),
        .I5(duty21_in),
        .O(i__carry_i_6__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_6__1
       (.I0(step_reg[0]),
        .I1(step_reg[1]),
        .O(i__carry_i_6__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7
       (.I0(\ref_reg_reg_n_0_[2] ),
        .I1(\pos_reg_reg_n_0_[2] ),
        .I2(\ref_reg_reg_n_0_[3] ),
        .I3(\pos_reg_reg_n_0_[3] ),
        .O(i__carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h4441444111828888)) 
    i__carry_i_7__0
       (.I0(count[2]),
        .I1(count[3]),
        .I2(duty2),
        .I3(duty21_in),
        .I4(acw),
        .I5(cw),
        .O(i__carry_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8
       (.I0(\ref_reg_reg_n_0_[0] ),
        .I1(\pos_reg_reg_n_0_[0] ),
        .I2(\ref_reg_reg_n_0_[1] ),
        .I3(\pos_reg_reg_n_0_[1] ),
        .O(i__carry_i_8_n_0));
  LUT5 #(
    .INIT(32'h01E1C200)) 
    i__carry_i_8__0
       (.I0(acw),
        .I1(cw),
        .I2(count[1]),
        .I3(duty21_in),
        .I4(count[0]),
        .O(i__carry_i_8__0_n_0));
  FDCE #(
    .INIT(1'b0)) 
    \pos_reg_reg[0] 
       (.C(S),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(r_reg_reg[0]),
        .Q(\pos_reg_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \pos_reg_reg[10] 
       (.C(S),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(r_reg_reg[10]),
        .Q(\pos_reg_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \pos_reg_reg[11] 
       (.C(S),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(r_reg_reg[11]),
        .Q(\pos_reg_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \pos_reg_reg[12] 
       (.C(S),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(r_reg_reg[12]),
        .Q(\pos_reg_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \pos_reg_reg[13] 
       (.C(S),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(r_reg_reg[13]),
        .Q(\pos_reg_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \pos_reg_reg[1] 
       (.C(S),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(r_reg_reg[1]),
        .Q(\pos_reg_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \pos_reg_reg[2] 
       (.C(S),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(r_reg_reg[2]),
        .Q(\pos_reg_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \pos_reg_reg[3] 
       (.C(S),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(r_reg_reg[3]),
        .Q(\pos_reg_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \pos_reg_reg[4] 
       (.C(S),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(r_reg_reg[4]),
        .Q(\pos_reg_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \pos_reg_reg[5] 
       (.C(S),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(r_reg_reg[5]),
        .Q(\pos_reg_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \pos_reg_reg[6] 
       (.C(S),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(r_reg_reg[6]),
        .Q(\pos_reg_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \pos_reg_reg[7] 
       (.C(S),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(r_reg_reg[7]),
        .Q(\pos_reg_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \pos_reg_reg[8] 
       (.C(S),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(r_reg_reg[8]),
        .Q(\pos_reg_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \pos_reg_reg[9] 
       (.C(S),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(r_reg_reg[9]),
        .Q(\pos_reg_reg_n_0_[9] ));
  LUT2 #(
    .INIT(4'h2)) 
    pwm_OBUF_inst_i_1
       (.I0(pwm_reg),
        .I1(reset_IBUF),
        .O(pwm_OBUF));
  LUT2 #(
    .INIT(4'h1)) 
    pwm_n_OBUF_inst_i_1
       (.I0(pwm_reg),
        .I1(reset_IBUF),
        .O(pwm_n_OBUF));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \pwm_next0_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({p_2_in,\NLW_pwm_next0_inferred__1/i__carry_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__1_n_0,i__carry_i_2__1_n_0,i__carry_i_3__0_n_0,i__carry_i_4__0_n_0}),
        .O(\NLW_pwm_next0_inferred__1/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__0_n_0,i__carry_i_6__0_n_0,i__carry_i_7__0_n_0,i__carry_i_8__0_n_0}));
  LUT6 #(
    .INIT(64'hFFFFABFFAAAAAAAA)) 
    pwm_next_i_1
       (.I0(pwm_next_i_2_n_0),
        .I1(count[3]),
        .I2(count[2]),
        .I3(count[6]),
        .I4(\count[6]_i_2_n_0 ),
        .I5(p_2_in),
        .O(pwm_next_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000100010001)) 
    pwm_next_i_2
       (.I0(count[4]),
        .I1(count[5]),
        .I2(count[3]),
        .I3(count[6]),
        .I4(count[2]),
        .I5(count[1]),
        .O(pwm_next_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    pwm_next_reg
       (.C(S),
        .CE(1'b1),
        .D(pwm_next_i_1_n_0),
        .Q(pwm_next),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    pwm_reg_i_1
       (.I0(pwm_reg),
        .I1(reset_IBUF),
        .I2(pwm_next),
        .O(pwm_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    pwm_reg_reg
       (.C(S),
        .CE(1'b1),
        .D(pwm_reg_i_1_n_0),
        .Q(pwm_reg),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0)) 
    \ref_reg_reg[0] 
       (.C(S),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(D[0]),
        .Q(\ref_reg_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \ref_reg_reg[10] 
       (.C(S),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(D[10]),
        .Q(\ref_reg_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \ref_reg_reg[11] 
       (.C(S),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(D[11]),
        .Q(\ref_reg_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \ref_reg_reg[12] 
       (.C(S),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(D[12]),
        .Q(\ref_reg_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \ref_reg_reg[13] 
       (.C(S),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(D[13]),
        .Q(\ref_reg_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \ref_reg_reg[1] 
       (.C(S),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(D[1]),
        .Q(\ref_reg_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \ref_reg_reg[2] 
       (.C(S),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(D[2]),
        .Q(\ref_reg_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \ref_reg_reg[3] 
       (.C(S),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(D[3]),
        .Q(\ref_reg_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \ref_reg_reg[4] 
       (.C(S),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(D[4]),
        .Q(\ref_reg_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \ref_reg_reg[5] 
       (.C(S),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(D[5]),
        .Q(\ref_reg_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \ref_reg_reg[6] 
       (.C(S),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(D[6]),
        .Q(\ref_reg_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \ref_reg_reg[7] 
       (.C(S),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(D[7]),
        .Q(\ref_reg_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \ref_reg_reg[8] 
       (.C(S),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(D[8]),
        .Q(\ref_reg_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \ref_reg_reg[9] 
       (.C(S),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(D[9]),
        .Q(\ref_reg_reg_n_0_[9] ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 step_next0_carry
       (.CI(1'b0),
        .CO({step_next0_carry_n_0,NLW_step_next0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({\ref_reg_reg_n_0_[3] ,\ref_reg_reg_n_0_[2] ,\ref_reg_reg_n_0_[1] ,\ref_reg_reg_n_0_[0] }),
        .O(step_next0[3:0]),
        .S({step_next0_carry_i_1_n_0,step_next0_carry_i_2_n_0,step_next0_carry_i_3_n_0,step_next0_carry_i_4_n_0}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 step_next0_carry__0
       (.CI(step_next0_carry_n_0),
        .CO({step_next0_carry__0_n_0,NLW_step_next0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({\ref_reg_reg_n_0_[7] ,\ref_reg_reg_n_0_[6] ,\ref_reg_reg_n_0_[5] ,\ref_reg_reg_n_0_[4] }),
        .O(step_next0[7:4]),
        .S({step_next0_carry__0_i_1_n_0,step_next0_carry__0_i_2_n_0,step_next0_carry__0_i_3_n_0,step_next0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    step_next0_carry__0_i_1
       (.I0(\ref_reg_reg_n_0_[7] ),
        .I1(\pos_reg_reg_n_0_[7] ),
        .O(step_next0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    step_next0_carry__0_i_2
       (.I0(\ref_reg_reg_n_0_[6] ),
        .I1(\pos_reg_reg_n_0_[6] ),
        .O(step_next0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    step_next0_carry__0_i_3
       (.I0(\ref_reg_reg_n_0_[5] ),
        .I1(\pos_reg_reg_n_0_[5] ),
        .O(step_next0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    step_next0_carry__0_i_4
       (.I0(\ref_reg_reg_n_0_[4] ),
        .I1(\pos_reg_reg_n_0_[4] ),
        .O(step_next0_carry__0_i_4_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 step_next0_carry__1
       (.CI(step_next0_carry__0_n_0),
        .CO({step_next0_carry__1_n_0,NLW_step_next0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({\ref_reg_reg_n_0_[11] ,\ref_reg_reg_n_0_[10] ,\ref_reg_reg_n_0_[9] ,\ref_reg_reg_n_0_[8] }),
        .O(step_next0[11:8]),
        .S({step_next0_carry__1_i_1_n_0,step_next0_carry__1_i_2_n_0,step_next0_carry__1_i_3_n_0,step_next0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    step_next0_carry__1_i_1
       (.I0(\ref_reg_reg_n_0_[11] ),
        .I1(\pos_reg_reg_n_0_[11] ),
        .O(step_next0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    step_next0_carry__1_i_2
       (.I0(\ref_reg_reg_n_0_[10] ),
        .I1(\pos_reg_reg_n_0_[10] ),
        .O(step_next0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    step_next0_carry__1_i_3
       (.I0(\ref_reg_reg_n_0_[9] ),
        .I1(\pos_reg_reg_n_0_[9] ),
        .O(step_next0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    step_next0_carry__1_i_4
       (.I0(\ref_reg_reg_n_0_[8] ),
        .I1(\pos_reg_reg_n_0_[8] ),
        .O(step_next0_carry__1_i_4_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 step_next0_carry__2
       (.CI(step_next0_carry__1_n_0),
        .CO(NLW_step_next0_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\ref_reg_reg_n_0_[12] }),
        .O({NLW_step_next0_carry__2_O_UNCONNECTED[3:2],step_next0[13:12]}),
        .S({1'b0,1'b0,step_next0_carry__2_i_1_n_0,step_next0_carry__2_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    step_next0_carry__2_i_1
       (.I0(\pos_reg_reg_n_0_[13] ),
        .I1(\ref_reg_reg_n_0_[13] ),
        .O(step_next0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    step_next0_carry__2_i_2
       (.I0(\ref_reg_reg_n_0_[12] ),
        .I1(\pos_reg_reg_n_0_[12] ),
        .O(step_next0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    step_next0_carry_i_1
       (.I0(\ref_reg_reg_n_0_[3] ),
        .I1(\pos_reg_reg_n_0_[3] ),
        .O(step_next0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    step_next0_carry_i_2
       (.I0(\ref_reg_reg_n_0_[2] ),
        .I1(\pos_reg_reg_n_0_[2] ),
        .O(step_next0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    step_next0_carry_i_3
       (.I0(\ref_reg_reg_n_0_[1] ),
        .I1(\pos_reg_reg_n_0_[1] ),
        .O(step_next0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    step_next0_carry_i_4
       (.I0(\ref_reg_reg_n_0_[0] ),
        .I1(\pos_reg_reg_n_0_[0] ),
        .O(step_next0_carry_i_4_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 step_next1_carry
       (.CI(1'b0),
        .CO({step_next1_carry_n_0,NLW_step_next1_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({step_next1_carry_i_1_n_0,step_next1_carry_i_2_n_0,step_next1_carry_i_3_n_0,step_next1_carry_i_4_n_0}),
        .O(NLW_step_next1_carry_O_UNCONNECTED[3:0]),
        .S({step_next1_carry_i_5_n_0,step_next1_carry_i_6_n_0,step_next1_carry_i_7_n_0,step_next1_carry_i_8_n_0}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 step_next1_carry__0
       (.CI(step_next1_carry_n_0),
        .CO({NLW_step_next1_carry__0_CO_UNCONNECTED[3],acw,NLW_step_next1_carry__0_CO_UNCONNECTED[1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,step_next1_carry__0_i_1_n_0,step_next1_carry__0_i_2_n_0,step_next1_carry__0_i_3_n_0}),
        .O(NLW_step_next1_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,step_next1_carry__0_i_4_n_0,step_next1_carry__0_i_5_n_0,step_next1_carry__0_i_6_n_0}));
  LUT4 #(
    .INIT(16'h20F2)) 
    step_next1_carry__0_i_1
       (.I0(\ref_reg_reg_n_0_[12] ),
        .I1(\pos_reg_reg_n_0_[12] ),
        .I2(\pos_reg_reg_n_0_[13] ),
        .I3(\ref_reg_reg_n_0_[13] ),
        .O(step_next1_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    step_next1_carry__0_i_2
       (.I0(\ref_reg_reg_n_0_[10] ),
        .I1(\pos_reg_reg_n_0_[10] ),
        .I2(\ref_reg_reg_n_0_[11] ),
        .I3(\pos_reg_reg_n_0_[11] ),
        .O(step_next1_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    step_next1_carry__0_i_3
       (.I0(\ref_reg_reg_n_0_[8] ),
        .I1(\pos_reg_reg_n_0_[8] ),
        .I2(\ref_reg_reg_n_0_[9] ),
        .I3(\pos_reg_reg_n_0_[9] ),
        .O(step_next1_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    step_next1_carry__0_i_4
       (.I0(\ref_reg_reg_n_0_[12] ),
        .I1(\pos_reg_reg_n_0_[12] ),
        .I2(\ref_reg_reg_n_0_[13] ),
        .I3(\pos_reg_reg_n_0_[13] ),
        .O(step_next1_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    step_next1_carry__0_i_5
       (.I0(\ref_reg_reg_n_0_[10] ),
        .I1(\pos_reg_reg_n_0_[10] ),
        .I2(\ref_reg_reg_n_0_[11] ),
        .I3(\pos_reg_reg_n_0_[11] ),
        .O(step_next1_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    step_next1_carry__0_i_6
       (.I0(\ref_reg_reg_n_0_[8] ),
        .I1(\pos_reg_reg_n_0_[8] ),
        .I2(\ref_reg_reg_n_0_[9] ),
        .I3(\pos_reg_reg_n_0_[9] ),
        .O(step_next1_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    step_next1_carry_i_1
       (.I0(\ref_reg_reg_n_0_[6] ),
        .I1(\pos_reg_reg_n_0_[6] ),
        .I2(\ref_reg_reg_n_0_[7] ),
        .I3(\pos_reg_reg_n_0_[7] ),
        .O(step_next1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    step_next1_carry_i_2
       (.I0(\ref_reg_reg_n_0_[4] ),
        .I1(\pos_reg_reg_n_0_[4] ),
        .I2(\ref_reg_reg_n_0_[5] ),
        .I3(\pos_reg_reg_n_0_[5] ),
        .O(step_next1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    step_next1_carry_i_3
       (.I0(\ref_reg_reg_n_0_[2] ),
        .I1(\pos_reg_reg_n_0_[2] ),
        .I2(\ref_reg_reg_n_0_[3] ),
        .I3(\pos_reg_reg_n_0_[3] ),
        .O(step_next1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    step_next1_carry_i_4
       (.I0(\ref_reg_reg_n_0_[0] ),
        .I1(\pos_reg_reg_n_0_[0] ),
        .I2(\ref_reg_reg_n_0_[1] ),
        .I3(\pos_reg_reg_n_0_[1] ),
        .O(step_next1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    step_next1_carry_i_5
       (.I0(\ref_reg_reg_n_0_[6] ),
        .I1(\pos_reg_reg_n_0_[6] ),
        .I2(\ref_reg_reg_n_0_[7] ),
        .I3(\pos_reg_reg_n_0_[7] ),
        .O(step_next1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    step_next1_carry_i_6
       (.I0(\ref_reg_reg_n_0_[4] ),
        .I1(\pos_reg_reg_n_0_[4] ),
        .I2(\ref_reg_reg_n_0_[5] ),
        .I3(\pos_reg_reg_n_0_[5] ),
        .O(step_next1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    step_next1_carry_i_7
       (.I0(\ref_reg_reg_n_0_[2] ),
        .I1(\pos_reg_reg_n_0_[2] ),
        .I2(\ref_reg_reg_n_0_[3] ),
        .I3(\pos_reg_reg_n_0_[3] ),
        .O(step_next1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    step_next1_carry_i_8
       (.I0(\ref_reg_reg_n_0_[0] ),
        .I1(\pos_reg_reg_n_0_[0] ),
        .I2(\ref_reg_reg_n_0_[1] ),
        .I3(\pos_reg_reg_n_0_[1] ),
        .O(step_next1_carry_i_8_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \step_next1_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\step_next1_inferred__0/i__carry_n_0 ,\NLW_step_next1_inferred__0/i__carry_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}),
        .O(\NLW_step_next1_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \step_next1_inferred__0/i__carry__0 
       (.CI(\step_next1_inferred__0/i__carry_n_0 ),
        .CO({\NLW_step_next1_inferred__0/i__carry__0_CO_UNCONNECTED [3],cw,\NLW_step_next1_inferred__0/i__carry__0_CO_UNCONNECTED [1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0}),
        .O(\NLW_step_next1_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,i__carry__0_i_4_n_0,i__carry__0_i_5_n_0,i__carry__0_i_6_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    \step_reg[11]_i_2 
       (.I0(cw),
        .I1(\ref_reg_reg_n_0_[11] ),
        .O(\step_reg[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \step_reg[11]_i_3 
       (.I0(cw),
        .I1(\ref_reg_reg_n_0_[10] ),
        .O(\step_reg[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \step_reg[11]_i_4 
       (.I0(cw),
        .I1(\ref_reg_reg_n_0_[9] ),
        .O(\step_reg[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \step_reg[11]_i_5 
       (.I0(cw),
        .I1(\ref_reg_reg_n_0_[8] ),
        .O(\step_reg[11]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAAC055C0)) 
    \step_reg[11]_i_6 
       (.I0(\ref_reg_reg_n_0_[11] ),
        .I1(step_next0[11]),
        .I2(acw),
        .I3(cw),
        .I4(\pos_reg_reg_n_0_[11] ),
        .O(\step_reg[11]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAAC055C0)) 
    \step_reg[11]_i_7 
       (.I0(\ref_reg_reg_n_0_[10] ),
        .I1(step_next0[10]),
        .I2(acw),
        .I3(cw),
        .I4(\pos_reg_reg_n_0_[10] ),
        .O(\step_reg[11]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAAC055C0)) 
    \step_reg[11]_i_8 
       (.I0(\ref_reg_reg_n_0_[9] ),
        .I1(step_next0[9]),
        .I2(acw),
        .I3(cw),
        .I4(\pos_reg_reg_n_0_[9] ),
        .O(\step_reg[11]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hAAC055C0)) 
    \step_reg[11]_i_9 
       (.I0(\ref_reg_reg_n_0_[8] ),
        .I1(step_next0[8]),
        .I2(acw),
        .I3(cw),
        .I4(\pos_reg_reg_n_0_[8] ),
        .O(\step_reg[11]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \step_reg[13]_i_2 
       (.I0(cw),
        .I1(\ref_reg_reg_n_0_[12] ),
        .O(\step_reg[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAC055C0)) 
    \step_reg[13]_i_3 
       (.I0(\ref_reg_reg_n_0_[13] ),
        .I1(step_next0[13]),
        .I2(acw),
        .I3(cw),
        .I4(\pos_reg_reg_n_0_[13] ),
        .O(\step_reg[13]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAC055C0)) 
    \step_reg[13]_i_4 
       (.I0(\ref_reg_reg_n_0_[12] ),
        .I1(step_next0[12]),
        .I2(acw),
        .I3(cw),
        .I4(\pos_reg_reg_n_0_[12] ),
        .O(\step_reg[13]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \step_reg[3]_i_2 
       (.I0(cw),
        .I1(\ref_reg_reg_n_0_[3] ),
        .O(\step_reg[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \step_reg[3]_i_3 
       (.I0(cw),
        .I1(\ref_reg_reg_n_0_[2] ),
        .O(\step_reg[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \step_reg[3]_i_4 
       (.I0(cw),
        .I1(\ref_reg_reg_n_0_[1] ),
        .O(\step_reg[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \step_reg[3]_i_5 
       (.I0(cw),
        .I1(\ref_reg_reg_n_0_[0] ),
        .O(\step_reg[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAAC055C0)) 
    \step_reg[3]_i_6 
       (.I0(\ref_reg_reg_n_0_[3] ),
        .I1(step_next0[3]),
        .I2(acw),
        .I3(cw),
        .I4(\pos_reg_reg_n_0_[3] ),
        .O(\step_reg[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAAC055C0)) 
    \step_reg[3]_i_7 
       (.I0(\ref_reg_reg_n_0_[2] ),
        .I1(step_next0[2]),
        .I2(acw),
        .I3(cw),
        .I4(\pos_reg_reg_n_0_[2] ),
        .O(\step_reg[3]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAAC055C0)) 
    \step_reg[3]_i_8 
       (.I0(\ref_reg_reg_n_0_[1] ),
        .I1(step_next0[1]),
        .I2(acw),
        .I3(cw),
        .I4(\pos_reg_reg_n_0_[1] ),
        .O(\step_reg[3]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hAAC055C0)) 
    \step_reg[3]_i_9 
       (.I0(\ref_reg_reg_n_0_[0] ),
        .I1(step_next0[0]),
        .I2(acw),
        .I3(cw),
        .I4(\pos_reg_reg_n_0_[0] ),
        .O(\step_reg[3]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \step_reg[7]_i_2 
       (.I0(cw),
        .I1(\ref_reg_reg_n_0_[7] ),
        .O(\step_reg[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \step_reg[7]_i_3 
       (.I0(cw),
        .I1(\ref_reg_reg_n_0_[6] ),
        .O(\step_reg[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \step_reg[7]_i_4 
       (.I0(cw),
        .I1(\ref_reg_reg_n_0_[5] ),
        .O(\step_reg[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \step_reg[7]_i_5 
       (.I0(cw),
        .I1(\ref_reg_reg_n_0_[4] ),
        .O(\step_reg[7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAAC055C0)) 
    \step_reg[7]_i_6 
       (.I0(\ref_reg_reg_n_0_[7] ),
        .I1(step_next0[7]),
        .I2(acw),
        .I3(cw),
        .I4(\pos_reg_reg_n_0_[7] ),
        .O(\step_reg[7]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAAC055C0)) 
    \step_reg[7]_i_7 
       (.I0(\ref_reg_reg_n_0_[6] ),
        .I1(step_next0[6]),
        .I2(acw),
        .I3(cw),
        .I4(\pos_reg_reg_n_0_[6] ),
        .O(\step_reg[7]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAAC055C0)) 
    \step_reg[7]_i_8 
       (.I0(\ref_reg_reg_n_0_[5] ),
        .I1(step_next0[5]),
        .I2(acw),
        .I3(cw),
        .I4(\pos_reg_reg_n_0_[5] ),
        .O(\step_reg[7]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hAAC055C0)) 
    \step_reg[7]_i_9 
       (.I0(\ref_reg_reg_n_0_[4] ),
        .I1(step_next0[4]),
        .I2(acw),
        .I3(cw),
        .I4(\pos_reg_reg_n_0_[4] ),
        .O(\step_reg[7]_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \step_reg_reg[0] 
       (.C(S),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\step_reg_reg[3]_i_1_n_7 ),
        .Q(step_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \step_reg_reg[10] 
       (.C(S),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\step_reg_reg[11]_i_1_n_5 ),
        .Q(step_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \step_reg_reg[11] 
       (.C(S),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\step_reg_reg[11]_i_1_n_4 ),
        .Q(step_reg[11]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \step_reg_reg[11]_i_1 
       (.CI(\step_reg_reg[7]_i_1_n_0 ),
        .CO({\step_reg_reg[11]_i_1_n_0 ,\NLW_step_reg_reg[11]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\step_reg[11]_i_2_n_0 ,\step_reg[11]_i_3_n_0 ,\step_reg[11]_i_4_n_0 ,\step_reg[11]_i_5_n_0 }),
        .O({\step_reg_reg[11]_i_1_n_4 ,\step_reg_reg[11]_i_1_n_5 ,\step_reg_reg[11]_i_1_n_6 ,\step_reg_reg[11]_i_1_n_7 }),
        .S({\step_reg[11]_i_6_n_0 ,\step_reg[11]_i_7_n_0 ,\step_reg[11]_i_8_n_0 ,\step_reg[11]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \step_reg_reg[12] 
       (.C(S),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\step_reg_reg[13]_i_1_n_7 ),
        .Q(step_reg[12]));
  FDCE #(
    .INIT(1'b0)) 
    \step_reg_reg[13] 
       (.C(S),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\step_reg_reg[13]_i_1_n_6 ),
        .Q(step_reg[13]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \step_reg_reg[13]_i_1 
       (.CI(\step_reg_reg[11]_i_1_n_0 ),
        .CO(\NLW_step_reg_reg[13]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\step_reg[13]_i_2_n_0 }),
        .O({\NLW_step_reg_reg[13]_i_1_O_UNCONNECTED [3:2],\step_reg_reg[13]_i_1_n_6 ,\step_reg_reg[13]_i_1_n_7 }),
        .S({1'b0,1'b0,\step_reg[13]_i_3_n_0 ,\step_reg[13]_i_4_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \step_reg_reg[1] 
       (.C(S),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\step_reg_reg[3]_i_1_n_6 ),
        .Q(step_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \step_reg_reg[2] 
       (.C(S),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\step_reg_reg[3]_i_1_n_5 ),
        .Q(step_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \step_reg_reg[3] 
       (.C(S),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\step_reg_reg[3]_i_1_n_4 ),
        .Q(step_reg[3]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \step_reg_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\step_reg_reg[3]_i_1_n_0 ,\NLW_step_reg_reg[3]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(cw),
        .DI({\step_reg[3]_i_2_n_0 ,\step_reg[3]_i_3_n_0 ,\step_reg[3]_i_4_n_0 ,\step_reg[3]_i_5_n_0 }),
        .O({\step_reg_reg[3]_i_1_n_4 ,\step_reg_reg[3]_i_1_n_5 ,\step_reg_reg[3]_i_1_n_6 ,\step_reg_reg[3]_i_1_n_7 }),
        .S({\step_reg[3]_i_6_n_0 ,\step_reg[3]_i_7_n_0 ,\step_reg[3]_i_8_n_0 ,\step_reg[3]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \step_reg_reg[4] 
       (.C(S),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\step_reg_reg[7]_i_1_n_7 ),
        .Q(step_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \step_reg_reg[5] 
       (.C(S),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\step_reg_reg[7]_i_1_n_6 ),
        .Q(step_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \step_reg_reg[6] 
       (.C(S),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\step_reg_reg[7]_i_1_n_5 ),
        .Q(step_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \step_reg_reg[7] 
       (.C(S),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\step_reg_reg[7]_i_1_n_4 ),
        .Q(step_reg[7]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \step_reg_reg[7]_i_1 
       (.CI(\step_reg_reg[3]_i_1_n_0 ),
        .CO({\step_reg_reg[7]_i_1_n_0 ,\NLW_step_reg_reg[7]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\step_reg[7]_i_2_n_0 ,\step_reg[7]_i_3_n_0 ,\step_reg[7]_i_4_n_0 ,\step_reg[7]_i_5_n_0 }),
        .O({\step_reg_reg[7]_i_1_n_4 ,\step_reg_reg[7]_i_1_n_5 ,\step_reg_reg[7]_i_1_n_6 ,\step_reg_reg[7]_i_1_n_7 }),
        .S({\step_reg[7]_i_6_n_0 ,\step_reg[7]_i_7_n_0 ,\step_reg[7]_i_8_n_0 ,\step_reg[7]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \step_reg_reg[8] 
       (.C(S),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\step_reg_reg[11]_i_1_n_7 ),
        .Q(step_reg[8]));
  FDCE #(
    .INIT(1'b0)) 
    \step_reg_reg[9] 
       (.C(S),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\step_reg_reg[11]_i_1_n_6 ),
        .Q(step_reg[9]));
endmodule

module quad_decoder
   (up_s,
    down_s,
    d0_next,
    CLK,
    reset_IBUF,
    A_s,
    B_s);
  output up_s;
  output down_s;
  output d0_next;
  input CLK;
  input reset_IBUF;
  input A_s;
  input B_s;

  wire A_s;
  wire B_s;
  wire CLK;
  wire d0_next;
  wire down_n_0;
  wire down_s;
  wire reset_IBUF;
  wire [1:0]state_next;
  wire [1:0]state_reg;
  wire \up_inferred__2/i__n_0 ;
  wire \up_inferred__3/i__n_0 ;
  wire up_s;

  (* \PinAttr:I3:HOLD_DETOUR  = "194" *) 
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0B70)) 
    \FSM_sequential_state_reg[0]_i_1 
       (.I0(state_reg[1]),
        .I1(state_reg[0]),
        .I2(B_s),
        .I3(A_s),
        .O(state_next[0]));
  (* \PinAttr:I1:HOLD_DETOUR  = "194" *) 
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hC8C4)) 
    \FSM_sequential_state_reg[1]_i_1 
       (.I0(B_s),
        .I1(A_s),
        .I2(state_reg[1]),
        .I3(state_reg[0]),
        .O(state_next[1]));
  (* FSM_ENCODED_STATES = "s1:11,s3:01,s0:00,s2:10" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(state_next[0]),
        .Q(state_reg[0]));
  (* FSM_ENCODED_STATES = "s1:11,s3:01,s0:00,s2:10" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(state_next[1]),
        .Q(state_reg[1]));
  LUT2 #(
    .INIT(4'hE)) 
    \d0_reg[3]_i_1 
       (.I0(down_s),
        .I1(up_s),
        .O(d0_next));
  LUT4 #(
    .INIT(16'h636C)) 
    down
       (.I0(A_s),
        .I1(state_reg[1]),
        .I2(state_reg[0]),
        .I3(B_s),
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
  LUT4 #(
    .INIT(16'h8142)) 
    \up_inferred__2/i_ 
       (.I0(A_s),
        .I1(B_s),
        .I2(state_reg[1]),
        .I3(state_reg[0]),
        .O(\up_inferred__2/i__n_0 ));
  LUT4 #(
    .INIT(16'hDBE7)) 
    \up_inferred__3/i_ 
       (.I0(B_s),
        .I1(A_s),
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
   (r_reg_reg,
    sseg_OBUF,
    an_OBUF,
    CLK,
    reset_IBUF,
    d0_next,
    down_s,
    up_s);
  output [13:0]r_reg_reg;
  output [6:0]sseg_OBUF;
  output [3:0]an_OBUF;
  input CLK;
  input reset_IBUF;
  input d0_next;
  input down_s;
  input up_s;

  wire CLK;
  wire [3:0]an_OBUF;
  wire d0_next;
  wire [3:0]d0_reg;
  wire \d0_reg[0]_i_1_n_0 ;
  wire \d0_reg[1]_i_1_n_0 ;
  wire \d0_reg[2]_i_1_n_0 ;
  wire \d0_reg[3]_i_2_n_0 ;
  wire [3:0]d1_next;
  wire [3:0]d1_reg;
  wire \d1_reg[2]_i_2_n_0 ;
  wire \d1_reg[2]_i_3_n_0 ;
  wire \d1_reg[2]_i_4_n_0 ;
  wire \d1_reg[2]_i_5_n_0 ;
  wire \d1_reg[3]_i_1_n_0 ;
  wire [3:0]d2_next;
  wire [3:0]d2_reg;
  wire \d2_reg[3]_i_1_n_0 ;
  wire \d2_reg[3]_i_3_n_0 ;
  wire \d2_reg[3]_i_4_n_0 ;
  wire \d2_reg[3]_i_5_n_0 ;
  wire [3:0]d3_next;
  wire [3:0]d3_reg;
  wire \d3_reg[2]_i_2_n_0 ;
  wire \d3_reg[2]_i_3_n_0 ;
  wire \d3_reg[2]_i_4_n_0 ;
  wire \d3_reg[2]_i_5_n_0 ;
  wire \d3_reg[2]_i_6_n_0 ;
  wire \d3_reg[2]_i_7_n_0 ;
  wire \d3_reg[2]_i_8_n_0 ;
  wire \d3_reg[2]_i_9_n_0 ;
  wire \d3_reg[3]_i_10_n_0 ;
  wire \d3_reg[3]_i_11_n_0 ;
  wire \d3_reg[3]_i_12_n_0 ;
  wire \d3_reg[3]_i_13_n_0 ;
  wire \d3_reg[3]_i_14_n_0 ;
  wire \d3_reg[3]_i_1_n_0 ;
  wire \d3_reg[3]_i_3_n_0 ;
  wire \d3_reg[3]_i_4_n_0 ;
  wire \d3_reg[3]_i_5_n_0 ;
  wire \d3_reg[3]_i_6_n_0 ;
  wire \d3_reg[3]_i_7_n_0 ;
  wire \d3_reg[3]_i_8_n_0 ;
  wire \d3_reg[3]_i_9_n_0 ;
  wire down_s;
  wire \r_reg[0]_i_10_n_0 ;
  wire \r_reg[0]_i_11_n_0 ;
  wire \r_reg[0]_i_12_n_0 ;
  wire \r_reg[0]_i_13_n_0 ;
  wire \r_reg[0]_i_14_n_0 ;
  wire \r_reg[0]_i_15_n_0 ;
  wire \r_reg[0]_i_16_n_0 ;
  wire \r_reg[0]_i_17_n_0 ;
  wire \r_reg[0]_i_18_n_0 ;
  wire \r_reg[0]_i_2_n_0 ;
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
  wire [13:0]r_reg_reg;
  wire \r_reg_reg[0]_i_1_n_0 ;
  wire \r_reg_reg[0]_i_1_n_4 ;
  wire \r_reg_reg[0]_i_1_n_5 ;
  wire \r_reg_reg[0]_i_1_n_6 ;
  wire \r_reg_reg[0]_i_1_n_7 ;
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
  wire reset_IBUF;
  wire [6:0]sseg_OBUF;
  wire up_s;
  wire [2:0]\NLW_r_reg_reg[0]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_r_reg_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_r_reg_reg[12]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_r_reg_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_r_reg_reg[8]_i_1_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \d0_reg[0]_i_1 
       (.I0(d0_reg[0]),
        .O(\d0_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h62669998)) 
    \d0_reg[1]_i_1 
       (.I0(d0_reg[1]),
        .I1(d0_reg[0]),
        .I2(d0_reg[2]),
        .I3(d0_reg[3]),
        .I4(up_s),
        .O(\d0_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h3FC0FC02)) 
    \d0_reg[2]_i_1 
       (.I0(d0_reg[3]),
        .I1(d0_reg[1]),
        .I2(d0_reg[0]),
        .I3(d0_reg[2]),
        .I4(up_s),
        .O(\d0_reg[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h6CCCC4C9)) 
    \d0_reg[3]_i_2 
       (.I0(up_s),
        .I1(d0_reg[3]),
        .I2(d0_reg[1]),
        .I3(d0_reg[0]),
        .I4(d0_reg[2]),
        .O(\d0_reg[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \d0_reg_reg[0] 
       (.C(CLK),
        .CE(d0_next),
        .CLR(reset_IBUF),
        .D(\d0_reg[0]_i_1_n_0 ),
        .Q(d0_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \d0_reg_reg[1] 
       (.C(CLK),
        .CE(d0_next),
        .CLR(reset_IBUF),
        .D(\d0_reg[1]_i_1_n_0 ),
        .Q(d0_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \d0_reg_reg[2] 
       (.C(CLK),
        .CE(d0_next),
        .CLR(reset_IBUF),
        .D(\d0_reg[2]_i_1_n_0 ),
        .Q(d0_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \d0_reg_reg[3] 
       (.C(CLK),
        .CE(d0_next),
        .CLR(reset_IBUF),
        .D(\d0_reg[3]_i_2_n_0 ),
        .Q(d0_reg[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \d1_reg[0]_i_1 
       (.I0(d1_reg[0]),
        .O(d1_next[0]));
  LUT6 #(
    .INIT(64'h0AA002A0FAAFF2AC)) 
    \d1_reg[1]_i_1 
       (.I0(\d3_reg[2]_i_5_n_0 ),
        .I1(d1_reg[3]),
        .I2(d1_reg[1]),
        .I3(d1_reg[0]),
        .I4(d1_reg[2]),
        .I5(up_s),
        .O(d1_next[1]));
  LUT6 #(
    .INIT(64'hEFFEEEEEEEEEEEEE)) 
    \d1_reg[2]_i_1 
       (.I0(\d3_reg[2]_i_3_n_0 ),
        .I1(\d1_reg[2]_i_2_n_0 ),
        .I2(\d1_reg[2]_i_3_n_0 ),
        .I3(d1_reg[2]),
        .I4(\d1_reg[2]_i_4_n_0 ),
        .I5(up_s),
        .O(d1_next[2]));
  LUT5 #(
    .INIT(32'h0000FC02)) 
    \d1_reg[2]_i_2 
       (.I0(d1_reg[3]),
        .I1(d1_reg[1]),
        .I2(d1_reg[0]),
        .I3(d1_reg[2]),
        .I4(up_s),
        .O(\d1_reg[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \d1_reg[2]_i_3 
       (.I0(d1_reg[1]),
        .I1(d1_reg[0]),
        .O(\d1_reg[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \d1_reg[2]_i_4 
       (.I0(d3_reg[3]),
        .I1(\d1_reg[2]_i_5_n_0 ),
        .I2(\d3_reg[2]_i_8_n_0 ),
        .I3(\d3_reg[2]_i_7_n_0 ),
        .I4(d1_reg[3]),
        .I5(d3_reg[2]),
        .O(\d1_reg[2]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \d1_reg[2]_i_5 
       (.I0(d3_reg[1]),
        .I1(d3_reg[0]),
        .O(\d1_reg[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000C00002)) 
    \d1_reg[3]_i_1 
       (.I0(down_s),
        .I1(up_s),
        .I2(d0_reg[3]),
        .I3(d0_reg[1]),
        .I4(d0_reg[0]),
        .I5(d0_reg[2]),
        .O(\d1_reg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCAE0E0E0E0C0E0AC)) 
    \d1_reg[3]_i_2 
       (.I0(up_s),
        .I1(\d3_reg[3]_i_8_n_0 ),
        .I2(d1_reg[3]),
        .I3(d1_reg[1]),
        .I4(d1_reg[0]),
        .I5(d1_reg[2]),
        .O(d1_next[3]));
  FDCE #(
    .INIT(1'b0)) 
    \d1_reg_reg[0] 
       (.C(CLK),
        .CE(\d1_reg[3]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(d1_next[0]),
        .Q(d1_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \d1_reg_reg[1] 
       (.C(CLK),
        .CE(\d1_reg[3]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(d1_next[1]),
        .Q(d1_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \d1_reg_reg[2] 
       (.C(CLK),
        .CE(\d1_reg[3]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(d1_next[2]),
        .Q(d1_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \d1_reg_reg[3] 
       (.C(CLK),
        .CE(\d1_reg[3]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(d1_next[3]),
        .Q(d1_reg[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \d2_reg[0]_i_1 
       (.I0(d2_reg[0]),
        .O(d2_next[0]));
  LUT6 #(
    .INIT(64'hBEAEBEBEEBEBEBEA)) 
    \d2_reg[1]_i_1 
       (.I0(\d3_reg[2]_i_3_n_0 ),
        .I1(d2_reg[1]),
        .I2(d2_reg[0]),
        .I3(d2_reg[2]),
        .I4(d2_reg[3]),
        .I5(up_s),
        .O(d2_next[1]));
  LUT6 #(
    .INIT(64'hBBEEEEEEEEEEEEBA)) 
    \d2_reg[2]_i_1 
       (.I0(\d3_reg[2]_i_3_n_0 ),
        .I1(d2_reg[2]),
        .I2(d2_reg[3]),
        .I3(up_s),
        .I4(d2_reg[0]),
        .I5(d2_reg[1]),
        .O(d2_next[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFF4040404)) 
    \d2_reg[3]_i_1 
       (.I0(\d2_reg[3]_i_3_n_0 ),
        .I1(down_s),
        .I2(up_s),
        .I3(\d2_reg[3]_i_4_n_0 ),
        .I4(\d2_reg[3]_i_5_n_0 ),
        .I5(\d3_reg[3]_i_3_n_0 ),
        .O(\d2_reg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBCCCC8CE88888882)) 
    \d2_reg[3]_i_2 
       (.I0(\d3_reg[3]_i_8_n_0 ),
        .I1(d2_reg[3]),
        .I2(d2_reg[2]),
        .I3(d2_reg[0]),
        .I4(d2_reg[1]),
        .I5(\d3_reg[2]_i_5_n_0 ),
        .O(d2_next[3]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \d2_reg[3]_i_3 
       (.I0(d0_reg[2]),
        .I1(d0_reg[0]),
        .I2(d0_reg[1]),
        .I3(d0_reg[3]),
        .I4(\d3_reg[3]_i_12_n_0 ),
        .O(\d2_reg[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \d2_reg[3]_i_4 
       (.I0(d0_reg[1]),
        .I1(d0_reg[0]),
        .I2(d0_reg[2]),
        .I3(d0_reg[3]),
        .O(\d2_reg[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \d2_reg[3]_i_5 
       (.I0(d1_reg[2]),
        .I1(d1_reg[3]),
        .I2(d1_reg[0]),
        .I3(d1_reg[1]),
        .O(\d2_reg[3]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \d2_reg_reg[0] 
       (.C(CLK),
        .CE(\d2_reg[3]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(d2_next[0]),
        .Q(d2_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \d2_reg_reg[1] 
       (.C(CLK),
        .CE(\d2_reg[3]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(d2_next[1]),
        .Q(d2_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \d2_reg_reg[2] 
       (.C(CLK),
        .CE(\d2_reg[3]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(d2_next[2]),
        .Q(d2_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \d2_reg_reg[3] 
       (.C(CLK),
        .CE(\d2_reg[3]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(d2_next[3]),
        .Q(d2_reg[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \d3_reg[0]_i_1 
       (.I0(d3_reg[0]),
        .O(d3_next[0]));
  LUT6 #(
    .INIT(64'h00A2AA00FFA2AAFC)) 
    \d3_reg[1]_i_1 
       (.I0(\d3_reg[2]_i_5_n_0 ),
        .I1(d3_reg[3]),
        .I2(d3_reg[2]),
        .I3(d3_reg[1]),
        .I4(d3_reg[0]),
        .I5(up_s),
        .O(d3_next[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEEFEEEE)) 
    \d3_reg[2]_i_1 
       (.I0(\d3_reg[2]_i_2_n_0 ),
        .I1(\d3_reg[2]_i_3_n_0 ),
        .I2(d3_reg[2]),
        .I3(\d3_reg[2]_i_4_n_0 ),
        .I4(\d3_reg[2]_i_5_n_0 ),
        .I5(\d3_reg[2]_i_6_n_0 ),
        .O(d3_next[2]));
  LUT5 #(
    .INIT(32'h00000004)) 
    \d3_reg[2]_i_2 
       (.I0(d3_reg[2]),
        .I1(d3_reg[3]),
        .I2(up_s),
        .I3(d3_reg[0]),
        .I4(d3_reg[1]),
        .O(\d3_reg[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \d3_reg[2]_i_3 
       (.I0(\d3_reg[3]_i_13_n_0 ),
        .I1(\d3_reg[3]_i_12_n_0 ),
        .I2(\d3_reg[3]_i_14_n_0 ),
        .I3(\d3_reg[3]_i_7_n_0 ),
        .I4(up_s),
        .O(\d3_reg[2]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \d3_reg[2]_i_4 
       (.I0(d3_reg[1]),
        .I1(d3_reg[0]),
        .O(\d3_reg[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000000)) 
    \d3_reg[2]_i_5 
       (.I0(d3_reg[2]),
        .I1(d1_reg[3]),
        .I2(\d3_reg[2]_i_7_n_0 ),
        .I3(\d3_reg[2]_i_8_n_0 ),
        .I4(\d3_reg[2]_i_9_n_0 ),
        .I5(up_s),
        .O(\d3_reg[2]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h4440)) 
    \d3_reg[2]_i_6 
       (.I0(up_s),
        .I1(d3_reg[2]),
        .I2(d3_reg[0]),
        .I3(d3_reg[1]),
        .O(\d3_reg[2]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hDFFFFFFF)) 
    \d3_reg[2]_i_7 
       (.I0(d1_reg[0]),
        .I1(d1_reg[1]),
        .I2(d2_reg[1]),
        .I3(d2_reg[0]),
        .I4(d2_reg[2]),
        .O(\d3_reg[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBFFFFF)) 
    \d3_reg[2]_i_8 
       (.I0(d2_reg[3]),
        .I1(d1_reg[2]),
        .I2(d0_reg[3]),
        .I3(d0_reg[2]),
        .I4(d0_reg[0]),
        .I5(d0_reg[1]),
        .O(\d3_reg[2]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hFB)) 
    \d3_reg[2]_i_9 
       (.I0(d3_reg[3]),
        .I1(d3_reg[0]),
        .I2(d3_reg[1]),
        .O(\d3_reg[2]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hEAEAEAFF)) 
    \d3_reg[3]_i_1 
       (.I0(\d3_reg[3]_i_3_n_0 ),
        .I1(\d3_reg[3]_i_4_n_0 ),
        .I2(\d3_reg[3]_i_5_n_0 ),
        .I3(\d3_reg[3]_i_6_n_0 ),
        .I4(\d3_reg[3]_i_7_n_0 ),
        .O(\d3_reg[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \d3_reg[3]_i_10 
       (.I0(d1_reg[2]),
        .I1(d2_reg[3]),
        .O(\d3_reg[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    \d3_reg[3]_i_11 
       (.I0(d1_reg[1]),
        .I1(d1_reg[0]),
        .I2(up_s),
        .I3(d1_reg[3]),
        .I4(d3_reg[0]),
        .I5(d3_reg[1]),
        .O(\d3_reg[3]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \d3_reg[3]_i_12 
       (.I0(d1_reg[3]),
        .I1(d1_reg[1]),
        .I2(d1_reg[0]),
        .I3(d1_reg[2]),
        .O(\d3_reg[3]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \d3_reg[3]_i_13 
       (.I0(d0_reg[3]),
        .I1(d0_reg[1]),
        .I2(d0_reg[0]),
        .I3(d0_reg[2]),
        .O(\d3_reg[3]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \d3_reg[3]_i_14 
       (.I0(d3_reg[3]),
        .I1(d3_reg[2]),
        .I2(d3_reg[1]),
        .I3(d3_reg[0]),
        .O(\d3_reg[3]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hCAE0E0C0E0E0E0AC)) 
    \d3_reg[3]_i_2 
       (.I0(up_s),
        .I1(\d3_reg[3]_i_8_n_0 ),
        .I2(d3_reg[3]),
        .I3(d3_reg[2]),
        .I4(d3_reg[1]),
        .I5(d3_reg[0]),
        .O(d3_next[3]));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \d3_reg[3]_i_3 
       (.I0(\d3_reg[3]_i_9_n_0 ),
        .I1(\d2_reg[3]_i_4_n_0 ),
        .I2(\d3_reg[3]_i_10_n_0 ),
        .I3(d3_reg[2]),
        .I4(d3_reg[3]),
        .I5(\d3_reg[3]_i_11_n_0 ),
        .O(\d3_reg[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \d3_reg[3]_i_4 
       (.I0(up_s),
        .I1(\d2_reg[3]_i_4_n_0 ),
        .I2(d1_reg[1]),
        .I3(d1_reg[0]),
        .I4(d1_reg[3]),
        .I5(d1_reg[2]),
        .O(\d3_reg[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \d3_reg[3]_i_5 
       (.I0(d2_reg[1]),
        .I1(d2_reg[0]),
        .I2(d2_reg[2]),
        .I3(d2_reg[3]),
        .O(\d3_reg[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \d3_reg[3]_i_6 
       (.I0(\d3_reg[3]_i_12_n_0 ),
        .I1(\d3_reg[3]_i_13_n_0 ),
        .I2(down_s),
        .I3(up_s),
        .O(\d3_reg[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \d3_reg[3]_i_7 
       (.I0(d2_reg[3]),
        .I1(d2_reg[2]),
        .I2(d2_reg[1]),
        .I3(d2_reg[0]),
        .O(\d3_reg[3]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \d3_reg[3]_i_8 
       (.I0(\d3_reg[3]_i_13_n_0 ),
        .I1(\d3_reg[3]_i_12_n_0 ),
        .I2(\d3_reg[3]_i_14_n_0 ),
        .I3(\d3_reg[3]_i_7_n_0 ),
        .I4(up_s),
        .O(\d3_reg[3]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \d3_reg[3]_i_9 
       (.I0(d2_reg[2]),
        .I1(d2_reg[0]),
        .I2(d2_reg[1]),
        .O(\d3_reg[3]_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \d3_reg_reg[0] 
       (.C(CLK),
        .CE(\d3_reg[3]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(d3_next[0]),
        .Q(d3_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \d3_reg_reg[1] 
       (.C(CLK),
        .CE(\d3_reg[3]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(d3_next[1]),
        .Q(d3_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \d3_reg_reg[2] 
       (.C(CLK),
        .CE(\d3_reg[3]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(d3_next[2]),
        .Q(d3_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \d3_reg_reg[3] 
       (.C(CLK),
        .CE(\d3_reg[3]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(d3_next[3]),
        .Q(d3_reg[3]));
  disp_mux mux_disp
       (.CLK(CLK),
        .Q(d0_reg),
        .an_OBUF(an_OBUF),
        .reset_IBUF(reset_IBUF),
        .sseg_OBUF(sseg_OBUF),
        .\sseg_OBUF[0]_inst_i_1_0 (d1_reg),
        .\sseg_OBUF[0]_inst_i_1_1 (d3_reg),
        .\sseg_OBUF[0]_inst_i_1_2 (d2_reg));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \r_reg[0]_i_10 
       (.I0(\r_reg[0]_i_14_n_0 ),
        .I1(r_reg_reg[2]),
        .I2(r_reg_reg[1]),
        .I3(r_reg_reg[0]),
        .I4(\r_reg[0]_i_15_n_0 ),
        .I5(\r_reg[0]_i_16_n_0 ),
        .O(\r_reg[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \r_reg[0]_i_11 
       (.I0(\r_reg[0]_i_13_n_0 ),
        .I1(r_reg_reg[2]),
        .I2(r_reg_reg[1]),
        .I3(r_reg_reg[0]),
        .I4(\r_reg[0]_i_17_n_0 ),
        .I5(\r_reg[0]_i_18_n_0 ),
        .O(\r_reg[0]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \r_reg[0]_i_12 
       (.I0(r_reg_reg[11]),
        .I1(r_reg_reg[12]),
        .I2(r_reg_reg[13]),
        .I3(down_s),
        .I4(\r_reg[0]_i_17_n_0 ),
        .O(\r_reg[0]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \r_reg[0]_i_13 
       (.I0(r_reg_reg[6]),
        .I1(r_reg_reg[5]),
        .I2(r_reg_reg[4]),
        .I3(r_reg_reg[3]),
        .O(\r_reg[0]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \r_reg[0]_i_14 
       (.I0(r_reg_reg[6]),
        .I1(r_reg_reg[5]),
        .I2(r_reg_reg[4]),
        .I3(r_reg_reg[3]),
        .O(\r_reg[0]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \r_reg[0]_i_15 
       (.I0(r_reg_reg[10]),
        .I1(r_reg_reg[9]),
        .I2(r_reg_reg[8]),
        .I3(r_reg_reg[7]),
        .O(\r_reg[0]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \r_reg[0]_i_16 
       (.I0(r_reg_reg[13]),
        .I1(up_s),
        .I2(r_reg_reg[11]),
        .I3(r_reg_reg[12]),
        .O(\r_reg[0]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \r_reg[0]_i_17 
       (.I0(r_reg_reg[10]),
        .I1(r_reg_reg[9]),
        .I2(r_reg_reg[8]),
        .I3(r_reg_reg[7]),
        .O(\r_reg[0]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \r_reg[0]_i_18 
       (.I0(down_s),
        .I1(r_reg_reg[13]),
        .I2(r_reg_reg[12]),
        .I3(r_reg_reg[11]),
        .O(\r_reg[0]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \r_reg[0]_i_2 
       (.I0(\r_reg[0]_i_10_n_0 ),
        .I1(\r_reg[0]_i_11_n_0 ),
        .I2(up_s),
        .O(\r_reg[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \r_reg[0]_i_3 
       (.I0(\r_reg[0]_i_10_n_0 ),
        .I1(\r_reg[0]_i_11_n_0 ),
        .I2(up_s),
        .O(\r_reg[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \r_reg[0]_i_4 
       (.I0(\r_reg[0]_i_10_n_0 ),
        .I1(\r_reg[0]_i_11_n_0 ),
        .I2(up_s),
        .O(\r_reg[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFF7FFFF)) 
    \r_reg[0]_i_5 
       (.I0(\r_reg[0]_i_12_n_0 ),
        .I1(r_reg_reg[0]),
        .I2(r_reg_reg[1]),
        .I3(r_reg_reg[2]),
        .I4(\r_reg[0]_i_13_n_0 ),
        .I5(\r_reg[0]_i_10_n_0 ),
        .O(\r_reg[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0201)) 
    \r_reg[0]_i_6 
       (.I0(up_s),
        .I1(\r_reg[0]_i_11_n_0 ),
        .I2(\r_reg[0]_i_10_n_0 ),
        .I3(r_reg_reg[3]),
        .O(\r_reg[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0201)) 
    \r_reg[0]_i_7 
       (.I0(up_s),
        .I1(\r_reg[0]_i_11_n_0 ),
        .I2(\r_reg[0]_i_10_n_0 ),
        .I3(r_reg_reg[2]),
        .O(\r_reg[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0201)) 
    \r_reg[0]_i_8 
       (.I0(up_s),
        .I1(\r_reg[0]_i_11_n_0 ),
        .I2(\r_reg[0]_i_10_n_0 ),
        .I3(r_reg_reg[1]),
        .O(\r_reg[0]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \r_reg[0]_i_9 
       (.I0(\r_reg[0]_i_10_n_0 ),
        .I1(r_reg_reg[0]),
        .O(\r_reg[0]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \r_reg[12]_i_2 
       (.I0(\r_reg[0]_i_10_n_0 ),
        .I1(\r_reg[0]_i_11_n_0 ),
        .I2(up_s),
        .O(\r_reg[12]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h1001)) 
    \r_reg[12]_i_3 
       (.I0(\r_reg[0]_i_11_n_0 ),
        .I1(\r_reg[0]_i_10_n_0 ),
        .I2(r_reg_reg[13]),
        .I3(up_s),
        .O(\r_reg[12]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0201)) 
    \r_reg[12]_i_4 
       (.I0(up_s),
        .I1(\r_reg[0]_i_11_n_0 ),
        .I2(\r_reg[0]_i_10_n_0 ),
        .I3(r_reg_reg[12]),
        .O(\r_reg[12]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \r_reg[4]_i_2 
       (.I0(\r_reg[0]_i_10_n_0 ),
        .I1(\r_reg[0]_i_11_n_0 ),
        .I2(up_s),
        .O(\r_reg[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \r_reg[4]_i_3 
       (.I0(\r_reg[0]_i_10_n_0 ),
        .I1(\r_reg[0]_i_11_n_0 ),
        .I2(up_s),
        .O(\r_reg[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \r_reg[4]_i_4 
       (.I0(\r_reg[0]_i_10_n_0 ),
        .I1(\r_reg[0]_i_11_n_0 ),
        .I2(up_s),
        .O(\r_reg[4]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \r_reg[4]_i_5 
       (.I0(\r_reg[0]_i_10_n_0 ),
        .I1(\r_reg[0]_i_11_n_0 ),
        .I2(up_s),
        .O(\r_reg[4]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0201)) 
    \r_reg[4]_i_6 
       (.I0(up_s),
        .I1(\r_reg[0]_i_11_n_0 ),
        .I2(\r_reg[0]_i_10_n_0 ),
        .I3(r_reg_reg[7]),
        .O(\r_reg[4]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0201)) 
    \r_reg[4]_i_7 
       (.I0(up_s),
        .I1(\r_reg[0]_i_11_n_0 ),
        .I2(\r_reg[0]_i_10_n_0 ),
        .I3(r_reg_reg[6]),
        .O(\r_reg[4]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0201)) 
    \r_reg[4]_i_8 
       (.I0(up_s),
        .I1(\r_reg[0]_i_11_n_0 ),
        .I2(\r_reg[0]_i_10_n_0 ),
        .I3(r_reg_reg[5]),
        .O(\r_reg[4]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h0201)) 
    \r_reg[4]_i_9 
       (.I0(up_s),
        .I1(\r_reg[0]_i_11_n_0 ),
        .I2(\r_reg[0]_i_10_n_0 ),
        .I3(r_reg_reg[4]),
        .O(\r_reg[4]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \r_reg[8]_i_2 
       (.I0(\r_reg[0]_i_10_n_0 ),
        .I1(\r_reg[0]_i_11_n_0 ),
        .I2(up_s),
        .O(\r_reg[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \r_reg[8]_i_3 
       (.I0(\r_reg[0]_i_10_n_0 ),
        .I1(\r_reg[0]_i_11_n_0 ),
        .I2(up_s),
        .O(\r_reg[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \r_reg[8]_i_4 
       (.I0(\r_reg[0]_i_10_n_0 ),
        .I1(\r_reg[0]_i_11_n_0 ),
        .I2(up_s),
        .O(\r_reg[8]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \r_reg[8]_i_5 
       (.I0(\r_reg[0]_i_10_n_0 ),
        .I1(\r_reg[0]_i_11_n_0 ),
        .I2(up_s),
        .O(\r_reg[8]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0201)) 
    \r_reg[8]_i_6 
       (.I0(up_s),
        .I1(\r_reg[0]_i_11_n_0 ),
        .I2(\r_reg[0]_i_10_n_0 ),
        .I3(r_reg_reg[11]),
        .O(\r_reg[8]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0201)) 
    \r_reg[8]_i_7 
       (.I0(up_s),
        .I1(\r_reg[0]_i_11_n_0 ),
        .I2(\r_reg[0]_i_10_n_0 ),
        .I3(r_reg_reg[10]),
        .O(\r_reg[8]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0201)) 
    \r_reg[8]_i_8 
       (.I0(up_s),
        .I1(\r_reg[0]_i_11_n_0 ),
        .I2(\r_reg[0]_i_10_n_0 ),
        .I3(r_reg_reg[9]),
        .O(\r_reg[8]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h0201)) 
    \r_reg[8]_i_9 
       (.I0(up_s),
        .I1(\r_reg[0]_i_11_n_0 ),
        .I2(\r_reg[0]_i_10_n_0 ),
        .I3(r_reg_reg[8]),
        .O(\r_reg[8]_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[0] 
       (.C(CLK),
        .CE(d0_next),
        .CLR(reset_IBUF),
        .D(\r_reg_reg[0]_i_1_n_7 ),
        .Q(r_reg_reg[0]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \r_reg_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\r_reg_reg[0]_i_1_n_0 ,\NLW_r_reg_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\r_reg[0]_i_2_n_0 ,\r_reg[0]_i_3_n_0 ,\r_reg[0]_i_4_n_0 ,\r_reg[0]_i_5_n_0 }),
        .O({\r_reg_reg[0]_i_1_n_4 ,\r_reg_reg[0]_i_1_n_5 ,\r_reg_reg[0]_i_1_n_6 ,\r_reg_reg[0]_i_1_n_7 }),
        .S({\r_reg[0]_i_6_n_0 ,\r_reg[0]_i_7_n_0 ,\r_reg[0]_i_8_n_0 ,\r_reg[0]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[10] 
       (.C(CLK),
        .CE(d0_next),
        .CLR(reset_IBUF),
        .D(\r_reg_reg[8]_i_1_n_5 ),
        .Q(r_reg_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[11] 
       (.C(CLK),
        .CE(d0_next),
        .CLR(reset_IBUF),
        .D(\r_reg_reg[8]_i_1_n_4 ),
        .Q(r_reg_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[12] 
       (.C(CLK),
        .CE(d0_next),
        .CLR(reset_IBUF),
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
        .CE(d0_next),
        .CLR(reset_IBUF),
        .D(\r_reg_reg[12]_i_1_n_6 ),
        .Q(r_reg_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[1] 
       (.C(CLK),
        .CE(d0_next),
        .CLR(reset_IBUF),
        .D(\r_reg_reg[0]_i_1_n_6 ),
        .Q(r_reg_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[2] 
       (.C(CLK),
        .CE(d0_next),
        .CLR(reset_IBUF),
        .D(\r_reg_reg[0]_i_1_n_5 ),
        .Q(r_reg_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[3] 
       (.C(CLK),
        .CE(d0_next),
        .CLR(reset_IBUF),
        .D(\r_reg_reg[0]_i_1_n_4 ),
        .Q(r_reg_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[4] 
       (.C(CLK),
        .CE(d0_next),
        .CLR(reset_IBUF),
        .D(\r_reg_reg[4]_i_1_n_7 ),
        .Q(r_reg_reg[4]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \r_reg_reg[4]_i_1 
       (.CI(\r_reg_reg[0]_i_1_n_0 ),
        .CO({\r_reg_reg[4]_i_1_n_0 ,\NLW_r_reg_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\r_reg[4]_i_2_n_0 ,\r_reg[4]_i_3_n_0 ,\r_reg[4]_i_4_n_0 ,\r_reg[4]_i_5_n_0 }),
        .O({\r_reg_reg[4]_i_1_n_4 ,\r_reg_reg[4]_i_1_n_5 ,\r_reg_reg[4]_i_1_n_6 ,\r_reg_reg[4]_i_1_n_7 }),
        .S({\r_reg[4]_i_6_n_0 ,\r_reg[4]_i_7_n_0 ,\r_reg[4]_i_8_n_0 ,\r_reg[4]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[5] 
       (.C(CLK),
        .CE(d0_next),
        .CLR(reset_IBUF),
        .D(\r_reg_reg[4]_i_1_n_6 ),
        .Q(r_reg_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[6] 
       (.C(CLK),
        .CE(d0_next),
        .CLR(reset_IBUF),
        .D(\r_reg_reg[4]_i_1_n_5 ),
        .Q(r_reg_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[7] 
       (.C(CLK),
        .CE(d0_next),
        .CLR(reset_IBUF),
        .D(\r_reg_reg[4]_i_1_n_4 ),
        .Q(r_reg_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg_reg[8] 
       (.C(CLK),
        .CE(d0_next),
        .CLR(reset_IBUF),
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
        .CE(d0_next),
        .CLR(reset_IBUF),
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
