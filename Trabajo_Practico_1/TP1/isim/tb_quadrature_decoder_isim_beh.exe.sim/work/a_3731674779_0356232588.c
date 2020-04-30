/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/run/media/fnavarro/DATA/Git/6to/Tecnicas_Digitales_IV/Practicos/Trabajo_Practico_1/TP1/quadrature_decoder.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_3731674779_0356232588_p_0(char *t0)
{
    char t6[16];
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    char *t7;
    unsigned int t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    xsi_set_current_line(173, ng0);

LAB3:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 1512U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t7 = ((IEEE_P_2592010699) + 4000);
    t1 = xsi_base_array_concat(t1, t6, t7, (char)99, t3, (char)99, t5, (char)101);
    t8 = (1U + 1U);
    t9 = (2U != t8);
    if (t9 == 1)
        goto LAB5;

LAB6:    t10 = (t0 + 4392);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 2U);
    xsi_driver_first_trans_fast(t10);

LAB2:    t15 = (t0 + 4280);
    *((int *)t15) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(2U, t8, 0);
    goto LAB6;

}

static void work_a_3731674779_0356232588_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    xsi_set_current_line(176, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 992U);
    t3 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 4296);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(177, ng0);
    t1 = (t0 + 4456);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(179, ng0);
    t2 = (t0 + 2152U);
    t5 = *((char **)t2);
    t4 = *((unsigned char *)t5);
    t2 = (t0 + 4456);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t4;
    xsi_driver_first_trans_fast(t2);
    goto LAB3;

}

static void work_a_3731674779_0356232588_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    unsigned char t7;
    unsigned int t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    static char *nl0[] = {&&LAB3, &&LAB4, &&LAB5, &&LAB6};

LAB0:    xsi_set_current_line(186, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t3);
    goto **((char **)t1);

LAB2:    t1 = (t0 + 4312);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(188, ng0);
    t4 = (t0 + 2312U);
    t5 = *((char **)t4);
    t4 = (t0 + 7832);
    t7 = 1;
    if (2U == 2U)
        goto LAB10;

LAB11:    t7 = 0;

LAB12:    if (t7 != 0)
        goto LAB7;

LAB9:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 7834);
    t3 = 1;
    if (2U == 2U)
        goto LAB18;

LAB19:    t3 = 0;

LAB20:    if (t3 != 0)
        goto LAB16;

LAB17:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 7836);
    t3 = 1;
    if (2U == 2U)
        goto LAB26;

LAB27:    t3 = 0;

LAB28:    if (t3 != 0)
        goto LAB24;

LAB25:    xsi_set_current_line(201, ng0);
    t1 = (t0 + 4520);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);

LAB8:    goto LAB2;

LAB4:    xsi_set_current_line(205, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 7838);
    t3 = 1;
    if (2U == 2U)
        goto LAB35;

LAB36:    t3 = 0;

LAB37:    if (t3 != 0)
        goto LAB32;

LAB34:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 7840);
    t3 = 1;
    if (2U == 2U)
        goto LAB43;

LAB44:    t3 = 0;

LAB45:    if (t3 != 0)
        goto LAB41;

LAB42:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 7842);
    t3 = 1;
    if (2U == 2U)
        goto LAB51;

LAB52:    t3 = 0;

LAB53:    if (t3 != 0)
        goto LAB49;

LAB50:    xsi_set_current_line(218, ng0);
    t1 = (t0 + 4520);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);

LAB33:    goto LAB2;

LAB5:    xsi_set_current_line(222, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 7844);
    t3 = 1;
    if (2U == 2U)
        goto LAB60;

LAB61:    t3 = 0;

LAB62:    if (t3 != 0)
        goto LAB57;

LAB59:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 7846);
    t3 = 1;
    if (2U == 2U)
        goto LAB68;

LAB69:    t3 = 0;

LAB70:    if (t3 != 0)
        goto LAB66;

LAB67:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 7848);
    t3 = 1;
    if (2U == 2U)
        goto LAB76;

LAB77:    t3 = 0;

LAB78:    if (t3 != 0)
        goto LAB74;

LAB75:    xsi_set_current_line(235, ng0);
    t1 = (t0 + 4520);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);

LAB58:    goto LAB2;

LAB6:    xsi_set_current_line(239, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 7850);
    t3 = 1;
    if (2U == 2U)
        goto LAB85;

LAB86:    t3 = 0;

LAB87:    if (t3 != 0)
        goto LAB82;

LAB84:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 7852);
    t3 = 1;
    if (2U == 2U)
        goto LAB93;

LAB94:    t3 = 0;

LAB95:    if (t3 != 0)
        goto LAB91;

LAB92:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 7854);
    t3 = 1;
    if (2U == 2U)
        goto LAB101;

LAB102:    t3 = 0;

LAB103:    if (t3 != 0)
        goto LAB99;

LAB100:    xsi_set_current_line(252, ng0);
    t1 = (t0 + 4520);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);

LAB83:    goto LAB2;

LAB7:    xsi_set_current_line(189, ng0);
    t11 = (t0 + 4520);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = (unsigned char)0;
    xsi_driver_first_trans_fast(t11);
    xsi_set_current_line(190, ng0);
    t1 = (t0 + 4584);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(191, ng0);
    t1 = (t0 + 4648);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB8;

LAB10:    t8 = 0;

LAB13:    if (t8 < 2U)
        goto LAB14;
    else
        goto LAB12;

LAB14:    t9 = (t5 + t8);
    t10 = (t4 + t8);
    if (*((unsigned char *)t9) != *((unsigned char *)t10))
        goto LAB11;

LAB15:    t8 = (t8 + 1);
    goto LAB13;

LAB16:    xsi_set_current_line(193, ng0);
    t9 = (t0 + 4520);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)1;
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(194, ng0);
    t1 = (t0 + 4584);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(195, ng0);
    t1 = (t0 + 4648);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB8;

LAB18:    t8 = 0;

LAB21:    if (t8 < 2U)
        goto LAB22;
    else
        goto LAB20;

LAB22:    t5 = (t2 + t8);
    t6 = (t1 + t8);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB19;

LAB23:    t8 = (t8 + 1);
    goto LAB21;

LAB24:    xsi_set_current_line(197, ng0);
    t9 = (t0 + 4520);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)3;
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(198, ng0);
    t1 = (t0 + 4584);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(199, ng0);
    t1 = (t0 + 4648);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB8;

LAB26:    t8 = 0;

LAB29:    if (t8 < 2U)
        goto LAB30;
    else
        goto LAB28;

LAB30:    t5 = (t2 + t8);
    t6 = (t1 + t8);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB27;

LAB31:    t8 = (t8 + 1);
    goto LAB29;

LAB32:    xsi_set_current_line(206, ng0);
    t9 = (t0 + 4520);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)1;
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(207, ng0);
    t1 = (t0 + 4584);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(208, ng0);
    t1 = (t0 + 4648);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB33;

LAB35:    t8 = 0;

LAB38:    if (t8 < 2U)
        goto LAB39;
    else
        goto LAB37;

LAB39:    t5 = (t2 + t8);
    t6 = (t1 + t8);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB36;

LAB40:    t8 = (t8 + 1);
    goto LAB38;

LAB41:    xsi_set_current_line(210, ng0);
    t9 = (t0 + 4520);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(211, ng0);
    t1 = (t0 + 4584);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(212, ng0);
    t1 = (t0 + 4648);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB33;

LAB43:    t8 = 0;

LAB46:    if (t8 < 2U)
        goto LAB47;
    else
        goto LAB45;

LAB47:    t5 = (t2 + t8);
    t6 = (t1 + t8);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB44;

LAB48:    t8 = (t8 + 1);
    goto LAB46;

LAB49:    xsi_set_current_line(214, ng0);
    t9 = (t0 + 4520);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)0;
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(215, ng0);
    t1 = (t0 + 4584);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(216, ng0);
    t1 = (t0 + 4648);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB33;

LAB51:    t8 = 0;

LAB54:    if (t8 < 2U)
        goto LAB55;
    else
        goto LAB53;

LAB55:    t5 = (t2 + t8);
    t6 = (t1 + t8);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB52;

LAB56:    t8 = (t8 + 1);
    goto LAB54;

LAB57:    xsi_set_current_line(223, ng0);
    t9 = (t0 + 4520);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(224, ng0);
    t1 = (t0 + 4584);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(225, ng0);
    t1 = (t0 + 4648);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB58;

LAB60:    t8 = 0;

LAB63:    if (t8 < 2U)
        goto LAB64;
    else
        goto LAB62;

LAB64:    t5 = (t2 + t8);
    t6 = (t1 + t8);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB61;

LAB65:    t8 = (t8 + 1);
    goto LAB63;

LAB66:    xsi_set_current_line(227, ng0);
    t9 = (t0 + 4520);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)3;
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(228, ng0);
    t1 = (t0 + 4584);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(229, ng0);
    t1 = (t0 + 4648);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB58;

LAB68:    t8 = 0;

LAB71:    if (t8 < 2U)
        goto LAB72;
    else
        goto LAB70;

LAB72:    t5 = (t2 + t8);
    t6 = (t1 + t8);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB69;

LAB73:    t8 = (t8 + 1);
    goto LAB71;

LAB74:    xsi_set_current_line(231, ng0);
    t9 = (t0 + 4520);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)1;
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(232, ng0);
    t1 = (t0 + 4584);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(233, ng0);
    t1 = (t0 + 4648);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB58;

LAB76:    t8 = 0;

LAB79:    if (t8 < 2U)
        goto LAB80;
    else
        goto LAB78;

LAB80:    t5 = (t2 + t8);
    t6 = (t1 + t8);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB77;

LAB81:    t8 = (t8 + 1);
    goto LAB79;

LAB82:    xsi_set_current_line(240, ng0);
    t9 = (t0 + 4520);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)3;
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(241, ng0);
    t1 = (t0 + 4584);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(242, ng0);
    t1 = (t0 + 4648);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB83;

LAB85:    t8 = 0;

LAB88:    if (t8 < 2U)
        goto LAB89;
    else
        goto LAB87;

LAB89:    t5 = (t2 + t8);
    t6 = (t1 + t8);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB86;

LAB90:    t8 = (t8 + 1);
    goto LAB88;

LAB91:    xsi_set_current_line(244, ng0);
    t9 = (t0 + 4520);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)0;
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(245, ng0);
    t1 = (t0 + 4584);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(246, ng0);
    t1 = (t0 + 4648);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB83;

LAB93:    t8 = 0;

LAB96:    if (t8 < 2U)
        goto LAB97;
    else
        goto LAB95;

LAB97:    t5 = (t2 + t8);
    t6 = (t1 + t8);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB94;

LAB98:    t8 = (t8 + 1);
    goto LAB96;

LAB99:    xsi_set_current_line(248, ng0);
    t9 = (t0 + 4520);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(249, ng0);
    t1 = (t0 + 4584);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(250, ng0);
    t1 = (t0 + 4648);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB83;

LAB101:    t8 = 0;

LAB104:    if (t8 < 2U)
        goto LAB105;
    else
        goto LAB103;

LAB105:    t5 = (t2 + t8);
    t6 = (t1 + t8);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB102;

LAB106:    t8 = (t8 + 1);
    goto LAB104;

}


extern void work_a_3731674779_0356232588_init()
{
	static char *pe[] = {(void *)work_a_3731674779_0356232588_p_0,(void *)work_a_3731674779_0356232588_p_1,(void *)work_a_3731674779_0356232588_p_2};
	xsi_register_didat("work_a_3731674779_0356232588", "isim/tb_quadrature_decoder_isim_beh.exe.sim/work/a_3731674779_0356232588.didat");
	xsi_register_executes(pe);
}
