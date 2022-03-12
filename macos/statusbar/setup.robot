*** Settings ***
Library    DotfilesLibrary
Default Tags    macos

*** Tasks ***
Install
    Install    FelixKratz/formulae/sketchybar
    Install    yabai
    Install    jq

Link
    Deep Link    *

