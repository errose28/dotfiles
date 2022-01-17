#!/usr/bin/env osascript

tell application "System Events"
    tell appearance preferences
        # These two options seem easier to set with applescript, not defaults.
        set dark mode to true
        set highlight color to blue
    end tell

    tell screen saver preferences
        set delay interval to 3600
    end tell
end tell
