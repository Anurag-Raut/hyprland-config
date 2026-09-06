-- Custom keybindings converted from custom/keybinds.conf.

--!
--#! User
hl.bind("CTRL + SUPER + Slash", hl.dsp.exec_cmd("xdg-open ~/.config/illogical-impulse/config.json"), { }) -- Edit shell config
hl.bind("CTRL + SUPER + ALT + Slash", hl.dsp.exec_cmd("xdg-open ~/.config/hypr/custom/keybinds.lua"), { }) -- Edit extra keybinds

hl.unbind("SUPER + F")
hl.unbind("SUPER + T")
hl.bind("SUPER + F", hl.dsp.exec_cmd("flatpak run org.kde.okular"))
hl.bind("SUPER + T", hl.dsp.exec_cmd("ticktick"))
hl.unbind("SUPER + C")
hl.bind("SUPER + C", hl.dsp.exec_cmd("/home/Qui/Applications/Paseo.AppImage --no-sandbox")) -- Paseo Browser

-- Restore personal v1 behavior while keeping modern quickshell action names.
hl.unbind("CTRL + SUPER + P")
hl.bind("SUPER + ALT + W", hl.dsp.global("quickshell:panelFamilyCycle")) -- Cycle panel family

hl.unbind("SUPER + Q")
hl.bind("SUPER + Escape", hl.dsp.window.close()) -- Close

hl.unbind("SUPER + W")
hl.bind("SUPER + W", hl.dsp.exec_cmd("~/.config/hypr/hyprland/scripts/launch_first_available.sh \"flatpak run app.zen_browser.zen\"")) -- Browser

hl.unbind("SUPER + Minus")
hl.unbind("SUPER + Equal")
hl.bind("SUPER + Minus", hl.dsp.exec_cmd("qs -c ii ipc call zoom zoomOut"), { repeating = true }) -- Zoom out
hl.bind("SUPER + Equal", hl.dsp.exec_cmd("qs -c ii ipc call zoom zoomIn"), { repeating = true }) -- Zoom in
hl.bind("SUPER + Minus", hl.dsp.exec_cmd("qs -c ii ipc call TEST_ALIVE || ~/.config/hypr/hyprland/scripts/zoom.sh decrease 0.1"), { repeating = true }) -- [hidden] Zoom out
hl.bind("SUPER + Equal", hl.dsp.exec_cmd("qs -c ii ipc call TEST_ALIVE || ~/.config/hypr/hyprland/scripts/zoom.sh increase 0.1"), { repeating = true }) -- [hidden] Zoom in

hl.unbind("SUPER + Return")
hl.bind("SUPER + Return", hl.dsp.exec_cmd("kitty")) -- Terminal

hl.bind("SUPER + L", hl.dsp.exec_cmd("~/.config/hypr/custom/daily-log-reminder.sh")) -- Daily log reminder

-- Independent development environment launchers.
hl.bind("SUPER + SHIFT + W", hl.dsp.exec_cmd("/home/Qui/.local/bin/work-website")) -- Website development environment
hl.bind("SUPER + SHIFT + F", hl.dsp.exec_cmd("/home/Qui/.local/bin/work-app")) -- FitMedik mobile app environment

-- Keyboard navigation
hl.bind("CTRL + SUPER + H", hl.dsp.focus({ workspace = "r-1" })) -- Previous workspace
hl.bind("CTRL + SUPER + L", hl.dsp.focus({ workspace = "r+1" })) -- Next workspace
hl.bind("CTRL + SUPER + SHIFT + H", hl.dsp.window.move({ workspace = "r-1" })) -- Move window to previous workspace
hl.bind("CTRL + SUPER + SHIFT + L", hl.dsp.window.move({ workspace = "r+1" })) -- Move window to next workspace
