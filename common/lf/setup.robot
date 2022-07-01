*** Settings ***
Library    DotfilesLibrary
Default Tags    linux    macos    headless

*** Tasks ***
Install Packages
    Install    lf
    ...    pacman=${NONE}
    # TODO: Ubuntu requires universe repository, and only packaged for kinetic kudu.
    ...    apt=${NONE}
    Install    trash-cli
    # lf archive handling commands use `realpath`.
    Install    coreutils
    Install    atool

Link
    Deep Link    *

