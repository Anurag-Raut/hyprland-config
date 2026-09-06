-- Custom startup commands converted from custom/execs.conf.

hl.on("hyprland.start", function()
    hl.exec_cmd("fcitx5 -d")
    hl.exec_cmd("hyprpm reload")
    hl.exec_cmd("bash /home/Qui/scripts/daily_logs.sh")
end)
