-- ToDo: Add license!!

--------------------------------------------------------------------------------
-- UTIL FUNCTIONS,
-- agnostic of walter's existance
--------------------------------------------------------------------------------
local function prt(str)
    DEFAULT_CHAT_FRAME:AddMessage(str)
end

local function initialise_addon_with_config(addon, config)
	for key, val in pairs(config) do
		local crouton_name = string.format("create_%s", key)
        local crouton = addon[crouton_name]
        if crouton then
            addon[key] = crouton(val)
        end
    end
end

--------------------------------------------------------------------------------
-- Meet Walter!
--------------------------------------------------------------------------------
Walter = {}

--------------------------------------------------------------------------------
-- Walter's private stuff.
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
-- Walter's public stuff.
--------------------------------------------------------------------------------
function Walter.create_print(print_func)
    local function _print(name, lbl, msg)
        local pattern = "|cff22ff22%s|r - |cff999999%s:|r %s"
        local status, str = pcall(
            string.format, pattern, name, lbl, msg
        )
        
        if status then
            print_func(str)
        else
            _print("Walter", "ERROR", str)
        end
    end
    
    return _print
end

function Walter.is_boolean(type_check)
    return (type(value) == "string")
end

function Walter.is_string(value)
	return (type(value) == "string")
end

function Walter.is_number(value)
	return (type(value) == "number")
end

function Walter.is_table(value)
	return (type(value) == "table")
end

function Walter.is_function(value)
	return (type(value) == "function")
end

function Walter.say(message)
    Walter.print('Walter', 'says', message)
end

--------------------------------------------------------------------------------
-- Walter's intiation procedure.
-------------------------------------------------------------------------------- 
local config = {
	["print"] = prt
}

initialise_addon_with_config(Walter, config)

Walter.say("I'm ALIVE!")