*** Settings ***
Library    OperatingSystem
Library    DotfilesLibrary
Default Tags    arch    nix    macos

*** Tasks ***
MacOS Install
    [Tags]    macos
    Brew Install    bash

    Interactive    echo    "$(which bash)"    |    sudo     tee    -a    /etc/shells
    Interactive    chsh    -s    "$(which bash)"

Link
    Deep Link    *

Remove Conflicting Files
    Remove Files
    ...    ~/.bash_profile
    ...    ~/.bash_login
