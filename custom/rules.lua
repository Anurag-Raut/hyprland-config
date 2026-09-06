-- Converted from custom/rules.conf.

-- You can put custom rules here
-- Window/layer rules: https://wiki.hyprland.org/Configuring/Window-Rules/
-- Workspace rules: https://wiki.hyprland.org/Configuring/Workspace-Rules/

-- Development launcher windows. The launchers also move already-open windows
-- through Hyprland IPC, so rerunning them repairs placement without reopening.
hl.window_rule({ match = { class = "^(t3code)$" }, workspace = "1" })
hl.window_rule({ match = { class = "^(app\\.zen_browser\\.zen)$" }, workspace = "3" })
hl.window_rule({ match = { class = "^(work-chrome)$" }, workspace = "4" })

hl.window_rule({ match = { class = "^(work-website-server)$" }, workspace = "1" })
hl.window_rule({ match = { class = "^(work-website-webassistant)$" }, workspace = "2" })
hl.window_rule({ match = { class = "^(work-website-admin)$" }, workspace = "2" })
hl.window_rule({ match = { class = "^(work-website-ngrok)$" }, workspace = "2" })

hl.window_rule({ match = { class = "^(work-app-server)$" }, workspace = "1" })
hl.window_rule({ match = { class = "^(work-app-mobile)$" }, workspace = "2" })
