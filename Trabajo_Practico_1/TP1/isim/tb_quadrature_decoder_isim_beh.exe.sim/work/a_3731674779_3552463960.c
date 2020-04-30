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


static void work_a_3731674779_3552463960_p_0(char *t0)
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

LAB0:    xsi_set_current_line(49, ng0);

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

LAB6:    t10 = (t0 + 4656);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 2U);
    xsi_driver_first_trans_fast(t10);

LAB2:    t15 = (t0 + 4528);
    *((int *)t15) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(2U, t8, 0);
    goto LAB6;

}

static void work_a_3731674779_3552463960_p_1(char *t0)
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

LAB0:    xsi_set_current_line(52, ng0);
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
LAB3:    t1 = (t0 + 4544);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 4720);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 2152U);
    t5 = *((char **)t2);
    t4 = *((unsigned char *)t5);
    t2 = (t0 + 4720);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t4;
    xsi_driver_first_trans_fast(t2);
    goto LAB3;

}

static void work_a_3731674779_3552463960_p_2(char *t0)
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

LAB0:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t3);
    goto **((char **)t1);

LAB2:    t1 = (t0 + 4560);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(64, ng0);
    t4 = (t0 + 2312U);
    t5 = *((char **)t4);
    t4 = (t0 + 8232);
    t7 = 1;
    if (2U == 2U)
        goto LAB10;

LAB11:    t7 = 0;

LAB12:    if (t7 != 0)
        goto LAB7;

LAB9:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 8234);
    t3 = 1;
    if (2U == 2U)
        goto LAB18;

LAB19:    t3 = 0;

LAB20:    if (t3 != 0)
        goto LAB16;

LAB17:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 8236);
    t3 = 1;
    if (2U == 2U)
        goto LAB26;

LAB27:    t3 = 0;

LAB28:    if (t3 != 0)
        goto LAB24;

LAB25:    xsi_set_current_line(71, ng0);
    t1 = (t0 + 4784);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);

LAB8:    goto LAB2;

LAB4:    xsi_set_current_line(75, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 8238);
    t3 = 1;
    if (2U == 2U)
        goto LAB35;

LAB36:    t3 = 0;

LAB37:    if (t3 != 0)
        goto LAB32;

LAB34:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 8240);
    t3 = 1;
    if (2U == 2U)
        goto LAB43;

LAB44:    t3 = 0;

LAB45:    if (t3 != 0)
        goto LAB41;

LAB42:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 8242);
    t3 = 1;
    if (2U == 2U)
        goto LAB51;

LAB52:    t3 = 0;

LAB53:    if (t3 != 0)
        goto LAB49;

LAB50:    xsi_set_current_line(82, ng0);
    t1 = (t0 + 4784);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);

LAB33:    goto LAB2;

LAB5:    xsi_set_current_line(86, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 8244);
    t3 = 1;
    if (2U == 2U)
        goto LAB60;

LAB61:    t3 = 0;

LAB62:    if (t3 != 0)
        goto LAB57;

LAB59:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 8246);
    t3 = 1;
    if (2U == 2U)
        goto LAB68;

LAB69:    t3 = 0;

LAB70:    if (t3 != 0)
        goto LAB66;

LAB67:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 8248);
    t3 = 1;
    if (2U == 2U)
        goto LAB76;

LAB77:    t3 = 0;

LAB78:    if (t3 != 0)
        goto LAB74;

LAB75:    xsi_set_current_line(93, ng0);
    t1 = (t0 + 4784);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);

LAB58:    goto LAB2;

LAB6:    xsi_set_current_line(97, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 8250);
    t3 = 1;
    if (2U == 2U)
        goto LAB85;

LAB86:    t3 = 0;

LAB87:    if (t3 != 0)
        goto LAB82;

LAB84:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 8252);
    t3 = 1;
    if (2U == 2U)
        goto LAB93;

LAB94:    t3 = 0;

LAB95:    if (t3 != 0)
        goto LAB91;

LAB92:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 8254);
    t3 = 1;
    if (2U == 2U)
        goto LAB101;

LAB102:    t3 = 0;

LAB103:    if (t3 != 0)
        goto LAB99;

LAB100:    xsi_set_current_line(104, ng0);
    t1 = (t0 + 4784);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);

LAB83:    goto LAB2;

LAB7:    xsi_set_current_line(65, ng0);
    t11 = (t0 + 4784);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = (unsigned char)0;
    xsi_driver_first_trans_fast(t11);
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

LAB16:    xsi_set_current_line(67, ng0);
    t9 = (t0 + 4784);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)1;
    xsi_driver_first_trans_fast(t9);
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

LAB24:    xsi_set_current_line(69, ng0);
    t9 = (t0 + 4784);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)3;
    xsi_driver_first_trans_fast(t9);
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

LAB32:    xsi_set_current_line(76, ng0);
    t9 = (t0 + 4784);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)1;
    xsi_driver_first_trans_fast(t9);
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

LAB41:    xsi_set_current_line(78, ng0);
    t9 = (t0 + 4784);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_first_trans_fast(t9);
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

LAB49:    xsi_set_current_line(80, ng0);
    t9 = (t0 + 4784);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)0;
    xsi_driver_first_trans_fast(t9);
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

LAB57:    xsi_set_current_line(87, ng0);
    t9 = (t0 + 4784);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_first_trans_fast(t9);
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

LAB66:    xsi_set_current_line(89, ng0);
    t9 = (t0 + 4784);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)3;
    xsi_driver_first_trans_fast(t9);
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

LAB74:    xsi_set_current_line(91, ng0);
    t9 = (t0 + 4784);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)1;
    xsi_driver_first_trans_fast(t9);
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

LAB82:    xsi_set_current_line(98, ng0);
    t9 = (t0 + 4784);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)3;
    xsi_driver_first_trans_fast(t9);
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

LAB91:    xsi_set_current_line(100, ng0);
    t9 = (t0 + 4784);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)0;
    xsi_driver_first_trans_fast(t9);
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

LAB99:    xsi_set_current_line(102, ng0);
    t9 = (t0 + 4784);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_first_trans_fast(t9);
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

static void work_a_3731674779_3552463960_p_3(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned int t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    static char *nl0[] = {&&LAB6, &&LAB7, &&LAB8, &&LAB9};

LAB0:    xsi_set_current_line(112, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4576);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(113, ng0);
    t3 = (t0 + 1992U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t3 = (char *)((nl0) + t5);
    goto **((char **)t3);

LAB5:    goto LAB3;

LAB6:    xsi_set_current_line(115, ng0);
    t6 = (t0 + 2312U);
    t7 = *((char **)t6);
    t6 = (t0 + 8256);
    t9 = 1;
    if (2U == 2U)
        goto LAB13;

LAB14:    t9 = 0;

LAB15:    if (t9 != 0)
        goto LAB10;

LAB12:    t1 = (t0 + 2312U);
    t3 = *((char **)t1);
    t1 = (t0 + 8258);
    t2 = 1;
    if (2U == 2U)
        goto LAB21;

LAB22:    t2 = 0;

LAB23:    if (t2 != 0)
        goto LAB19;

LAB20:    t1 = (t0 + 2312U);
    t3 = *((char **)t1);
    t1 = (t0 + 8260);
    t2 = 1;
    if (2U == 2U)
        goto LAB29;

LAB30:    t2 = 0;

LAB31:    if (t2 != 0)
        goto LAB27;

LAB28:
LAB11:    goto LAB5;

LAB7:    xsi_set_current_line(127, ng0);
    t1 = (t0 + 2312U);
    t3 = *((char **)t1);
    t1 = (t0 + 8262);
    t2 = 1;
    if (2U == 2U)
        goto LAB38;

LAB39:    t2 = 0;

LAB40:    if (t2 != 0)
        goto LAB35;

LAB37:    t1 = (t0 + 2312U);
    t3 = *((char **)t1);
    t1 = (t0 + 8264);
    t2 = 1;
    if (2U == 2U)
        goto LAB46;

LAB47:    t2 = 0;

LAB48:    if (t2 != 0)
        goto LAB44;

LAB45:    t1 = (t0 + 2312U);
    t3 = *((char **)t1);
    t1 = (t0 + 8266);
    t2 = 1;
    if (2U == 2U)
        goto LAB54;

LAB55:    t2 = 0;

LAB56:    if (t2 != 0)
        goto LAB52;

LAB53:
LAB36:    goto LAB5;

LAB8:    xsi_set_current_line(139, ng0);
    t1 = (t0 + 2312U);
    t3 = *((char **)t1);
    t1 = (t0 + 8268);
    t2 = 1;
    if (2U == 2U)
        goto LAB63;

LAB64:    t2 = 0;

LAB65:    if (t2 != 0)
        goto LAB60;

LAB62:    t1 = (t0 + 2312U);
    t3 = *((char **)t1);
    t1 = (t0 + 8270);
    t2 = 1;
    if (2U == 2U)
        goto LAB71;

LAB72:    t2 = 0;

LAB73:    if (t2 != 0)
        goto LAB69;

LAB70:    t1 = (t0 + 2312U);
    t3 = *((char **)t1);
    t1 = (t0 + 8272);
    t2 = 1;
    if (2U == 2U)
        goto LAB79;

LAB80:    t2 = 0;

LAB81:    if (t2 != 0)
        goto LAB77;

LAB78:
LAB61:    goto LAB5;

LAB9:    xsi_set_current_line(151, ng0);
    t1 = (t0 + 2312U);
    t3 = *((char **)t1);
    t1 = (t0 + 8274);
    t2 = 1;
    if (2U == 2U)
        goto LAB88;

LAB89:    t2 = 0;

LAB90:    if (t2 != 0)
        goto LAB85;

LAB87:    t1 = (t0 + 2312U);
    t3 = *((char **)t1);
    t1 = (t0 + 8276);
    t2 = 1;
    if (2U == 2U)
        goto LAB96;

LAB97:    t2 = 0;

LAB98:    if (t2 != 0)
        goto LAB94;

LAB95:    t1 = (t0 + 2312U);
    t3 = *((char **)t1);
    t1 = (t0 + 8278);
    t2 = 1;
    if (2U == 2U)
        goto LAB104;

LAB105:    t2 = 0;

LAB106:    if (t2 != 0)
        goto LAB102;

LAB103:
LAB86:    goto LAB5;

LAB10:    xsi_set_current_line(116, ng0);
    t13 = (t0 + 4848);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t13);
    xsi_set_current_line(117, ng0);
    t1 = (t0 + 4912);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB11;

LAB13:    t10 = 0;

LAB16:    if (t10 < 2U)
        goto LAB17;
    else
        goto LAB15;

LAB17:    t11 = (t7 + t10);
    t12 = (t6 + t10);
    if (*((unsigned char *)t11) != *((unsigned char *)t12))
        goto LAB14;

LAB18:    t10 = (t10 + 1);
    goto LAB16;

LAB19:    xsi_set_current_line(119, ng0);
    t8 = (t0 + 4848);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t8);
    xsi_set_current_line(120, ng0);
    t1 = (t0 + 4912);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB11;

LAB21:    t10 = 0;

LAB24:    if (t10 < 2U)
        goto LAB25;
    else
        goto LAB23;

LAB25:    t6 = (t3 + t10);
    t7 = (t1 + t10);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB22;

LAB26:    t10 = (t10 + 1);
    goto LAB24;

LAB27:    xsi_set_current_line(122, ng0);
    t8 = (t0 + 4848);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t8);
    xsi_set_current_line(123, ng0);
    t1 = (t0 + 4912);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB11;

LAB29:    t10 = 0;

LAB32:    if (t10 < 2U)
        goto LAB33;
    else
        goto LAB31;

LAB33:    t6 = (t3 + t10);
    t7 = (t1 + t10);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB30;

LAB34:    t10 = (t10 + 1);
    goto LAB32;

LAB35:    xsi_set_current_line(128, ng0);
    t8 = (t0 + 4848);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t8);
    xsi_set_current_line(129, ng0);
    t1 = (t0 + 4912);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB36;

LAB38:    t10 = 0;

LAB41:    if (t10 < 2U)
        goto LAB42;
    else
        goto LAB40;

LAB42:    t6 = (t3 + t10);
    t7 = (t1 + t10);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB39;

LAB43:    t10 = (t10 + 1);
    goto LAB41;

LAB44:    xsi_set_current_line(131, ng0);
    t8 = (t0 + 4848);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t8);
    xsi_set_current_line(132, ng0);
    t1 = (t0 + 4912);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB36;

LAB46:    t10 = 0;

LAB49:    if (t10 < 2U)
        goto LAB50;
    else
        goto LAB48;

LAB50:    t6 = (t3 + t10);
    t7 = (t1 + t10);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB47;

LAB51:    t10 = (t10 + 1);
    goto LAB49;

LAB52:    xsi_set_current_line(134, ng0);
    t8 = (t0 + 4848);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t8);
    xsi_set_current_line(135, ng0);
    t1 = (t0 + 4912);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB36;

LAB54:    t10 = 0;

LAB57:    if (t10 < 2U)
        goto LAB58;
    else
        goto LAB56;

LAB58:    t6 = (t3 + t10);
    t7 = (t1 + t10);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB55;

LAB59:    t10 = (t10 + 1);
    goto LAB57;

LAB60:    xsi_set_current_line(140, ng0);
    t8 = (t0 + 4848);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t8);
    xsi_set_current_line(141, ng0);
    t1 = (t0 + 4912);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB61;

LAB63:    t10 = 0;

LAB66:    if (t10 < 2U)
        goto LAB67;
    else
        goto LAB65;

LAB67:    t6 = (t3 + t10);
    t7 = (t1 + t10);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB64;

LAB68:    t10 = (t10 + 1);
    goto LAB66;

LAB69:    xsi_set_current_line(143, ng0);
    t8 = (t0 + 4848);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t8);
    xsi_set_current_line(144, ng0);
    t1 = (t0 + 4912);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB61;

LAB71:    t10 = 0;

LAB74:    if (t10 < 2U)
        goto LAB75;
    else
        goto LAB73;

LAB75:    t6 = (t3 + t10);
    t7 = (t1 + t10);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB72;

LAB76:    t10 = (t10 + 1);
    goto LAB74;

LAB77:    xsi_set_current_line(146, ng0);
    t8 = (t0 + 4848);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t8);
    xsi_set_current_line(147, ng0);
    t1 = (t0 + 4912);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB61;

LAB79:    t10 = 0;

LAB82:    if (t10 < 2U)
        goto LAB83;
    else
        goto LAB81;

LAB83:    t6 = (t3 + t10);
    t7 = (t1 + t10);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB80;

LAB84:    t10 = (t10 + 1);
    goto LAB82;

LAB85:    xsi_set_current_line(152, ng0);
    t8 = (t0 + 4848);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t8);
    xsi_set_current_line(153, ng0);
    t1 = (t0 + 4912);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB86;

LAB88:    t10 = 0;

LAB91:    if (t10 < 2U)
        goto LAB92;
    else
        goto LAB90;

LAB92:    t6 = (t3 + t10);
    t7 = (t1 + t10);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB89;

LAB93:    t10 = (t10 + 1);
    goto LAB91;

LAB94:    xsi_set_current_line(155, ng0);
    t8 = (t0 + 4848);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t8);
    xsi_set_current_line(156, ng0);
    t1 = (t0 + 4912);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB86;

LAB96:    t10 = 0;

LAB99:    if (t10 < 2U)
        goto LAB100;
    else
        goto LAB98;

LAB100:    t6 = (t3 + t10);
    t7 = (t1 + t10);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB97;

LAB101:    t10 = (t10 + 1);
    goto LAB99;

LAB102:    xsi_set_current_line(158, ng0);
    t8 = (t0 + 4848);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t8);
    xsi_set_current_line(159, ng0);
    t1 = (t0 + 4912);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB86;

LAB104:    t10 = 0;

LAB107:    if (t10 < 2U)
        goto LAB108;
    else
        goto LAB106;

LAB108:    t6 = (t3 + t10);
    t7 = (t1 + t10);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB105;

LAB109:    t10 = (t10 + 1);
    goto LAB107;

}


extern void work_a_3731674779_3552463960_init()
{
	static char *pe[] = {(void *)work_a_3731674779_3552463960_p_0,(void *)work_a_3731674779_3552463960_p_1,(void *)work_a_3731674779_3552463960_p_2,(void *)work_a_3731674779_3552463960_p_3};
	xsi_register_didat("work_a_3731674779_3552463960", "isim/tb_quadrature_decoder_isim_beh.exe.sim/work/a_3731674779_3552463960.didat");
	xsi_register_executes(pe);
}
