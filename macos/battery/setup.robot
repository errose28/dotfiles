*** Settings ***
Library    DotfilesLibrary
Default Tags    macos

# NOTE: Battery app must be launched before CLI can be used.

*** Tasks ***
Install Packages
    Install    battery

Link
    Deep Link    *

