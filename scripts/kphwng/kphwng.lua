--[[
*****************************************************************************************
* Program Script Name	:	kphwng xlua module
* Author Name			:	Kosta Prokopiu
*
*   Revisions:
*   -- DATE --	--- REV NO ---		--- DESCRIPTION ---
*   2026-09-17	0.01				Start of Dev
*
*****************************************************************************************
--]]

jit.off() -- Disables just in time compilation to minimize impact on frametimes.

--*************************************************************************************--
--** 					            GLOBAL VARIABLES                				 **--
--*************************************************************************************--

glbKPHW_aircraft = ""
glbLovePath = ""
glbPlaneIcao = find_dataref("sim/aircraft/view/acf_ICAO")
glbPlabeTailnum = find_dataref("sim/aircraft/view/acf_tailnum")

-- for external testing
if SIM_PERIOD == nil then
	glbLovePath = [[D:\KPHWNG\xlua\scripts\kphwng\]]
	glbPlaneIcao = ""
	glbPlaneTailnum = "N-25252"
end

-- select aircraft specific file
if glbPlaneIcao == "B738" then glbKPHW_aircraft = "B737"
-- elseif glbPlaneIcao == "B738" then glbKPHW_aircraft = "B737"
else glbKPHW_aircraft = "DFLT" end

print("KPHWNG: Loading profile for "..glbKPHW_aircraft)

dofile(glbLovePath.."kphwng_switches.lua")

-- run once when your aircraft is loaded. This is run after the aircraft is initialized enough to set overrides.
function aircraft_load()

	print("aircraft loads")
	
end

-- run once when your aircraft is unloaded.
function aircraft_unload()

	print("aircraft unloads")
	
end

-- run once each time a flight is started. The aircraft is already initialized and can thus 
-- be customized. This is always called after aircraft_load has been run at least once.
function flight_start()

	print("Flight starts")

end

-- called if X-Plane detects that the user has crashed the airplane.
function flight_crash()

	print("Crash")

end

-- called every frame that the sim is not paused and not in replay, before physics are calculated
function before_physics() 

	-- print("before_physics")

end

-- called every frame that the sim is not paused and not in replay, after physics are calculated
function after_physics()
	
	-- print("after physics")
	
end

-- called every frame that the sim is in replay mode, regardless of pause status.
function after_replay()

	print("After replay")
	
end

--*************************************************************************************--
--** 				               SUB-MODULE PROCESSING       	        			 **--
--*************************************************************************************--

-- dofile("")


-- testing

cmd_magneto1_left:once()

