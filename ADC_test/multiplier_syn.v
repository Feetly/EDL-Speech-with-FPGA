// megafunction wizard: %LPM_MULT%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: altsquare 

// ============================================================
// File Name: multiplier.v
// Megafunction Name(s):
// 			altsquare
//
// Simulation Library Files(s):
// 			altera_mf
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 20.1.1 Build 720 11/11/2020 SJ Lite Edition
// ************************************************************


//Copyright (C) 2020  Intel Corporation. All rights reserved.
//Your use of Intel Corporation's design tools, logic functions 
//and other software and tools, and any partner logic 
//functions, and any output files from any of the foregoing 
//(including device programming or simulation files), and any 
//associated documentation or information are expressly subject 
//to the terms and conditions of the Intel Program License 
//Subscription Agreement, the Intel Quartus Prime License Agreement,
//the Intel FPGA IP License Agreement, or other applicable license
//agreement, including, without limitation, that your use is for
//the sole purpose of programming logic devices manufactured by
//Intel and sold by Intel or its authorized distributors.  Please
//refer to the applicable agreement for further details, at
//https://fpgasoftware.intel.com/eula.


//altsquare DATA_WIDTH=8 DEVICE_FAMILY="Cyclone V" PIPELINE=1 REPRESENTATION="UNSIGNED" RESULT_ALIGNMENT="MSB" RESULT_WIDTH=16 clock data result
//VERSION_BEGIN 20.1 cbx_altsquare 2020:11:11:17:06:45:SJ cbx_cycloneii 2020:11:11:17:06:45:SJ cbx_lpm_add_sub 2020:11:11:17:06:45:SJ cbx_mgl 2020:11:11:17:08:38:SJ cbx_nadder 2020:11:11:17:06:46:SJ cbx_padd 2020:11:11:17:06:46:SJ cbx_stratix 2020:11:11:17:06:46:SJ cbx_stratixii 2020:11:11:17:06:46:SJ cbx_util_mgl 2020:11:11:17:06:46:SJ  VERSION_END
// synthesis VERILOG_INPUT_VERSION VERILOG_2001
// altera message_off 10463



//adder DEVICE_FAMILY="Cyclone V" WIDTH=14 dataa datab datac result
//VERSION_BEGIN 20.1 cbx_mgl 2020:11:11:17:08:38:SJ cbx_stratixii 2020:11:11:17:06:46:SJ cbx_util_mgl 2020:11:11:17:06:46:SJ  VERSION_END


//adder DEVICE_FAMILY="Cyclone V" WIDTH=6 dataa datab datac result
//VERSION_BEGIN 20.1 cbx_mgl 2020:11:11:17:08:38:SJ cbx_stratixii 2020:11:11:17:06:46:SJ cbx_util_mgl 2020:11:11:17:06:46:SJ  VERSION_END

//synthesis_resources = lut 40 reg 34 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  multiplier_altsquare
	( 
	clock,
	data,
	result) /* synthesis synthesis_clearbox=1 */;
	input   clock;
	input   [7:0]  data;
	output   [15:0]  result;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri1   clock;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	wire	[13:0]	wire_add35_result;
	wire	[5:0]	wire_add40_result;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe10;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe11;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe12;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe13;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe14;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe15;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe16;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe17;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe18;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe19;
	reg	[0:0]	dffe1a0;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe2;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe20;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe21;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe22;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe23;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe24;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe25;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe26;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe27;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe28;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe29;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe3;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe30;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe31;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe32;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe33;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe34;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe4;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe5;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe6;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe7;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe8;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=LOW"} *)
	reg	dffe9;
	wire  [13:0]   wire_sft36a_in;
	wire  [13:0]   wire_sft36a_out;
	wire  [13:0]   wire_sft37a_in;
	wire  [13:0]   wire_sft37a_out;
	wire  [13:0]   wire_sft38a_in;
	wire  [13:0]   wire_sft38a_out;
	wire  [13:0]   wire_sft39a_in;
	wire  [13:0]   wire_sft39a_out;
	wire  [5:0]   wire_sft41a_in;
	wire  [5:0]   wire_sft41a_out;
	wire  [5:0]   wire_sft42a_in;
	wire  [5:0]   wire_sft42a_out;
	wire  [5:0]   wire_sft43a_in;
	wire  [5:0]   wire_sft43a_out;
	wire  [5:0]   wire_sft44a_in;
	wire  [5:0]   wire_sft44a_out;
	wire aclr;
	wire ena;
	wire  [0:0]  w100w;
	wire  [0:0]  w103w;
	wire  [0:0]  w108w;
	wire  [0:0]  w112w;
	wire  [0:0]  w116w;
	wire  [0:0]  w120w;
	wire  [0:0]  w124w;
	wire  [0:0]  w127w;
	wire  [0:0]  w12w;
	wire  [0:0]  w130w;
	wire  [0:0]  w133w;
	wire  [0:0]  w138w;
	wire  [0:0]  w142w;
	wire  w148w;
	wire  [0:0]  w16w;
	wire  [0:0]  w20w;
	wire  [16:0]  w223w;
	wire  [0:0]  w25w;
	wire  [0:0]  w29w;
	wire  [0:0]  w33w;
	wire  [0:0]  w36w;
	wire  [0:0]  w41w;
	wire  [0:0]  w45w;
	wire  [0:0]  w49w;
	wire  [0:0]  w52w;
	wire  [0:0]  w55w;
	wire  [0:0]  w60w;
	wire  [0:0]  w64w;
	wire  [0:0]  w68w;
	wire  [0:0]  w71w;
	wire  [0:0]  w74w;
	wire  [0:0]  w77w;
	wire  [0:0]  w82w;
	wire  [0:0]  w86w;
	wire  [0:0]  w90w;
	wire  [0:0]  w94w;
	wire  [0:0]  w97w;

	assign
		wire_add35_result = wire_sft36a_out + wire_sft37a_out + wire_sft38a_out;
	assign
		wire_add40_result = wire_sft41a_out + wire_sft42a_out + wire_sft43a_out;
	// synopsys translate_off
	initial
		dffe10 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe10 <= 1'b0;
		else if  (ena == 1'b1)   dffe10 <= w41w[0];
	// synopsys translate_off
	initial
		dffe11 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe11 <= 1'b0;
		else if  (ena == 1'b1)   dffe11 <= w52w[0];
	// synopsys translate_off
	initial
		dffe12 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe12 <= 1'b0;
		else if  (ena == 1'b1)   dffe12 <= w68w[0];
	// synopsys translate_off
	initial
		dffe13 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe13 <= 1'b0;
		else if  (ena == 1'b1)   dffe13 <= w45w[0];
	// synopsys translate_off
	initial
		dffe14 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe14 <= 1'b0;
		else if  (ena == 1'b1)   dffe14 <= w55w[0];
	// synopsys translate_off
	initial
		dffe15 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe15 <= 1'b0;
		else if  (ena == 1'b1)   dffe15 <= wire_sft44a_out[0];
	// synopsys translate_off
	initial
		dffe16 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe16 <= 1'b0;
		else if  (ena == 1'b1)   dffe16 <= w60w[0];
	// synopsys translate_off
	initial
		dffe17 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe17 <= 1'b0;
		else if  (ena == 1'b1)   dffe17 <= w74w[0];
	// synopsys translate_off
	initial
		dffe18 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe18 <= 1'b0;
		else if  (ena == 1'b1)   dffe18 <= wire_sft44a_out[1];
	// synopsys translate_off
	initial
		dffe19 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe19 <= 1'b0;
		else if  (ena == 1'b1)   dffe19 <= w64w[0];
	// synopsys translate_off
	initial
		dffe1a0 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe1a0 <= 1'b0;
		else if  (ena == 1'b1)   dffe1a0 <= data[0];
	// synopsys translate_off
	initial
		dffe2 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe2 <= 1'b0;
		else if  (ena == 1'b1)   dffe2 <= w12w[0];
	// synopsys translate_off
	initial
		dffe20 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe20 <= 1'b0;
		else if  (ena == 1'b1)   dffe20 <= w77w[0];
	// synopsys translate_off
	initial
		dffe21 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe21 <= 1'b0;
		else if  (ena == 1'b1)   dffe21 <= wire_sft44a_out[2];
	// synopsys translate_off
	initial
		dffe22 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe22 <= 1'b0;
		else if  (ena == 1'b1)   dffe22 <= w124w[0];
	// synopsys translate_off
	initial
		dffe23 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe23 <= 1'b0;
		else if  (ena == 1'b1)   dffe23 <= w100w[0];
	// synopsys translate_off
	initial
		dffe24 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe24 <= 1'b0;
		else if  (ena == 1'b1)   dffe24 <= wire_sft44a_out[3];
	// synopsys translate_off
	initial
		dffe25 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe25 <= 1'b0;
		else if  (ena == 1'b1)   dffe25 <= w127w[0];
	// synopsys translate_off
	initial
		dffe26 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe26 <= 1'b0;
		else if  (ena == 1'b1)   dffe26 <= w103w[0];
	// synopsys translate_off
	initial
		dffe27 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe27 <= 1'b0;
		else if  (ena == 1'b1)   dffe27 <= wire_sft44a_out[4];
	// synopsys translate_off
	initial
		dffe28 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe28 <= 1'b0;
		else if  (ena == 1'b1)   dffe28 <= w108w[0];
	// synopsys translate_off
	initial
		dffe29 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe29 <= 1'b0;
		else if  (ena == 1'b1)   dffe29 <= w130w[0];
	// synopsys translate_off
	initial
		dffe3 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe3 <= 1'b0;
		else if  (ena == 1'b1)   dffe3 <= w16w[0];
	// synopsys translate_off
	initial
		dffe30 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe30 <= 1'b0;
		else if  (ena == 1'b1)   dffe30 <= wire_sft44a_out[5];
	// synopsys translate_off
	initial
		dffe31 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe31 <= 1'b0;
		else if  (ena == 1'b1)   dffe31 <= w112w[0];
	// synopsys translate_off
	initial
		dffe32 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe32 <= 1'b0;
		else if  (ena == 1'b1)   dffe32 <= w133w[0];
	// synopsys translate_off
	initial
		dffe33 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe33 <= 1'b0;
		else if  (ena == 1'b1)   dffe33 <= w138w[0];
	// synopsys translate_off
	initial
		dffe34 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe34 <= 1'b0;
		else if  (ena == 1'b1)   dffe34 <= w142w[0];
	// synopsys translate_off
	initial
		dffe4 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe4 <= 1'b0;
		else if  (ena == 1'b1)   dffe4 <= w20w[0];
	// synopsys translate_off
	initial
		dffe5 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe5 <= 1'b0;
		else if  (ena == 1'b1)   dffe5 <= w25w[0];
	// synopsys translate_off
	initial
		dffe6 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe6 <= 1'b0;
		else if  (ena == 1'b1)   dffe6 <= w33w[0];
	// synopsys translate_off
	initial
		dffe7 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe7 <= 1'b0;
		else if  (ena == 1'b1)   dffe7 <= w29w[0];
	// synopsys translate_off
	initial
		dffe8 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe8 <= 1'b0;
		else if  (ena == 1'b1)   dffe8 <= w36w[0];
	// synopsys translate_off
	initial
		dffe9 = 0;
	// synopsys translate_on
	always @ ( posedge clock or  posedge aclr)
		if (aclr == 1'b1) dffe9 <= 1'b0;
		else if  (ena == 1'b1)   dffe9 <= w49w[0];
	soft   sft36a_0
	( 
	.in(wire_sft36a_in[0:0]),
	.out(wire_sft36a_out[0:0]));
	soft   sft36a_1
	( 
	.in(wire_sft36a_in[1:1]),
	.out(wire_sft36a_out[1:1]));
	soft   sft36a_2
	( 
	.in(wire_sft36a_in[2:2]),
	.out(wire_sft36a_out[2:2]));
	soft   sft36a_3
	( 
	.in(wire_sft36a_in[3:3]),
	.out(wire_sft36a_out[3:3]));
	soft   sft36a_4
	( 
	.in(wire_sft36a_in[4:4]),
	.out(wire_sft36a_out[4:4]));
	soft   sft36a_5
	( 
	.in(wire_sft36a_in[5:5]),
	.out(wire_sft36a_out[5:5]));
	soft   sft36a_6
	( 
	.in(wire_sft36a_in[6:6]),
	.out(wire_sft36a_out[6:6]));
	soft   sft36a_7
	( 
	.in(wire_sft36a_in[7:7]),
	.out(wire_sft36a_out[7:7]));
	soft   sft36a_8
	( 
	.in(wire_sft36a_in[8:8]),
	.out(wire_sft36a_out[8:8]));
	soft   sft36a_9
	( 
	.in(wire_sft36a_in[9:9]),
	.out(wire_sft36a_out[9:9]));
	soft   sft36a_10
	( 
	.in(wire_sft36a_in[10:10]),
	.out(wire_sft36a_out[10:10]));
	soft   sft36a_11
	( 
	.in(wire_sft36a_in[11:11]),
	.out(wire_sft36a_out[11:11]));
	soft   sft36a_12
	( 
	.in(wire_sft36a_in[12:12]),
	.out(wire_sft36a_out[12:12]));
	soft   sft36a_13
	( 
	.in(wire_sft36a_in[13:13]),
	.out(wire_sft36a_out[13:13]));
	assign
		wire_sft36a_in = {w148w, {dffe34, {dffe33, {dffe31, {dffe28, {dffe25, {dffe22, {dffe19, {dffe16, {dffe13, {dffe10, {dffe7, {dffe5, dffe3}}}}}}}}}}}}};
	soft   sft37a_0
	( 
	.in(wire_sft37a_in[0:0]),
	.out(wire_sft37a_out[0:0]));
	soft   sft37a_1
	( 
	.in(wire_sft37a_in[1:1]),
	.out(wire_sft37a_out[1:1]));
	soft   sft37a_2
	( 
	.in(wire_sft37a_in[2:2]),
	.out(wire_sft37a_out[2:2]));
	soft   sft37a_3
	( 
	.in(wire_sft37a_in[3:3]),
	.out(wire_sft37a_out[3:3]));
	soft   sft37a_4
	( 
	.in(wire_sft37a_in[4:4]),
	.out(wire_sft37a_out[4:4]));
	soft   sft37a_5
	( 
	.in(wire_sft37a_in[5:5]),
	.out(wire_sft37a_out[5:5]));
	soft   sft37a_6
	( 
	.in(wire_sft37a_in[6:6]),
	.out(wire_sft37a_out[6:6]));
	soft   sft37a_7
	( 
	.in(wire_sft37a_in[7:7]),
	.out(wire_sft37a_out[7:7]));
	soft   sft37a_8
	( 
	.in(wire_sft37a_in[8:8]),
	.out(wire_sft37a_out[8:8]));
	soft   sft37a_9
	( 
	.in(wire_sft37a_in[9:9]),
	.out(wire_sft37a_out[9:9]));
	soft   sft37a_10
	( 
	.in(wire_sft37a_in[10:10]),
	.out(wire_sft37a_out[10:10]));
	soft   sft37a_11
	( 
	.in(wire_sft37a_in[11:11]),
	.out(wire_sft37a_out[11:11]));
	soft   sft37a_12
	( 
	.in(wire_sft37a_in[12:12]),
	.out(wire_sft37a_out[12:12]));
	soft   sft37a_13
	( 
	.in(wire_sft37a_in[13:13]),
	.out(wire_sft37a_out[13:13]));
	assign
		wire_sft37a_in = {w148w, {w148w, {w148w, {dffe32, {dffe29, {dffe26, {dffe23, {dffe20, {dffe17, {dffe14, {dffe11, {dffe8, {dffe6, dffe4}}}}}}}}}}}}};
	soft   sft38a_0
	( 
	.in(wire_sft38a_in[0:0]),
	.out(wire_sft38a_out[0:0]));
	soft   sft38a_1
	( 
	.in(wire_sft38a_in[1:1]),
	.out(wire_sft38a_out[1:1]));
	soft   sft38a_2
	( 
	.in(wire_sft38a_in[2:2]),
	.out(wire_sft38a_out[2:2]));
	soft   sft38a_3
	( 
	.in(wire_sft38a_in[3:3]),
	.out(wire_sft38a_out[3:3]));
	soft   sft38a_4
	( 
	.in(wire_sft38a_in[4:4]),
	.out(wire_sft38a_out[4:4]));
	soft   sft38a_5
	( 
	.in(wire_sft38a_in[5:5]),
	.out(wire_sft38a_out[5:5]));
	soft   sft38a_6
	( 
	.in(wire_sft38a_in[6:6]),
	.out(wire_sft38a_out[6:6]));
	soft   sft38a_7
	( 
	.in(wire_sft38a_in[7:7]),
	.out(wire_sft38a_out[7:7]));
	soft   sft38a_8
	( 
	.in(wire_sft38a_in[8:8]),
	.out(wire_sft38a_out[8:8]));
	soft   sft38a_9
	( 
	.in(wire_sft38a_in[9:9]),
	.out(wire_sft38a_out[9:9]));
	soft   sft38a_10
	( 
	.in(wire_sft38a_in[10:10]),
	.out(wire_sft38a_out[10:10]));
	soft   sft38a_11
	( 
	.in(wire_sft38a_in[11:11]),
	.out(wire_sft38a_out[11:11]));
	soft   sft38a_12
	( 
	.in(wire_sft38a_in[12:12]),
	.out(wire_sft38a_out[12:12]));
	soft   sft38a_13
	( 
	.in(wire_sft38a_in[13:13]),
	.out(wire_sft38a_out[13:13]));
	assign
		wire_sft38a_in = {w148w, {w148w, {w148w, {w148w, {dffe30, {dffe27, {dffe24, {dffe21, {dffe18, {dffe15, {dffe12, {dffe9, {2{w148w}}}}}}}}}}}}}};
	soft   sft39a_0
	( 
	.in(wire_sft39a_in[0:0]),
	.out(wire_sft39a_out[0:0]));
	soft   sft39a_1
	( 
	.in(wire_sft39a_in[1:1]),
	.out(wire_sft39a_out[1:1]));
	soft   sft39a_2
	( 
	.in(wire_sft39a_in[2:2]),
	.out(wire_sft39a_out[2:2]));
	soft   sft39a_3
	( 
	.in(wire_sft39a_in[3:3]),
	.out(wire_sft39a_out[3:3]));
	soft   sft39a_4
	( 
	.in(wire_sft39a_in[4:4]),
	.out(wire_sft39a_out[4:4]));
	soft   sft39a_5
	( 
	.in(wire_sft39a_in[5:5]),
	.out(wire_sft39a_out[5:5]));
	soft   sft39a_6
	( 
	.in(wire_sft39a_in[6:6]),
	.out(wire_sft39a_out[6:6]));
	soft   sft39a_7
	( 
	.in(wire_sft39a_in[7:7]),
	.out(wire_sft39a_out[7:7]));
	soft   sft39a_8
	( 
	.in(wire_sft39a_in[8:8]),
	.out(wire_sft39a_out[8:8]));
	soft   sft39a_9
	( 
	.in(wire_sft39a_in[9:9]),
	.out(wire_sft39a_out[9:9]));
	soft   sft39a_10
	( 
	.in(wire_sft39a_in[10:10]),
	.out(wire_sft39a_out[10:10]));
	soft   sft39a_11
	( 
	.in(wire_sft39a_in[11:11]),
	.out(wire_sft39a_out[11:11]));
	soft   sft39a_12
	( 
	.in(wire_sft39a_in[12:12]),
	.out(wire_sft39a_out[12:12]));
	soft   sft39a_13
	( 
	.in(wire_sft39a_in[13:13]),
	.out(wire_sft39a_out[13:13]));
	assign
		wire_sft39a_in = wire_add35_result;
	soft   sft41a_0
	( 
	.in(wire_sft41a_in[0:0]),
	.out(wire_sft41a_out[0:0]));
	soft   sft41a_1
	( 
	.in(wire_sft41a_in[1:1]),
	.out(wire_sft41a_out[1:1]));
	soft   sft41a_2
	( 
	.in(wire_sft41a_in[2:2]),
	.out(wire_sft41a_out[2:2]));
	soft   sft41a_3
	( 
	.in(wire_sft41a_in[3:3]),
	.out(wire_sft41a_out[3:3]));
	soft   sft41a_4
	( 
	.in(wire_sft41a_in[4:4]),
	.out(wire_sft41a_out[4:4]));
	soft   sft41a_5
	( 
	.in(wire_sft41a_in[5:5]),
	.out(wire_sft41a_out[5:5]));
	assign
		wire_sft41a_in = {w148w, {w86w[0], {w82w[0], {w120w[0], {w116w[0], w90w[0]}}}}};
	soft   sft42a_0
	( 
	.in(wire_sft42a_in[0:0]),
	.out(wire_sft42a_out[0:0]));
	soft   sft42a_1
	( 
	.in(wire_sft42a_in[1:1]),
	.out(wire_sft42a_out[1:1]));
	soft   sft42a_2
	( 
	.in(wire_sft42a_in[2:2]),
	.out(wire_sft42a_out[2:2]));
	soft   sft42a_3
	( 
	.in(wire_sft42a_in[3:3]),
	.out(wire_sft42a_out[3:3]));
	soft   sft42a_4
	( 
	.in(wire_sft42a_in[4:4]),
	.out(wire_sft42a_out[4:4]));
	soft   sft42a_5
	( 
	.in(wire_sft42a_in[5:5]),
	.out(wire_sft42a_out[5:5]));
	assign
		wire_sft42a_in = {w148w, {w148w, {w148w, {w97w[0], {w94w[0], w71w[0]}}}}};
	soft   sft43a_0
	( 
	.in(wire_sft43a_in[0:0]),
	.out(wire_sft43a_out[0:0]));
	soft   sft43a_1
	( 
	.in(wire_sft43a_in[1:1]),
	.out(wire_sft43a_out[1:1]));
	soft   sft43a_2
	( 
	.in(wire_sft43a_in[2:2]),
	.out(wire_sft43a_out[2:2]));
	soft   sft43a_3
	( 
	.in(wire_sft43a_in[3:3]),
	.out(wire_sft43a_out[3:3]));
	soft   sft43a_4
	( 
	.in(wire_sft43a_in[4:4]),
	.out(wire_sft43a_out[4:4]));
	soft   sft43a_5
	( 
	.in(wire_sft43a_in[5:5]),
	.out(wire_sft43a_out[5:5]));
	assign
		wire_sft43a_in = {w148w, {w148w, {w148w, {w148w, {2{w148w}}}}}};
	soft   sft44a_0
	( 
	.in(wire_sft44a_in[0:0]),
	.out(wire_sft44a_out[0:0]));
	soft   sft44a_1
	( 
	.in(wire_sft44a_in[1:1]),
	.out(wire_sft44a_out[1:1]));
	soft   sft44a_2
	( 
	.in(wire_sft44a_in[2:2]),
	.out(wire_sft44a_out[2:2]));
	soft   sft44a_3
	( 
	.in(wire_sft44a_in[3:3]),
	.out(wire_sft44a_out[3:3]));
	soft   sft44a_4
	( 
	.in(wire_sft44a_in[4:4]),
	.out(wire_sft44a_out[4:4]));
	soft   sft44a_5
	( 
	.in(wire_sft44a_in[5:5]),
	.out(wire_sft44a_out[5:5]));
	assign
		wire_sft44a_in = wire_add40_result;
	assign
		aclr = 1'b0,
		ena = 1'b1,
		result = {w223w[15:2], 1'b0, dffe1a0},
		w100w = (data[6] & data[3]),
		w103w = (data[6] & data[4]),
		w108w = (data[6] & (~ data[5])),
		w112w = (data[6] & data[5]),
		w116w = (data[7] & data[0]),
		w120w = (data[7] & data[1]),
		w124w = (data[7] & data[2]),
		w127w = (data[7] & data[3]),
		w12w = (data[1] & (~ data[0])),
		w130w = (data[7] & data[4]),
		w133w = (data[7] & data[5]),
		w138w = (data[7] & (~ data[6])),
		w142w = (data[7] & data[6]),
		w148w = 1'b0,
		w16w = (data[1] & data[0]),
		w20w = (data[2] & data[0]),
		w223w = {wire_sft39a_out[13:12], wire_sft39a_out[11:10], wire_sft39a_out[9:8], wire_sft39a_out[7:6], wire_sft39a_out[5:4], wire_sft39a_out[3:2], wire_sft39a_out[1:0], dffe2, {2{w148w}}},
		w25w = (data[2] & (~ data[1])),
		w29w = (data[2] & data[1]),
		w33w = (data[3] & data[0]),
		w36w = (data[3] & data[1]),
		w41w = (data[3] & (~ data[2])),
		w45w = (data[3] & data[2]),
		w49w = (data[4] & data[0]),
		w52w = (data[4] & data[1]),
		w55w = (data[4] & data[2]),
		w60w = (data[4] & (~ data[3])),
		w64w = (data[4] & data[3]),
		w68w = (data[5] & data[0]),
		w71w = (data[5] & data[1]),
		w74w = (data[5] & data[2]),
		w77w = (data[5] & data[3]),
		w82w = (data[5] & (~ data[4])),
		w86w = (data[5] & data[4]),
		w90w = (data[6] & data[0]),
		w94w = (data[6] & data[1]),
		w97w = (data[6] & data[2]);
endmodule //multiplier_altsquare
//VALID FILE


// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module multiplier (
	clock,
	dataa,
	result)/* synthesis synthesis_clearbox = 1 */;

	input	  clock;
	input	[7:0]  dataa;
	output	[15:0]  result;

	wire [15:0] sub_wire0;
	wire [15:0] result = sub_wire0[15:0];

	multiplier_altsquare	multiplier_altsquare_component (
				.clock (clock),
				.data (dataa),
				.result (sub_wire0));

endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: AutoSizeResult NUMERIC "0"
// Retrieval info: PRIVATE: B_isConstant NUMERIC "0"
// Retrieval info: PRIVATE: ConstantB NUMERIC "0"
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone V"
// Retrieval info: PRIVATE: LPM_PIPELINE NUMERIC "1"
// Retrieval info: PRIVATE: Latency NUMERIC "1"
// Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "1"
// Retrieval info: PRIVATE: SignedMult NUMERIC "0"
// Retrieval info: PRIVATE: USE_MULT NUMERIC "0"
// Retrieval info: PRIVATE: ValidConstant NUMERIC "0"
// Retrieval info: PRIVATE: WidthA NUMERIC "8"
// Retrieval info: PRIVATE: WidthB NUMERIC "8"
// Retrieval info: PRIVATE: WidthP NUMERIC "16"
// Retrieval info: PRIVATE: aclr NUMERIC "0"
// Retrieval info: PRIVATE: clken NUMERIC "0"
// Retrieval info: PRIVATE: new_diagram STRING "1"
// Retrieval info: PRIVATE: optimize NUMERIC "0"
// Retrieval info: LIBRARY: altera_mf altera_mf.altera_mf_components.all
// Retrieval info: CONSTANT: DATA_WIDTH NUMERIC "8"
// Retrieval info: CONSTANT: LPM_TYPE STRING "ALTSQUARE"
// Retrieval info: CONSTANT: PIPELINE NUMERIC "1"
// Retrieval info: CONSTANT: REPRESENTATION STRING "UNSIGNED"
// Retrieval info: CONSTANT: RESULT_ALIGNMENT STRING "MSB"
// Retrieval info: CONSTANT: RESULT_WIDTH NUMERIC "16"
// Retrieval info: USED_PORT: clock 0 0 0 0 INPUT NODEFVAL "clock"
// Retrieval info: USED_PORT: dataa 0 0 8 0 INPUT NODEFVAL "dataa[7..0]"
// Retrieval info: USED_PORT: result 0 0 16 0 OUTPUT NODEFVAL "result[15..0]"
// Retrieval info: CONNECT: @clock 0 0 0 0 clock 0 0 0 0
// Retrieval info: CONNECT: @data 0 0 8 0 dataa 0 0 8 0
// Retrieval info: CONNECT: result 0 0 16 0 @result 0 0 16 0
// Retrieval info: GEN_FILE: TYPE_NORMAL multiplier.vhd TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL multiplier.inc FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL multiplier.cmp TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL multiplier.bsf TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL multiplier_inst.vhd TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL multiplier_syn.v TRUE
// Retrieval info: LIB_FILE: altera_mf