local wezterm = require 'wezterm'
local act = wezterm.action

local all_keys = {
    "1", "2", "3", "4", "5", "6", "7", "8", "9",
    "w", "e", "r", "t", "y", "u", "i", "o",
    "p", "[", "]", "a", "s", "d", "f", "g", "h",
    "j", "k", "l", ";", "z", "x", "b",
    "n", "m", ",", ".",
}

local mac_keys = {}
for _, key in ipairs(all_keys) do
    local map = {}
    map["key"] = key
    map["mods"] = "CMD"
    map["action"] = act.SendKey { key = tostring(key), mods = "META" }
    table.insert(mac_keys, map)
end

local keymaps = {
    { key = "F11", action = wezterm.action.ToggleFullScreen },
    { key = "k", mods = "CTRL|SHIFT", action = act.ScrollByLine(-1) },
    { key = "j", mods = "CTRL|SHIFT", action = act.ScrollByLine(1) },
    { key = "u", mods = "CTRL|SHIFT", action = act.ScrollByPage(-0.5) },
    { key = "d", mods = "CTRL|SHIFT", action = act.ScrollByPage(0.5) },
    table.unpack(mac_keys),
}

return {
    font = wezterm.font("JetBrains Mono"),
    font_size = 13,
    keys = keymaps,
    enable_tab_bar = false;
}
