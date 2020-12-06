*** Settings ***
Library    DotfilesLibrary
Default Tags    macos

*** Tasks ***
Set Defaults
    Interactive    ${CURDIR}/set_defaults.sh

