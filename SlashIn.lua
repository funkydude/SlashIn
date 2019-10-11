
local CTimerAfter = C_Timer.After
local print = print
local tonumber = tonumber
local MacroEditBox = MacroEditBox

-- We execute lines by faking them as EXECUTE_CHAT_LINE events to the MacroEditBox defined in ChatFrame.lua.
-- The main benefit of this is that MacroEditBox gets special treatment in ChatEdit_OnEscapePressed.
-- It's also elegant, and reuses Blizzard code.
-- The main concern is taint, but I've tested it fairly well, and analyzed the execution path, and I'm
-- reasonably sure taint isn't an issue.
local dummy = function() end
local function OnCallback(command)
	MacroEditBox:SetText(command)
	local ran = xpcall(ChatEdit_SendText, dummy, MacroEditBox)
	if not ran then
		print("|cff33ff99SlashIn:|r", "This command failed:", command)
	end
end

-- GLOBALS: SLASH_SLASHIN1
-- GLOBALS: SLASH_SLASHIN2
SLASH_SLASHIN1 = "/in"
SLASH_SLASHIN2 = "/slashin"

function SlashCmdList.SLASHIN(msg)
	local secs, command = msg:match("^([^%s]+)%s+(.*)$")
	secs = tonumber(secs)
	if (not secs) or (#command == 0) then
		print("|cff33ff99SlashIn:|r")
		print("|cff33ff99Usage:|r /in <seconds> <command>")
		print("|cff33ff99Example:|r /in 1.5 /emote rocks")
	else
		CTimerAfter(secs, function() OnCallback(command) end)
	end
end
