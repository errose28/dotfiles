*** Settings ***
Library    DotfilesLibrary
Default Tags    macos

*** Tasks ***
Install Packages
    Install    mos

Link
    Deep Link    *

Create Mos Login Item
    # Should be idempotent.
    Interactive    osascript    -e    tell application "System Events" to make login item at end with properties {path:"/Applications/Mos.app", hidden:false}

