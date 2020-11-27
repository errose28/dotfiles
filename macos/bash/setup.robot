*** Settings ***
Library    DotfilesLibrary

*** Tasks ***
Install
    Brew Install    bash

    Interactive    echo    "$(which bash)"    |    sudo     tee    -a    /etc/shells
    Interactive    chsh    -s    "$(which bash)"

Link
    Deep Link    *

Remove Conflicting Files
    Remove Files
    ...    ~/.bash_profile
    ...    ~/.bash_login
