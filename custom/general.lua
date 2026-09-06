-- Custom overrides converted from custom/general.conf.

hl.monitor({
    output = "",
    mode = "preferred",
    position = "auto",
    scale = 1.875,
})

hl.config({
    general = {
        col = {
            active_border = "rgba(0DB7D4FF)",
        },
    },
    decoration = {
        blur = {
            noise = 0.15,
            contrast = 0.2,
            vibrancy = 0.8,
            vibrancy_darkness = 0.8,
        },
        shadow = {
            range = 30,
            offset = "0 2",
            render_power = 4,
            color = "rgba(00000010)",
        },
        dim_strength = 0.025,
        dim_special = 0.07,
    },
    input = {
        kb_options = "caps:ctrl_modifier",
        touchpad = {
            scroll_factor = 0.5,
        },
    },
    misc = {
        on_focus_under_fullscreen = 2,
    },
    cursor = {
        zoom_disable_aa = false,
    },
})

local hyprexpo_loaded = false
for _, plugin in ipairs(hl.get_loaded_plugins()) do
    if plugin.name == "hyprexpo" then
        hyprexpo_loaded = true
        break
    end
end
if hyprexpo_loaded then
    hl.config({
        plugin = {
            hyprexpo = {
                columns = 3,
                gap_size = 5,
                bg_col = "rgb(000000)",
                workspace_method = "first 1",
                enable_gesture = false,
            },
        },
    })
end
