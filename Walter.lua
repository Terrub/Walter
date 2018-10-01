-- Walter AddOn!
Walter = {}

local function prt(str)
    DEFAULT_CHAT_FRAME:AddMessage(str)
end

local function print_addon_string(name, lbl, msg)
    local pattern = "|cff22ff22%s|r - |cff999999%s:|r %s"
    local str = string.format(pattern, name, lbl, msg)

    prt(str)
end

function Walter.say(message)
    local label = "says"
    
    print_addon_string('walter', label, message)
end

Walter.say("I'm ALIVE!")