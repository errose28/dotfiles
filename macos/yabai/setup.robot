*** Settings ***
Library    DotfilesLibrary
Default Tags    macos

*** Tasks ***
Install
    Emit    Install
    ...    yabai
    ...    cliclick
    ...    jq

Link
    Deep Link    *

