-- Lua entry point for Hyprland 0.55+.
-- The original .conf files remain beside this tree for rollback.

require("hyprland.env")
require("hyprland.execs")
require("hyprland.general")
require("hyprland.rules")
require("hyprland.colors")
require("custom.env")
require("custom.execs")
require("custom.general")
require("custom.rules")

hl.define_submap("global", function()
    require("hyprland.keybinds")
    require("custom.keybinds")

    hl.bind("PRINT", hl.dsp.exec_cmd("/home/Qui/.local/bin/hyprwhspr-hold.sh start"), {
        description = "Speech-to-text (hold)",
    })
    hl.bind("PRINT", hl.dsp.exec_cmd("/home/Qui/.local/bin/hyprwhspr-hold.sh stop"), {
        release = true,
    })
end)

require("workspaces")
require("monitors")

hl.on("hyprland.start", function()
    hl.dispatch(hl.dsp.submap("global"))
end)
