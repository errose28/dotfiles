*** Settings ***
Library    DotfilesLibrary
Default Tags    linux    macos    headless

*** Tasks ***
Install Packages
    Install    lf
    ...    pacman=${NONE}
    Install    trash-cli
    # lf archive handling commands use `realpath`.
    Install    coreutils
    Install    atool

Link
    Deep Link    *

