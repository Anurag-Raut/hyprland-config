#!/usr/bin/env bash
for cmd in "$@"; do
    [[ -z "$cmd" ]] && continue
    eval "command -v ${cmd%% *}" >/dev/null 2>&1 || continue
    nohup sh -c "eval \"$cmd\" </dev/null >/dev/null 2>&1" </dev/null >/dev/null 2>&1 &
    exit
done
