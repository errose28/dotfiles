*** Settings ***
Library    DotfilesLibrary
Default Tags    macos

*** Tasks ***
Install
    Emit    Install
    ...    yabai
    ...    jq

Link
    Deep Link    *

