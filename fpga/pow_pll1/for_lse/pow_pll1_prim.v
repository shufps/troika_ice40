// Verilog netlist produced by program LSE :  version Radiant (64-bit) 1.0.1.350.6
// Netlist written on Mon Jan 21 15:07:44 2019
// Source file index table: 
// Object locations will have the form @<file_index>(<first_ line>[<left_column>],<last_line>[<right_column>])
// file 0 "/home/ne23kaj2/git/iota_vhdl_pow/ice40_troika/pow_pll1/rtl/pow_pll1.v"
// file 1 "/home/ne23kaj2/git/iota_vhdl_pow/ice40_troika/pow_pll1/rtl/core/lscc_pll.v"
// file 2 "/home/ne23kaj2/programme/lscc/radiant/1.0/cae_library/simulation/verilog/iCE40UP/CCU2_B.v"
// file 3 "/home/ne23kaj2/programme/lscc/radiant/1.0/cae_library/simulation/verilog/iCE40UP/FD1P3BZ.v"
// file 4 "/home/ne23kaj2/programme/lscc/radiant/1.0/cae_library/simulation/verilog/iCE40UP/FD1P3DZ.v"
// file 5 "/home/ne23kaj2/programme/lscc/radiant/1.0/cae_library/simulation/verilog/iCE40UP/FD1P3IZ.v"
// file 6 "/home/ne23kaj2/programme/lscc/radiant/1.0/cae_library/simulation/verilog/iCE40UP/FD1P3JZ.v"
// file 7 "/home/ne23kaj2/programme/lscc/radiant/1.0/cae_library/simulation/verilog/iCE40UP/HSOSC.v"
// file 8 "/home/ne23kaj2/programme/lscc/radiant/1.0/cae_library/simulation/verilog/iCE40UP/HSOSC1P8V.v"
// file 9 "/home/ne23kaj2/programme/lscc/radiant/1.0/cae_library/simulation/verilog/iCE40UP/IB.v"
// file 10 "/home/ne23kaj2/programme/lscc/radiant/1.0/cae_library/simulation/verilog/iCE40UP/IFD1P3AZ.v"
// file 11 "/home/ne23kaj2/programme/lscc/radiant/1.0/cae_library/simulation/verilog/iCE40UP/LSOSC.v"
// file 12 "/home/ne23kaj2/programme/lscc/radiant/1.0/cae_library/simulation/verilog/iCE40UP/LSOSC1P8V.v"
// file 13 "/home/ne23kaj2/programme/lscc/radiant/1.0/cae_library/simulation/verilog/iCE40UP/OB.v"
// file 14 "/home/ne23kaj2/programme/lscc/radiant/1.0/cae_library/simulation/verilog/iCE40UP/OBZ_B.v"
// file 15 "/home/ne23kaj2/programme/lscc/radiant/1.0/cae_library/simulation/verilog/iCE40UP/OFD1P3AZ.v"
// file 16 "/home/ne23kaj2/programme/lscc/radiant/1.0/cae_library/simulation/verilog/iCE40UP/PDP4K.v"
// file 17 "/home/ne23kaj2/programme/lscc/radiant/1.0/cae_library/simulation/verilog/iCE40UP/RGB.v"
// file 18 "/home/ne23kaj2/programme/lscc/radiant/1.0/cae_library/simulation/verilog/iCE40UP/RGB1P8V.v"
// file 19 "/home/ne23kaj2/programme/lscc/radiant/1.0/cae_library/simulation/verilog/iCE40UP/SP256K.v"
// file 20 "/home/ne23kaj2/programme/lscc/radiant/1.0/cae_library/simulation/verilog/iCE40UP/legacy.v"

//
// Verilog Description of module pow_pll1
//

module pow_pll1 (ref_clk_i, rst_n_i, latch_i, outcore_o, outglobal_o);   /* synthesis lineinfo="@0(13[8],13[16])"*/
    input ref_clk_i;   /* synthesis lineinfo="@0(14[12],14[21])"*/
    input rst_n_i;   /* synthesis lineinfo="@0(15[12],15[19])"*/
    input latch_i;   /* synthesis lineinfo="@0(16[12],16[19])"*/
    output outcore_o;   /* synthesis lineinfo="@0(17[13],17[22])"*/
    output outglobal_o;   /* synthesis lineinfo="@0(18[13],18[24])"*/
    
    wire ref_clk_i_c /* synthesis is_clock=1 */ ;   /* synthesis lineinfo="@0(14[12],14[21])"*/
    wire outcore_o_c /* synthesis is_clock=1 */ ;   /* synthesis lineinfo="@0(17[13],17[22])"*/
    wire outglobal_o_c /* synthesis is_clock=1 */ ;   /* synthesis lineinfo="@0(18[13],18[24])"*/
    
    wire GND_net, rst_n_i_c, latch_i_c, VCC_net;
    
    IB rst_n_i_pad (.I(rst_n_i), .O(rst_n_i_c));   /* synthesis lineinfo="@0(15[12],15[19])"*/
    IB ref_clk_i_pad (.I(ref_clk_i), .O(ref_clk_i_c));   /* synthesis lineinfo="@0(14[12],14[21])"*/
    VLO i1 (.Z(GND_net));
    \lscc_pll(DIVR="0",DIVF="11",DIVQ="4",FILTER_RANGE="4",PLLOUT_SELECT_PORTA="GENCLK",PLLOUT_SELECT_PORTB="GENCLK",ENABLE_ICEGATE_PORTA="1",FREQUENCY_PIN_REFERENCECLK="48.000000")  lscc_pll_inst (.GND_net(GND_net), 
            .ref_clk_i_c(ref_clk_i_c), .rst_n_i_c(rst_n_i_c), .latch_i_c(latch_i_c), 
            .outcore_o_c(outcore_o_c), .outglobal_o_c(outglobal_o_c));   /* synthesis lineinfo="@0(35[5],48[18])"*/
    OB outglobal_o_pad (.I(outglobal_o_c), .O(outglobal_o));   /* synthesis lineinfo="@0(18[13],18[24])"*/
    IB latch_i_pad (.I(latch_i), .O(latch_i_c));   /* synthesis lineinfo="@0(16[12],16[19])"*/
    OB outcore_o_pad (.I(outcore_o_c), .O(outcore_o));   /* synthesis lineinfo="@0(17[13],17[22])"*/
    VHI i75 (.Z(VCC_net));
    
endmodule

//
// Verilog Description of module \lscc_pll(DIVR="0",DIVF="11",DIVQ="4",FILTER_RANGE="4",PLLOUT_SELECT_PORTA="GENCLK",PLLOUT_SELECT_PORTB="GENCLK",ENABLE_ICEGATE_PORTA="1",FREQUENCY_PIN_REFERENCECLK="48.000000") 
//

module \lscc_pll(DIVR="0",DIVF="11",DIVQ="4",FILTER_RANGE="4",PLLOUT_SELECT_PORTA="GENCLK",PLLOUT_SELECT_PORTB="GENCLK",ENABLE_ICEGATE_PORTA="1",FREQUENCY_PIN_REFERENCECLK="48.000000")  (GND_net, 
            ref_clk_i_c, rst_n_i_c, latch_i_c, outcore_o_c, outglobal_o_c);
    input GND_net;
    input ref_clk_i_c;
    input rst_n_i_c;
    input latch_i_c;
    output outcore_o_c;
    output outglobal_o_c;
    
    wire ref_clk_i_c /* synthesis is_clock=1 */ ;   /* synthesis lineinfo="@0(14[12],14[21])"*/
    wire outcore_o_c /* synthesis is_clock=1 */ ;   /* synthesis lineinfo="@0(17[13],17[22])"*/
    wire outglobal_o_c /* synthesis is_clock=1 */ ;   /* synthesis lineinfo="@0(18[13],18[24])"*/
    
    wire feedback_w;
    
    PLL_B u_PLL_B (.REFERENCECLK(ref_clk_i_c), .FEEDBACK(feedback_w), .DYNAMICDELAY7(GND_net), 
          .DYNAMICDELAY6(GND_net), .DYNAMICDELAY5(GND_net), .DYNAMICDELAY4(GND_net), 
          .DYNAMICDELAY3(GND_net), .DYNAMICDELAY2(GND_net), .DYNAMICDELAY1(GND_net), 
          .DYNAMICDELAY0(GND_net), .BYPASS(GND_net), .RESET_N(rst_n_i_c), 
          .SCLK(GND_net), .SDI(GND_net), .LATCH(latch_i_c), .INTFBOUT(feedback_w), 
          .OUTCORE(outcore_o_c), .OUTGLOBAL(outglobal_o_c)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=23, LSE_LCOL=5, LSE_RCOL=18, LSE_LLINE=35, LSE_RLINE=48 */ ;   /* synthesis lineinfo="@0(35[5],48[18])"*/
    defparam u_PLL_B.FEEDBACK_PATH = "SIMPLE";
    defparam u_PLL_B.DELAY_ADJUSTMENT_MODE_FEEDBACK = "FIXED";
    defparam u_PLL_B.FDA_FEEDBACK = "0";
    defparam u_PLL_B.DELAY_ADJUSTMENT_MODE_RELATIVE = "FIXED";
    defparam u_PLL_B.FDA_RELATIVE = "0";
    defparam u_PLL_B.SHIFTREG_DIV_MODE = "0";
    defparam u_PLL_B.PLLOUT_SELECT_PORTA = "GENCLK";
    defparam u_PLL_B.PLLOUT_SELECT_PORTB = "GENCLK";
    defparam u_PLL_B.DIVR = "0";
    defparam u_PLL_B.DIVF = "11";
    defparam u_PLL_B.DIVQ = "4";
    defparam u_PLL_B.FILTER_RANGE = "4";
    defparam u_PLL_B.EXTERNAL_DIVIDE_FACTOR = "NONE";
    defparam u_PLL_B.ENABLE_ICEGATE_PORTA = "1";
    defparam u_PLL_B.ENABLE_ICEGATE_PORTB = "0";
    defparam u_PLL_B.TEST_MODE = "0";
    defparam u_PLL_B.FREQUENCY_PIN_REFERENCECLK = "48.000000";
    
endmodule
