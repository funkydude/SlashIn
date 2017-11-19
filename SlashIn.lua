
local _, SlashIn = ...
LibStub("AceTimer-3.0"):Embed(SlashIn)

local print = print
local tonumber = tonumber
local MacroEditBox = MacroEditBox
local MacroEditBox_OnEvent = MacroEditBox:GetScript("OnEvent")

-- We execute lines by faking them as EXECUTE_CHAT_LINE events to the MacroEditBox defined in ChatFrame.lua.
-- The main benefit of this is that MacroEditBox gets special treatment in ChatEdit_OnEscapePressed.
-- It's also elegant, and reuses Blizzard code.
-- The main concern is taint, but I've tested it fairly well, and analyzed the execution path, and I'm
-- reasonably sure taint isn't an issue.
-- If taint does become a problem, there are other implementations that work just as well; they're just
-- less elegant. The dev version in Git has an alternative implementation commented out at the bottom.
local function OnCallback(command)
	MacroEditBox_OnEvent(MacroEditBox, "EXECUTE_CHAT_LINE", command)
end

-- GLOBALS: SLASH_SLASHIN_IN1
-- GLOBALS: SLASH_SLASHIN_IN2
SLASH_SLASHIN_IN1 = "/in"
SLASH_SLASHIN_IN2 = "/slashin"

function SlashCmdList.SLASHIN_IN(msg)
	local secs, command = msg:match("^([^%s]+)%s+(.*)$")
	secs = tonumber(secs)
	if (not secs) or (#command == 0) then
		print("|cff33ff99SlashIn:|r")
		print("|cff33ff99Usage:|r /in <seconds> <command>")
		print("|cff33ff99Example:|r /in 1.5 /say hi")
	else
		SlashIn:ScheduleTimer(OnCallback, secs, command)
	end
end
