*** Settings ***
Library    DotfilesLibrary
Default Tags    macos

*** Tasks ***
Install
    Install    FelixKratz/formulae/sketchybar
    Install    koekeishiya/formulae/yabai
    Install    jq
    Install    m-cli

Link
    Deep Link    *

