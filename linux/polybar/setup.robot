*** Settings ***
Library    DotfilesLibrary
Default Tags    arch    nix

*** Tasks ***
Arch Install
    [Tags]    arch
    # Used by combined battery script.
    Pacman Install    ibam
    Yay Install    polybar

Nix Install
    [Tags]    Nix
    # TODO: ibam setup (hosted on sourceforge)
    Nix Install    polybar

Link
    Deep Link    *

