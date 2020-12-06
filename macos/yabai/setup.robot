*** Settings ***
Library    DotfilesLibrary
Default Tags    macos

*** Tasks ***
Install
    Brew Install
    ...    yabai
    ...    jq

Link
    Deep Link    *

