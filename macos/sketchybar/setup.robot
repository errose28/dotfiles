*** Settings ***
Library    DotfilesLibrary
Default Tags    macos

*** Tasks ***
Install
    Install    sketchybar
    Install    yabai
    Install    jq
    Install    m-cli

Link
    Deep Link    *

