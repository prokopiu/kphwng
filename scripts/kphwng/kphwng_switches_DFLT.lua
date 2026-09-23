--[[
*****************************************************************************************
* Program Script Name	:	kphwng_switches_DFLT - Generic X-Plane version
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

lHasWingLights = 	false
lHasRwyLights = 	false
lHasLogoLights = 	false
lHasWheelLights = 	false
lHasDomeLight = 	false
lHasAvionicSwitch = false

simDR_Beacon = 		find_dataref("sim/cockpit2/switches/beacon_on")
simDR_Strobe = 		find_dataref("sim/cockpit2/switches/strobe_lights_on")
simDR_TaxiLight = 	find_dataref("sim/cockpit2/switches/taxi_light_on")
simDR_NavLight = 	find_dataref("sim/cockpit2/switches/navigation_lights_on")
simDR_LandLights1 = find_dataref("sim/cockpit2/switches/landing_lights_switch[0]")
simDR_LandLights2 = find_dataref("sim/cockpit2/switches/landing_lights_switch[1]")
simDR_LandLights3 = find_dataref("sim/cockpit2/switches/landing_lights_switch[2]")
simDR_LandLights4 = find_dataref("sim/cockpit2/switches/landing_lights_switch[3]")
simDR_WingLight = 	find_dataref("xx")
simDR_RwyLight1 = 	find_dataref("xx")
simDR_RwyLight2 = 	find_dataref("xx")
simDR_WheelLight = 	find_dataref("xx")
simDR_LogoLight = 	find_dataref("xx")
simDR_DomeLight = 	find_dataref("xx")
simDR_PanelLight1 = find_dataref("sim/cockpit2/electrical/panel_brightness_ratio[0]")
simDR_PanelLight2 = find_dataref("sim/cockpit2/electrical/panel_brightness_ratio[1]")
simDR_PanelLight3 = find_dataref("sim/cockpit2/electrical/panel_brightness_ratio[2]")
simDR_PanelLight4 = find_dataref("sim/cockpit2/electrical/panel_brightness_ratio[3]")
simDR_InstrLight1 = find_dataref("sim/cockpit2/electrical/instrument_brightness_ratio[0]")
simDR_InstrLight2 = find_dataref("sim/cockpit2/electrical/instrument_brightness_ratio[1]")
simDR_InstrLight3 = find_dataref("sim/cockpit2/electrical/instrument_brightness_ratio[2]")
simDR_InstrLight4 = find_dataref("sim/cockpit2/electrical/instrument_brightness_ratio[3]")

simDR_ParkBrake = 	find_dataref("sim/cockpit2/controls/parking_brake_ratio")
simDR_GearHandle = 	find_dataref("sim/cockpit2/controls/gear_handle_request")

simDR_Doorl1 = 		find_dataref("sim/cockpit2/switches/door_open_ratio[0]")
simDR_Doorr1 = 		find_dataref("sim/cockpit2/switches/door_open_ratio[1]")
simDR_Doorl2 = 		find_dataref("sim/cockpit2/switches/door_open_ratio[2]")
simDR_Doorr2 = 		find_dataref("sim/cockpit2/switches/door_open_ratio[3]")
simDR_Doorcf = 		find_dataref("sim/cockpit2/switches/door_open_ratio[4]")
simDR_Doorca = 		find_dataref("sim/cockpit2/switches/door_open_ratio[5]")

simDR_Battery1 = 	find_dataref("sim/cockpit2/electrical/battery_on[0]")
simDR_Generator1 = 	find_dataref("sim/cockpit2/electrical/generator_on[0]")
simDR_Avionics1 = 	find_dataref("sim/cockpit/electrical/avionics_on")
simDR_Avionics2 = 	find_dataref("sim/cockpit2/electrical/cross_tie")

simCMD_FlapsUp = 	find_command("sim/flight_controls/flaps_up")
simCMD_FlapsDown = 	find_command("sim/flight_controls/flaps_down")
simCMD_AilTrimReset = find_command("sim/flight_controls/aileron_trim_center")
simCMD_RudTrimReset = find_command("sim/flight_controls/rudder_trim_center")

simCMD_Magneto1_Off = find_command("sim/magnetos/magnetos_off_1")
simCMD_Magneto1_Left = find_command("sim/magnetos/magnetos_left_1")
simCMD_Magneto1_Right = find_command("sim/magnetos/magnetos_right_1")
simCMD_Magneto1_Both = find_command("sim/magnetos/magnetos_both_1")
simCMD_Magneto1_Start = find_command("sim/starters/engage_starter_1")


simDR_FuelPump1 = 	find_command("sim/cockpit2/fuel/fuel_tank_pump_on[0]")

--*************************************************************************************--
--** 				              LIGHT SWITCHES		              			     **--
--*************************************************************************************--

-- Beacon Lights

function hndlcmd_beacon_switch_on(phase, duration) 
	if phase == 0 then simDR_Beacon = 1 end
end
function hndlcmd_beacon_switch_off(phase, duration) 
	if phase == 0 then simDR_Beacon = 0 end
end
function hndlcmd_beacon_switch_tgl(phase, duration) 
	if phase == 0 then simDR_Beacon = (simDR_Beacon == 1 and 0 or 1) end
end

-- Strobe Lights

function hndlcmd_strobe_switch_on(phase, duration) 
	if phase == 0 then simDR_Strobe = 1 end
end
function hndlcmd_strobe_switch_off(phase, duration) 
	if phase == 0 then simDR_Strobe = 0 end
end
function hndlcmd_strobe_switch_tgl(phase, duration) 
	if phase == 0 then simDR_Strobe = (simDR_Strobe == 1 and 0 or 1) end
end

-- Taxi Lights

function hndlcmd_taxi_switch_on(phase, duration) 
	if phase == 0 then simDR_TaxiLight = 1 end
end
function hndlcmd_taxi_switch_off(phase, duration) 
	if phase == 0 then simDR_TaxiLight = 0 end
end
function hndlcmd_taxi_switch_tgl(phase, duration) 
	if phase == 0 then simDR_TaxiLight = (simDR_TaxiLight == 1 and 0 or 1) end
end

-- Position Lights

function hndlcmd_position_switch_on(phase, duration) 
	if phase == 0 then simDR_NavLight = 1 end
end
function hndlcmd_position_switch_off(phase, duration) 
	if phase == 0 then simDR_NavLight = 0 end
end
function hndlcmd_position_switch_tgl(phase, duration) 
	if phase == 0 then simDR_NavLight = (simDR_NavLight == 1 and 0 or 1) end
end

-- Landing Lights up to 4

function hndlcmd_landing_switch_on(phase, duration) 
	if phase == 0 then 
		simDR_LandLights1 = 1 
		simDR_LandLights2 = 1 
		simDR_LandLights3 = 1 
		simDR_LandLights4 = 1 
	end
end
function hndlcmd_landing_switch_off(phase, duration) 
	if phase == 0 then 
		simDR_LandLights1 = 0 
		simDR_LandLights2 = 0 
		simDR_LandLights3 = 0 
		simDR_LandLights4 = 0 
	end
end
function hndlcmd_landing_switch_tgl(phase, duration) 
	if phase == 0 then 
		simDR_LandLights1 = (simDR_LandLights1 == 1 and 0 or 1) 
		simDR_LandLights2 = (simDR_LandLights2 == 1 and 0 or 1) 
		simDR_LandLights3 = (simDR_LandLights3 == 1 and 0 or 1) 
		simDR_LandLights4 = (simDR_LandLights4 == 1 and 0 or 1) 
	end
end

-- optional wing lights

if lHasWingLights then 

	function hndlcmd_wing_switch_on(phase, duration) 
		if phase == 0 then simDR_WingLight = 1 end
	end
	function hndlcmd_wing_switch_off(phase, duration) 
		if phase == 0 then simDR_WingLight = 0 end
	end
	function hndlcmd_wing_switch_tgl(phase, duration) 
		if phase == 0 then simDR_WingLight = (simDR_WingLight == 1 and 0 or 1) end
	end

else

	function hndlcmd_wing_switch_on(phase, duration) end
	function hndlcmd_wing_switch_off(phase, duration) end
	function hndlcmd_wing_switch_tgl(phase, duration) end

end

-- optional runway lights

if lHasRwyLights then 

	function hndlcmd_rwy_switch_on(phase, duration) 
		if phase == 0 then 
			simDR_RwyLight1 = 1 
			simDR_RwyLight2 = 1 
		end
	end
	function hndlcmd_rwy_switch_off(phase, duration) 
		if phase == 0 then 
			simDR_RwyLight1 = 0 
			simDR_RwyLight2 = 0 
		end
	end
	function hndlcmd_rwy_switch_tgl(phase, duration) 
		if phase == 0 then 
			simDR_RwyLight1 = (simDR_RwyLight1 == 1 and 0 or 1) 
			simDR_RwyLight2 = (simDR_RwyLight2 == 1 and 0 or 1) 
		end
	end

else

	function hndlcmd_rwy_switch_on(phase, duration) end
	function hndlcmd_rwy_switch_off(phase, duration) end
	function hndlcmd_rwy_switch_tgl(phase, duration) end

end

-- optional logo lights

if lHasLogoLights then 

	function hndlcmd_logo_switch_on(phase, duration) 
		if phase == 0 then simDR_LogoLight = 1 end
	end
	function hndlcmd_logo_switch_off(phase, duration) 
		if phase == 0 then simDR_LogoLight = 0 end
	end
	function hndlcmd_logo_switch_tgl(phase, duration) 
		if phase == 0 then simDR_LogoLight = (simDR_LogoLight == 1 and 0 or 1) end
	end

else

	function hndlcmd_logo_switch_on(phase, duration) end
	function hndlcmd_logo_switch_off(phase, duration) end
	function hndlcmd_logo_switch_tgl(phase, duration) end

end

-- optional wheel lights

if lHasWheelLights then 

	function hndlcmd_wheel_switch_on(phase, duration) 
		if phase == 0 then simDR_WheelLight = 1 end
	end
	function hndlcmd_wheel_switch_off(phase, duration) 
		if phase == 0 then simDR_WheelLight = 0 end
	end
	function hndlcmd_wheel_switch_tgl(phase, duration) 
		if phase == 0 then simDR_WheelLight = (simDR_WheelLight == 1 and 0 or 1) end
	end

else

	function hndlcmd_wheel_switch_on(phase, duration) end
	function hndlcmd_wheel_switch_off(phase, duration) end
	function hndlcmd_wheel_switch_tgl(phase, duration) end

end

-- ---------- internal Lights

-- optional dome lights

if lHasDomeLight then 

	function hndlcmd_dome_switch_on(phase, duration) 
		if phase == 0 then simDR_DomeLight = 1 end
	end
	function hndlcmd_dome_switch_off(phase, duration) 
		if phase == 0 then simDR_DomeLight = 0 end
	end
	function hndlcmd_dome_switch_tgl(phase, duration) 
		if phase == 0 then simDR_DomeLight = (simDR_DomeLight == 1 and 0 or 1) end
	end

else

	function hndlcmd_dome_switch_on(phase, duration) end
	function hndlcmd_dome_switch_off(phase, duration) end
	function hndlcmd_dome_switch_tgl(phase, duration) end

end

-- Panel Lights

function hndlcmd_panel_switch_on(phase, duration) 
	if phase == 0 then 
		simDR_PanelLight1 = 1 
		simDR_PanelLight2 = 1 
		simDR_PanelLight3 = 1 
		simDR_PanelLight4 = 1 
	end
end
function hndlcmd_panel_switch_off(phase, duration) 
	if phase == 0 then 
		simDR_PanelLight1 = 0 
		simDR_PanelLight2 = 0 
		simDR_PanelLight3 = 0 
		simDR_PanelLight4 = 0 
	end
end
function hndlcmd_panel_switch_tgl(phase, duration) 
	if phase == 0 then 
		simDR_PanelLight1 = (simDR_PanelLight1 == 1 and 0 or 1) 
		simDR_PanelLight2 = (simDR_PanelLight2 == 1 and 0 or 1) 
		simDR_PanelLight3 = (simDR_PanelLight3 == 1 and 0 or 1) 
		simDR_PanelLight4 = (simDR_PanelLight4 == 1 and 0 or 1) 
	end
end

-- Instrument Lights

function hndlcmd_instr_switch_on(phase, duration) 
	if phase == 0 then 
		simDR_InstrLight1 = 1 
		simDR_InstrLight2 = 1 
		simDR_InstrLight3 = 1 
		simDR_InstrLight4 = 1 
	end
end
function hndlcmd_instr_switch_off(phase, duration) 
	if phase == 0 then 
		simDR_InstrLight1 = 0 
		simDR_InstrLight2 = 0 
		simDR_InstrLight3 = 0 
		simDR_InstrLight4 = 0 
	end
end
function hndlcmd_instr_switch_tgl(phase, duration) 
	if phase == 0 then 
		simDR_InstrLight1 = (simDR_InstrLight1 == 1 and 0 or 1) 
		simDR_InstrLight2 = (simDR_InstrLight2 == 1 and 0 or 1) 
		simDR_InstrLight3 = (simDR_InstrLight3 == 1 and 0 or 1) 
		simDR_InstrLight4 = (simDR_InstrLight4 == 1 and 0 or 1) 
	end
end

--*************************************************************************************--
--** 				              		GENERAL		              			     	 **--
--*************************************************************************************--

-- Parkingbrake

function hndlcmd_park_switch_on(phase, duration) 
	if phase == 0 then simDR_ParkBrake = 1 end
end
function hndlcmd_park_switch_off(phase, duration) 
	if phase == 0 then simDR_ParkBrake = 0 end
end
function hndlcmd_park_switch_tgl(phase, duration) 
	if phase == 0 then simDR_ParkBrake = (simDR_ParkBrake == 1 and 0 or 1) end
end

-- Gear Handle

function hndlcmd_gear_switch_down(phase, duration) 
	if phase == 0 then simDR_GearHandle = 1 end
end
function hndlcmd_gear_switch_up(phase, duration) 
	if phase == 0 then simDR_GearHandle = 0 end
end
function hndlcmd_gear_switch_off(phase, duration) 
	if phase == 0 then simDR_GearHandle = -1 end
end

--*************************************************************************************--
--** 				                 DOORS	    		              			     **--
--*************************************************************************************--

function hndlcmd_doorl1_switch_tgl(phase, duration) 
	if phase == 0 then simDR_Doorl1 = (simDR_Doorl1 == 1 and 0 or 1) end
end

function hndlcmd_doorl2_switch_tgl(phase, duration) 
	if phase == 0 then simDR_Doorl2 = (simDR_Doorl2 == 1 and 0 or 1) end
end

function hndlcmd_doorr1_switch_tgl(phase, duration) 
	if phase == 0 then simDR_Doorr1 = (simDR_Doorr1 == 1 and 0 or 1) end
end

function hndlcmd_doorr2_switch_tgl(phase, duration) 
	if phase == 0 then simDR_Doorr2 = (simDR_Doorr2 == 1 and 0 or 1) end
end

function hndlcmd_doorcf_switch_tgl(phase, duration) 
	if phase == 0 then simDR_Doorcf = (simDR_Doorcf == 1 and 0 or 1) end
end

function hndlcmd_doorca_switch_tgl(phase, duration) 
	if phase == 0 then simDR_Doorca = (simDR_Doorca == 1 and 0 or 1) end
end

function hndlcmd_doorl1_switch_on(phase, duration) 
	if phase == 0 then simDR_Doorl1 = 1 end
end

function hndlcmd_doorl2_switch_on(phase, duration) 
	if phase == 0 then simDR_Doorl2 = 1 end
end

function hndlcmd_doorr1_switch_on(phase, duration) 
	if phase == 0 then simDR_Doorr1 = 1 end
end

function hndlcmd_doorr2_switch_on(phase, duration) 
	if phase == 0 then simDR_Doorr2 = 1 end
end

function hndlcmd_doorcf_switch_on(phase, duration) 
	if phase == 0 then simDR_Doorcf = 1 end
end

function hndlcmd_doorca_switch_on(phase, duration) 
	if phase == 0 then simDR_Doorca = 1 end
end

function hndlcmd_doorl1_switch_on(phase, duration) 
	if phase == 0 then simDR_Doorl1 = 0 end
end

function hndlcmd_doorl2_switch_on(phase, duration) 
	if phase == 0 then simDR_Doorl2 = 0 end
end

function hndlcmd_doorr1_switch_on(phase, duration) 
	if phase == 0 then simDR_Doorr1 = 0 end
end

function hndlcmd_doorr2_switch_on(phase, duration) 
	if phase == 0 then simDR_Doorr2 = 0 end
end

function hndlcmd_doorcf_switch_on(phase, duration) 
	if phase == 0 then simDR_Doorcf = 0 end
end

function hndlcmd_doorca_switch_on(phase, duration) 
	if phase == 0 then simDR_Doorca = 0 end
end

--*************************************************************************************--
--** 				              ELECTRIC SWITCHES		              			     **--
--*************************************************************************************--

function hndcmd_batall_switch_on(phase, duration)
	if phase == 0 then simDR_Battery1 = 1 end
end 

function hndcmd_batall_switch_off(phase, duration)
	if phase == 0 then simDR_Battery1 = 0 end
end 

function hndcmd_batall_switch_tgl(phase, duration)
	if phase == 0 then simDR_Battery1 = (simDR_Battery1 == 1 and 0 or 1) end
end 

function hndcmd_altn_switch_on(phase, duration)
	if phase == 0 then simDR_Generator1 = 1 end
end 

function hndcmd_altn_switch_off(phase, duration)
	if phase == 0 then simDR_Generator1 = 0 end
end 

function hndcmd_altn_switch_tgl(phase, duration)
	if phase == 0 then simDR_Generator1 = (simDR_Generator1 == 1 and 0 or 1) end
end 

function hndcmd_avionic1_switch_on(phase, duration)
	if phase == 0 then simDR_Avionics1 = 1 end
end 

function hndcmd_avionic1_switch_off(phase, duration)
	if phase == 0 then simDR_Avionics1 = 0 end
end 

function hndcmd_avionic1_switch_tgl(phase, duration)
	if phase == 0 then simDR_Avionics1 = (simDR_Avionics1 == 1 and 0 or 1) end
end 

function hndcmd_avionic2_switch_on(phase, duration)
	if phase == 0 then simDR_Avionics2 = 1 end
end 

function hndcmd_avionic2_switch_off(phase, duration)
	if phase == 0 then simDR_Avionics2 = 0 end
end 

function hndcmd_avionic2_switch_tgl(phase, duration)
	if phase == 0 then simDR_Avionics2 = (simDR_Avionics2 == 1 and 0 or 1) end
end 

--*************************************************************************************--
--** 				              FLIGHT CONTROLS		              			     **--
--*************************************************************************************--

function hndcmd_flaps_down(phase, duration)
	if phase == 0 then simCMD_FlapsDown:once() end
end 

function hndcmd_flaps_up(phase, duration)
	if phase == 0 then simCMD_FlapsUp:once() end
end 

function hndcmd_ail_trim_reset(phase, duration)
	if phase == 0 then simCMD_AilTrimReset:once() end
end

function hndcmd_rud_trim_reset(phase, duration)
	if phase == 0 then simCMD_RudTrimReset:once() end
end

--*************************************************************************************--
--** 				              ENGINE CONTROLS		              			     **--
--*************************************************************************************--

function hndcmd_magneto1_off(phase, duration)
	if phase == 0 then simCMD_Magneto1_Off:once() end
end 

function hndcmd_magneto1_left(phase, duration)
	if phase == 0 then simCMD_Magneto1_Left:once() end
end 

function hndcmd_magneto1_right(phase, duration)
	if phase == 0 then simCMD_Magneto1_Right:once() end
end 

function hndcmd_magneto1_both(phase, duration)
	if phase == 0 then simCMD_Magneto1_Both:once() end
end 

--*************************************************************************************--
--** 				              FUEL CONTROLS		    	          			     **--
--*************************************************************************************--

function hndcmd_fuel_pumps_on(phase, duration)
	if phase == 0 then simDR_FuelPump1 = 1 end
end 

function hndcmd_fuel_pumps_off(phase, duration)
	if phase == 0 then simDR_FuelPump1 = 0 end
end 

function hndcmd_fuel_pumps_tgl(phase, duration)
	if phase == 0 then simDR_FuelPump1 = (simDR_FuelPump1 == 1 and 0 or 1) end
end 

