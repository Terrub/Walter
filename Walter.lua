-- Walter AddOn!

--------------------------------------------------------------------------------
-- UTIL FUNCTIONS,
-- agnostic of walter's existance
--------------------------------------------------------------------------------
local function prt(str)
    DEFAULT_CHAT_FRAME:AddMessage(str)
end

Walter = {}

function Walter.print_addon_string(name, lbl, msg)
    local pattern = "|cff22ff22%s|r - |cff999999%s:|r %s"
    local str = string.format(pattern, name, lbl, msg)

    prt(str)
end

local function say(message)
    Walter.print_addon_string('walter', 'says', message)
end

say("I'm ALIVE!")