# feh executable should be triggered on autorandr change.
*** Settings ***
Library    DotfilesLibrary
Default Tags    linux    macos

*** Tasks ***
Link
    Shallow Link    .wallpapers
    Deep Link    .startup

