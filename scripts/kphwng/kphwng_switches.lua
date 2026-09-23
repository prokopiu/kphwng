--[[
*****************************************************************************************
* Program Script Name	:	kphwng_switches - Load aircraft specific definitions and define commands
* Author Name			:	Kosta Prokopiu
*
*   Revisions:
*   -- DATE --	--- REV NO ---		--- DESCRIPTION ---
*   2026-09-17	0.01				Start of Dev
*
*****************************************************************************************
--]]

--*************************************************************************************--
--** 					            GLOBAL VARIABLES                				 **--
--*************************************************************************************--

--*************************************************************************************--
--** 					            LOCAL VARIABLES                 				 **--
--*************************************************************************************--

print("Loading aircraft specific definitions: "..glbKPHW_aircraft)

-- load aircraft specific definitions
dofile(glbLovePath.."kphwng_switches_"..glbKPHW_aircraft..".lua")

--*************************************************************************************--
--** 				              LIGHT SWITCHES		              			     **--
--*************************************************************************************--

-- Beacon Lights

cmd_beacon_switch_on  =	create_command("kp/xsp/lights/beacon_switch_on", 			"Beacon Lights On", 		hndlcmd_beacon_switch_on)
cmd_beacon_switch_off = create_command("kp/xsp/lights/beacon_switch_off", 			"Beacon Lights Off", 		hndlcmd_beacon_switch_off)
cmd_beacon_switch_tgl = create_command("kp/xsp/lights/beacon_switch_tgl", 			"Beacon Lights Toggle", 	hndlcmd_beacon_switch_tgl)

-- Strobe Lights

cmd_strobe_switch_on  =	create_command("kp/xsp/lights/strobe_switch_on", 			"Strobe Lights On", 		hndlcmd_strobe_switch_on)
cmd_strobe_switch_off = create_command("kp/xsp/lights/strobe_switch_off", 			"Strobe Lights Off", 		hndlcmd_strobe_switch_off)
cmd_strobe_switch_tgl = create_command("kp/xsp/lights/strobe_switch_tgl", 			"Strobe Lights Toggle", 	hndlcmd_strobe_switch_tgl)

-- Taxi Lights

cmd_taxi_switch_on  =	create_command("kp/xsp/lights/taxi_switch_on", 				"Taxi Lights On", 			hndlcmd_taxi_switch_on)
cmd_taxi_switch_off = 	create_command("kp/xsp/lights/taxi_switch_off", 			"Taxi Lights Off", 			hndlcmd_taxi_switch_off)
cmd_taxi_switch_tgl = 	create_command("kp/xsp/lights/taxi_switch_tgl", 			"Taxi Lights Toggle", 		hndlcmd_taxi_switch_tgl)

-- Position Lights

cmd_position_switch_on  =	create_command("kp/xsp/lights/position_switch_on", 		"Position Lights On", 		hndlcmd_position_switch_on)
cmd_position_switch_off = 	create_command("kp/xsp/lights/position_switch_off", 	"Position Lights Off", 		hndlcmd_position_switch_off)
cmd_position_switch_tgl = 	create_command("kp/xsp/lights/position_switch_tgl", 	"Position Lights Toggle", 	hndlcmd_position_switch_tgl)

-- Landing Lights up to 4

cmd_landing_switch_on  =	create_command("kp/xsp/lights/landing_switch_on", 		"Landing Lights On", 		hndlcmd_landing_switch_on)
cmd_landing_switch_off = 	create_command("kp/xsp/lights/landing_switch_off", 		"Landing Lights Off", 		hndlcmd_landing_switch_off)
cmd_landing_switch_tgl = 	create_command("kp/xsp/lights/landing_switch_tgl", 		"Landing Lights Toggle", 	hndlcmd_landing_switch_tgl)

-- optional wing lights

cmd_wing_switch_on  =	create_command("kp/xsp/lights/wing_switch_on", 				"Wing Lights On", 			hndlcmd_wing_switch_on)
cmd_wing_switch_off = 	create_command("kp/xsp/lights/wing_switch_off", 			"Wing Lights Off", 			hndlcmd_wing_switch_off)
cmd_wing_switch_tgl = 	create_command("kp/xsp/lights/wing_switch_tgl", 			"Wing Lights Toggle", 		hndlcmd_wing_switch_tgl)

-- optional runway lights

cmd_rwyto_switch_on  =	create_command("kp/xsp/lights/rwyto_switch_on", 			"Runway Lights On", 		hndlcmd_rwy_switch_on)
cmd_rwyto_switch_off = 	create_command("kp/xsp/lights/rwyto_switch_off", 			"Runway Lights Off", 		hndlcmd_rwy_switch_off)
cmd_rwyto_switch_tgl = 	create_command("kp/xsp/lights/rwyto_switch_tgl", 			"Runway Lights Toggle", 	hndlcmd_rwy_switch_tgl)

-- optional logo lights

cmd_logo_switch_on  =	create_command("kp/xsp/lights/logo_switch_on", 				"Logo Lights On", 			hndlcmd_logo_switch_on)
cmd_logo_switch_off = 	create_command("kp/xsp/lights/logo_switch_off", 			"Logo Lights Off", 			hndlcmd_logo_switch_off)
cmd_logo_switch_tgl = 	create_command("kp/xsp/lights/logo_switch_tgl", 			"Logo Lights Toggle", 		hndlcmd_logo_switch_tgl)

-- optional wheel lights

cmd_wheel_switch_on  =	create_command("kp/xsp/lights/wheel_switch_on", 			"Wheel Lights On", 			hndlcmd_wheel_switch_on)
cmd_wheel_switch_off = 	create_command("kp/xsp/lights/wheel_switch_off", 			"Wheel Lights Off", 		hndlcmd_wheel_switch_off)
cmd_wheel_switch_tgl = 	create_command("kp/xsp/lights/wheel_switch_tgl", 			"Wheel Lights Toggle", 		hndlcmd_wheel_switch_tgl)

-- ---------- internal Lights

-- optional dome lights

cmd_dome_switch_on  =	create_command("kp/xsp/lights/dome_switch_on", 				"Dome Lights On", 			hndlcmd_dome_switch_on)
cmd_dome_switch_off = 	create_command("kp/xsp/lights/dome_switch_off", 			"Dome Lights Off", 			hndlcmd_dome_switch_off)
cmd_dome_switch_tgl = 	create_command("kp/xsp/lights/dome_switch_tgl", 			"Dome Lights Toggle", 		hndlcmd_dome_switch_tgl)

-- Panel Lights

cmd_panel_switch_on  =	create_command("kp/xsp/lights/panel_on", 					"Panel Lights On", 			hndlcmd_panel_switch_on)
cmd_panel_switch_off = 	create_command("kp/xsp/lights/panel_off", 					"Panel Lights Off", 		hndlcmd_panel_switch_off)
cmd_panel_switch_tgl = 	create_command("kp/xsp/lights/panel_tgl", 					"Panel Lights Toggle", 		hndlcmd_panel_switch_tgl)

-- Instrument Lights

cmd_instr_switch_on  =	create_command("kp/xsp/lights/instruments_on", 				"Instrument Lights On", 	hndlcmd_instr_switch_on)
cmd_instr_switch_off = 	create_command("kp/xsp/lights/instruments_off", 			"Instrument Lights Off", 	hndlcmd_instr_switch_off)
cmd_instr_switch_tgl = 	create_command("kp/xsp/lights/instruments_tgl", 			"Instrument Lights Toggle", hndlcmd_instr_switch_tgl)

--*************************************************************************************--
--** 				              		GENERAL		              			     	 **--
--*************************************************************************************--

-- Parkingbrake

cmd_park_switch_on  =	create_command("kp/xsp/systems/parking_brake_on", 			"Parking Brake On", 		hndlcmd_park_switch_on)
cmd_park_switch_off = 	create_command("kp/xsp/systems/parking_brake_off", 			"Parking Brake Off", 		hndlcmd_park_switch_off)
cmd_park_switch_tgl = 	create_command("kp/xsp/systems/parking_brake_tgl", 			"Parking Brake Toggle", 	hndlcmd_park_switch_tgl)

-- Gear Handle

cmd_gear_switch_down =	create_command("kp/xsp/systems/gears_down", 				"Gears Down", 				hndlcmd_gear_switch_down)
cmd_gear_switch_up = 	create_command("kp/xsp/systems/gears_up", 					"Gears Up", 				hndlcmd_gear_switch_up)
cmd_gear_switch_off = 	create_command("kp/xsp/systems/gears_off", 					"Gears Off", 				hndlcmd_gear_switch_off)

--*************************************************************************************--
--** 				                 DOORS	    		              			     **--
--*************************************************************************************--

cmd_doorl1_switch_tgl = create_command("kp/xsp/systems/door_l1_toggle", 			"Toggle door L1", 			hndlcmd_doorl1_switch_tgl)
cmd_doorl2_switch_tgl = create_command("kp/xsp/systems/door_l2_toggle", 			"Toggle door L2", 			hndlcmd_doorl2_switch_tgl)
cmd_doorr1_switch_tgl = create_command("kp/xsp/systems/door_r1_toggle", 			"Toggle door R1", 			hndlcmd_doorr1_switch_tgl)
cmd_doorr2_switch_tgl = create_command("kp/xsp/systems/door_r2_toggle", 			"Toggle door R2", 			hndlcmd_doorr2_switch_tgl)
cmd_doorcf_switch_tgl = create_command("kp/xsp/systems/door_cf_toggle", 			"Toggle door CF", 			hndlcmd_doorcf_switch_tgl)
cmd_doorca_switch_tgl = create_command("kp/xsp/systems/door_ca_toggle", 			"Toggle door CA", 			hndlcmd_doorca_switch_tgl)
		
cmd_doorl1_switch_on = create_command("kp/xsp/systems/door_l1_on", 					"Open door L1", 			hndlcmd_doorl1_switch_on)
cmd_doorl2_switch_on = create_command("kp/xsp/systems/door_l2_on", 					"Open door L2", 			hndlcmd_doorl2_switch_on)
cmd_doorr1_switch_on = create_command("kp/xsp/systems/door_r1_on", 					"Open door R1", 			hndlcmd_doorr1_switch_on)
cmd_doorr2_switch_on = create_command("kp/xsp/systems/door_r2_on", 					"Open door R2", 			hndlcmd_doorr2_switch_on)
cmd_doorcf_switch_on = create_command("kp/xsp/systems/door_cf_on", 					"Open door CF", 			hndlcmd_doorcf_switch_on)
cmd_doorca_switch_on = create_command("kp/xsp/systems/door_ca_on", 					"Open door CA", 			hndlcmd_doorca_switch_on)
		
cmd_doorl1_switch_off = create_command("kp/xsp/systems/door_l1_off", 				"Close door L1", 			hndlcmd_doorl1_switch_off)
cmd_doorl2_switch_off = create_command("kp/xsp/systems/door_l2_off", 				"Close door L2", 			hndlcmd_doorl2_switch_off)
cmd_doorr1_switch_off = create_command("kp/xsp/systems/door_r1_off", 				"Close door R1", 			hndlcmd_doorr1_switch_off)
cmd_doorr2_switch_off = create_command("kp/xsp/systems/door_r2_off", 				"Close door R2", 			hndlcmd_doorr2_switch_off)
cmd_doorcf_switch_off = create_command("kp/xsp/systems/door_cf_off", 				"Close door CF", 			hndlcmd_doorcf_switch_off)
cmd_doorca_switch_off = create_command("kp/xsp/systems/door_ca_off", 				"Close door CA", 			hndlcmd_doorca_switch_off)

--*************************************************************************************--
--** 				              ELECTRIC SWITCHES		              			     **--
--*************************************************************************************--

cmd_bat_switches_on =   create_command("kp/xsp/electric/bat_all_master_on", 		"Battery Master All On", 	hndcmd_batall_switch_on)
cmd_bat_switches_off =  create_command("kp/xsp/electric/bat_all_master_off", 		"Battery Master All On", 	hndcmd_batall_switch_off)
cmd_bat_switches_tgl =  create_command("kp/xsp/electric/bat_all_master_tgl", 		"Battery Master All On", 	hndcmd_batall_switch_tgl)

cmd_altn_switches_on =  create_command("kp/xsp/electric/alt_all_on", 				"Alternators On", 			hndcmd_altn_switch_on)
cmd_altn_switches_off = create_command("kp/xsp/electric/alt_all_off", 				"Alternators On", 			hndcmd_altn_switch_off)
cmd_altn_switches_tgl = create_command("kp/xsp/electric/alt_all_tgl", 				"Alternators On", 			hndcmd_altn_switch_tgl)
	
cmd_avionic1_switch_on =  create_command("kp/xsp/electric/avionics_on",				"Avionics 1 On", 			hndcmd_avionic1_switch_on)
cmd_avionic1_switch_off = create_command("kp/xsp/electric/avionics_off", 			"Avionics 1 On", 			hndcmd_avionic1_switch_off)
cmd_avionic1_switch_tgl = create_command("kp/xsp/electric/avionics_tgl", 			"Avionics 1 On", 			hndcmd_avionic1_switch_tgl)

cmd_avionic2_switch_on =  create_command("kp/xsp/electric/avionics2_on",			"Avionics 2 On", 			hndcmd_avionic2_switch_on)
cmd_avionic2_switch_off = create_command("kp/xsp/electric/avionics2_off", 			"Avionics 2 On", 			hndcmd_avionic2_switch_off)
cmd_avionic2_switch_tgl = create_command("kp/xsp/electric/avionics2_tgl", 			"Avionics 2 On", 			hndcmd_avionic2_switch_tgl)

--*************************************************************************************--
--** 				              FLIGHT CONTROLS		              			     **--
--*************************************************************************************--

cmd_flaps_down =  		create_command("kp/xsp/controls/flaps_down",				"Flaps 1 Down", 			hndcmd_flaps_down)
cmd_flaps_up =  		create_command("kp/xsp/controls/flaps_up",					"Flaps 1 Up", 				hndcmd_flaps_up)

cmd_reset_ail_trim	= 	create_command("kp/xsp/controls/aileron_trim_center",		"Aileron Trim Center", 		hndcmd_ail_trim_reset)
cmd_reset_rud_trim	= 	create_command("kp/xsp/controls/rudder_trim_center",		"Rudder Trim Center", 		hndcmd_rud_trim_reset)

-- create_command("kp/xsp/controls/pitch_trim_up",		"Pitch Trim Up","sysControls.pitchTrimSwitch:actuate(sysControls.trimUp)","","")
-- create_command("kp/xsp/controls/pitch_trim_down",	"Pitch Trim Down","sysControls.pitchTrimSwitch:actuate(sysControls.trimDown)","","")
-- create_command("kp/xsp/controls/pitch_trim_up_run",	"Pitch Trim Up Run","sysControls.pitchTrimUpRepeat:actuate(1)","","")
-- create_command("kp/xsp/controls/pitch_trim_up_stop",	"Pitch Trim Up Stop","sysControls.pitchTrimUpRepeat:actuate(0)","","")
-- create_command("kp/xsp/controls/pitch_trim_dn_run",	"Pitch Trim Down Run","sysControls.pitchTrimDownRepeat:actuate(1)","","")
-- create_command("kp/xsp/controls/pitch_trim_dn_stop",	"Pitch Trim Down Stop","sysControls.pitchTrimDownRepeat:actuate(0)","","")

-- create_command("kp/xsp/controls/rudder_trim_left",	"Rudder Trim Left","sysControls.rudderTrimSwitch:actuate(sysControls.trimLeft)", "sysControls.rudderTrimSwitch:actuate(sysControls.trimLeft)", "")
-- create_command("kp/xsp/controls/rudder_trim_right",	"Rudder Trim Right","sysControls.rudderTrimSwitch:actuate(sysControls.trimRight)", "sysControls.rudderTrimSwitch:actuate(sysControls.trimRight)", "")

-- create_command("kp/xsp/controls/aileron_trim_left",	"Aileron Trim Left","sysControls.aileronTrimSwitch:actuate(sysControls.trimLeft)", "sysControls.rudderTrimSwitch:actuate(sysControls.trimRight)", "")
-- create_command("kp/xsp/controls/aileron_trim_right",	"Aileron Trim Right","sysControls.aileronTrimSwitch:actuate(sysControls.trimRight)", 

--*************************************************************************************--
--** 				              ENGINE CONTROLS		              			     **--
--*************************************************************************************--

cmd_magneto1_off	= 	create_command("kp/xsp/engines/magneto1_off",		"Magneto 1 Off", 		hndcmd_magneto1_off)
cmd_magneto1_left	= 	create_command("kp/xsp/engines/magneto1_left",		"Magneto 1 Left", 		hndcmd_magneto1_left)
cmd_magneto1_right	= 	create_command("kp/xsp/engines/magneto1_right",		"Magneto 1 Right", 		hndcmd_magneto1_right)
cmd_magneto1_both	= 	create_command("kp/xsp/engines/magneto1_both",		"Magneto 1 Both", 		hndcmd_magneto1_both)

-- create_command("kp/xsp/engines/magnetos_start_run",	"Magnetos Start Run", "sysEngines.magnetoStartOn:actuate(1)", "", "")
-- create_command("kp/xsp/engines/magnetos_start_end",	"Magnetos Start End", "sysEngines.magnetoStartStop:actuate(1)", "", "")

-- create_command("kp/xsp/engines/reverse_all_on",		"Reverse Thrust 1 On", "sysEngines.reverserGroup:actuate(modeOn)", "", "")
-- create_command("kp/xsp/engines/reverse_all_off",		"Reverse Thrust 1 Off", "sysEngines.reverserGroup:actuate(modeOff)", "", "")

--*************************************************************************************--
--** 				              FUEL CONTROLS		    	          			     **--
--*************************************************************************************--

cmd_fuel_pumps_on	= 	create_command("kp/xsp/fuel/pumps_on",				"Fuel Pumps On", 		hndcmd_fuel_pumps_on)
cmd_fuel_pumps_off	= 	create_command("kp/xsp/fuel/pumps_off",				"Fuel Pumps Off", 		hndcmd_fuel_pumps_off)
cmd_fuel_pumps_tgl	= 	create_command("kp/xsp/fuel/pumps_tgl",				"Fuel Pumps Tgl", 		hndcmd_fuel_pumps_tgl)

-- create_command("kp/xsp/fuel/pumps_on",				"Fuel Pumps On", "sysFuel.allFuelPumpGroup:actuate(modeOn)","","")
-- create_command("kp/xsp/fuel/pumps_off",				"Fuel Pumps Off", "sysFuel.allFuelPumpGroup:actuate(modeOff)","","")
-- create_command("kp/xsp/fuel/pumps_tgl",				"Fuel Pumps Toggle", "sysFuel.allFuelPumpGroup:actuate(modeToggle)","","")

--*************************************************************************************--
--** 				              AUTOPILOT		    		          			     **--
--*************************************************************************************--


-- create_command("kp/xsp/autopilot/both_fd_on",		"All FDs On", 		"ng_execute_actions('#flightdirs','on',nil)", "", "")
-- create_command("kp/xsp/autopilot/both_fd_off",		"All FDs Off", 		"ng_execute_actions('#flightdirs','off',nil)", "", "")
-- create_command("kp/xsp/autopilot/both_fd_tgl",		"All FDs Toggle", 	"ng_execute_actions('#flightdirs','tgl',nil)", "", "")

-- create_command("kp/xsp/autopilot/fd1_on",			"All FDs On", 		"ng_execute_actions('flightdir1','on',nil)", "", "")
-- create_command("kp/xsp/autopilot/fd1_off",			"All FDs Off", 		"ng_execute_actions('flightdir1','off',nil)", "", "")
-- create_command("kp/xsp/autopilot/fd1_tgl",			"All FDs Toggle", 	"ng_execute_actions('flightdir1','tgl',nil)", "", "")

-- create_command("kp/xsp/autopilot/fd2_on",			"All FDs On", 		"ng_execute_actions('flightdir2','on',nil)", "", "")
-- create_command("kp/xsp/autopilot/fd2_off",			"All FDs Off", 		"ng_execute_actions('flightdir2','off',nil)", "", "")
-- create_command("kp/xsp/autopilot/fd2_tgl",			"All FDs Toggle", 	"ng_execute_actions('flightdir2','tgl',nil)", "", "")

-- create_command("kp/xsp/autopilot/ap_tgl",			"Toggle A/P 1", 	"ng_execute_actions('ap1','tgl',nil)", "", "")
-- create_command("kp/xsp/autopilot/ap2_tgl",			"Toggle A/P 2", 	"ng_execute_actions('ap2','tgl',nil)", "", "")
-- create_command("kp/xsp/autopilot/alt_tgl",			"Toggle Alt Hold", 	"ng_execute_actions('althold','tgl',nil)","","")
-- create_command("kp/xsp/autopilot/hdg_tgl",			"Toggle Hdg Select", "ng_execute_actions('hdghold','tgl',nil)","","")
-- create_command("kp/xsp/autopilot/nav_tgl",			"Toggle Nav Mode", 	"ng_execute_actions('navhold','tgl',nil)","","")
-- create_command("kp/xsp/autopilot/app_tgl",			"Toggle Approach", 	"ng_execute_actions('approach','tgl',nil)","","")
-- create_command("kp/xsp/autopilot/vs_tgl",			"Toggle Vert Speed", "ng_execute_actions('vspmode','tgl',nil)","","")
-- create_command("kp/xsp/autopilot/ias_tgl",			"Toggle IAS/Speed mode", "ng_execute_actions('spdmode','tgl',nil)","","")

-- create_command("kp/xsp/autopilot/at_tgl",			"A/T Tgl", "ng_execute_actions('autothrottle','tgl',nil)","","")
-- create_command("kp/xsp/autopilot/at_arm",			"A/T Arm", "ng_execute_actions('autothrottle','on',nil)","","")
-- create_command("kp/xsp/autopilot/at_off",			"A/T OFF", "ng_execute_actions('autothrottle','off',nil)","","")

-- create_command("kp/xsp/autopilot/toga_press",		"Press Left TOGA", "ng_execute_actions('toga','tgl',nil)","","")

-- create_command("kp/xsp/autopilot/crs1_dn",			"CRS 1 decrease", "ng_execute_actions('crs1','dn',nil)","","")
-- create_command("kp/xsp/autopilot/crs1_up",			"CRS 1 increase", "ng_execute_actions('crs1','up',nil)","","")
-- create_command("kp/xsp/autopilot/crs2_dn",			"CRS 2 decrease", "ng_execute_actions('crs2','dn',nil)","","")
-- create_command("kp/xsp/autopilot/crs2_up",			"CRS 2 increase", "ng_execute_actions('crs2','up',nil)","","")

-- create_command("kp/xsp/autopilot/spd_dn",			"Speed decrease", "ng_execute_actions('speedsel','dn',nil)","","")
-- create_command("kp/xsp/autopilot/spd_up",			"Speed increase", "ng_execute_actions('speedsel','up',nil)","","")

-- create_command("kp/xsp/autopilot/hdg_dn",			"Heading decrease", "ng_execute_actions('hdgsel','dn',nil)","","")
-- create_command("kp/xsp/autopilot/hdg_up",			"Heading increase", "ng_execute_actions('hdgsel','up',nil)","","")

-- create_command("kp/xsp/autopilot/alt_dn",			"Altitude decrease", "ng_execute_actions('altsel','dn',nil)","","")
-- create_command("kp/xsp/autopilot/alt_up",			"Altitude increase", "ng_execute_actions('altsel','up',nil)","","")

-- create_command("kp/xsp/autopilot/vsp_dn",			"Vertical Speed decrease", "ng_execute_actions('vspsel','dn',nil)","","")
-- create_command("kp/xsp/autopilot/vsp_up",			"Vertical Speed increase", "ng_execute_actions('vspsel','up',nil)","","")

-- create_command("kp/xsp/autopilot/APDiscYoke",		"Disconnect A/P from Yoke", "ng_execute_actions('yokedisc','tgl',nil)","","")

-- if ng_getAppPrefs():get("kphwng:levelfull") then

	-- if ng_getAppPrefs():get("kphwng:extmcp") then
	
		-- create_command("kp/xsp/autopilot/n1_tgl",	"Toggle N1/EPR mode", "ng_execute_actions('n1mode','tgl',nil)","","")
		-- create_command("kp/xsp/autopilot/vnav_tgl",	"Toggle VNAV mode", "ng_execute_actions('vnavmode','tgl',nil)","","")
		-- create_command("kp/xsp/autopilot/flch_tgl",	"Toggle Level Change mode", "ng_execute_actions('flchmode','tgl',nil)","","")
		-- create_command("kp/xsp/autopilot/lnav_tgl",	"Toggle LNAV mode", "ng_execute_actions('lnavmode','tgl',nil)","","")
	
	-- end

-- end