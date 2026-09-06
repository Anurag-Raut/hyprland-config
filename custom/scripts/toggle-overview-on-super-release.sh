#!/usr/bin/env bash

state_file="${XDG_RUNTIME_DIR:-/tmp}/hypr-super-overview-${UID}"

case "$1" in
    start)
        : > "$state_file"
        ;;
    cancel)
        rm -f "$state_file"
        ;;
    finish)
        if [[ -f "$state_file" ]]; then
            rm -f "$state_file"
            hyprctl dispatch 'hl.dsp.global("quickshell:overviewWorkspacesToggle")'
        fi
        ;;
esac
