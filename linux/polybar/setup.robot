*** Settings ***
Library    DotfilesLibrary
Default Tags    linux

*** Tasks ***
Install
    # psmisc has killall to restart polybars.
    Emit    Install
    ...    polybar
    ...    psmisc

Link
    Deep Link    *

