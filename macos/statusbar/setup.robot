*** Settings ***
Library    DotfilesLibrary
Default Tags    macos

*** Tasks ***
Install
    Install    FelixKratz/formulae/sketchybar
    Install    koekeishiya/formulae/yabai
    Install    jq

Link
    Deep Link    *

