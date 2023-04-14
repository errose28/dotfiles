#!/usr/bin/env zsh

# Send push notification if a command finishes when the terminal is in the background on MacOS.
# Taken from https://gist.github.com/wojteklu/5f27f1cdcb35ba71e53d02a5aebd1d0c
function notifyme {
  LAST_EXIT_CODE=$?
  CMD=$(fc -ln -1)
  osascript -e 'on run argv
  tell application "System Events"
    set frontApp to name of first application process whose frontmost is true
    if frontApp is not "Kitty" then
      set notifTitle to item 1 of argv
      if notifTitle starts with "open" is false
        set notifBody to "succeded"
        set errorCode to item 2 of argv
        if errorCode is not "0"
          set notifBody to "failed with error code " & errorCode
        end if
        display notification notifBody with title notifTitle
      end if
    end if
  end tell
end run' $CMD $LAST_EXIT_CODE
}

export PS1='$(notifyme)'$PS1
