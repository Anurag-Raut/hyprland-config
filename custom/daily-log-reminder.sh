#!/bin/bash

# Daily Log Reminder Script
# Checks if you've logged today and prompts before shutdown

DAILY_LOGS_DIR="$HOME/Documents/notes/daily logs"
TODAY=$(date +%Y-%m-%d)
LOG_FILE="$DAILY_LOGS_DIR/$TODAY.md"

# Check if today's log exists
if [ -f "$LOG_FILE" ]; then
    echo "✓ You've already logged today ($TODAY)"
    exit 0
fi

# Find most recent log to calculate days since last log
MOST_RECENT=$(ls -t "$DAILY_LOGS_DIR"/*.md 2>/dev/null | head -1)
if [ -z "$MOST_RECENT" ]; then
    echo "⚠ No previous logs found"
    DAYS_SINCE=0
else
    LAST_LOG_DATE=$(basename "$MOST_RECENT" .md | grep -oE '^[0-9]{4}-[0-9]{2}-[0-9]{2}')
    if [ -n "$LAST_LOG_DATE" ]; then
        LAST_LOG_EPOCH=$(date -d "$LAST_LOG_DATE" +%s 2>/dev/null)
        TODAY_EPOCH=$(date +%s)
        DAYS_SINCE=$(( (TODAY_EPOCH - LAST_LOG_EPOCH) / 86400 ))
    else
        DAYS_SINCE=0
    fi
fi

# Display reminder
echo ""
echo "═══════════════════════════════════════"
echo "  DAILY LOG REMINDER"
echo "═══════════════════════════════════════"
echo ""

if [ $DAYS_SINCE -eq 1 ]; then
    echo "⚠ You haven't logged in 1 day"
elif [ $DAYS_SINCE -gt 1 ]; then
    echo "⚠ You haven't logged in $DAYS_SINCE days"
else
    echo "⚠ You haven't logged today ($TODAY)"
fi

echo ""
echo "Options:"
echo "  [L] Log now (open Obsidian)"
echo "  [S] Skip and shutdown"
echo ""

# Wait for user input
read -r -p "Enter choice (L/S): " choice

case "$choice" in
    L|l)
        echo "Opening Obsidian..."
        # Create log file if it doesn't exist
        if [ ! -f "$LOG_FILE" ]; then
            touch "$LOG_FILE"
            echo "# $TODAY" > "$LOG_FILE"
        fi
        # Open in Obsidian
        xdg-open "$LOG_FILE" &
        disown
        echo "✓ Log file opened in Obsidian"
        ;;
    S|s)
        echo "Skipping log, continuing shutdown..."
        sleep 1
        systemctl poweroff
        ;;
    *)
        echo "Invalid choice, skipping log..."
        sleep 1
        systemctl poweroff
        ;;
esac
