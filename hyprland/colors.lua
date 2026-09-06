-- Colors and Hyprbars settings converted from hyprland/colors.conf.

hl.config({
    general = {
        col = {
            active_border = "rgba(8c919977)",
            inactive_border = "rgba(42474e55)",
        },
    },
    misc = {
        background_color = "rgba(101418FF)",
    },
})

local function plugin_loaded(name)
    for _, plugin in ipairs(hl.get_loaded_plugins()) do
        if plugin.name == name then
            return true
        end
    end
    return false
end

if plugin_loaded("hyprbars") then
    hl.config({
        plugin = {
            hyprbars = {
                bar_text_font = "Google Sans Flex Medium, Rubik, Geist, AR One Sans, Reddit Sans, Inter, Roboto, Ubuntu, Noto Sans, sans-serif",
                bar_height = 30,
                bar_padding = 10,
                bar_button_padding = 5,
                bar_precedence_over_border = true,
                bar_part_of_window = true,
                bar_color = "rgba(101418FF)",
                col = {
                    text = "rgba(e0e2e8FF)",
                },
            },
        },
    })
    hl.plugin.hyprbars.add_button({
        bg_color = "rgb(e0e2e8)",
        fg_color = "rgb(101418FF)",
        size = 13,
        icon = "󰖭",
        action = "hyprctl dispatch killactive",
    })
    hl.plugin.hyprbars.add_button({
        bg_color = "rgb(e0e2e8)",
        fg_color = "rgb(101418FF)",
        size = 13,
        icon = "󰖯",
        action = "hyprctl dispatch fullscreen 1",
    })
    hl.plugin.hyprbars.add_button({
        bg_color = "rgb(e0e2e8)",
        fg_color = "rgb(101418FF)",
        size = 13,
        icon = "󰖰",
        action = "hyprctl dispatch movetoworkspacesilent special",
    })
end

hl.window_rule({
    match = { pin = true },
    border_color = "rgba(9dcbfbAA) rgba(9dcbfb77)",
})
