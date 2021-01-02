*** Settings ***
Library    DotfilesLibrary
Default Tags    arch    nix    macos

*** Tasks ***
Arch Install
    [Tags]    arch
    Pacman Install
    ...    zsh
    ...    zsh-autosuggestions
    ...    zsh-syntax-highlighting

MacOS Install
    [Tags]    macos
    Brew Install
    ...    zsh
    ...    zsh-autosuggestions
    ...    zsh-syntax-highlighting

Nix Install
    [Tags]    nix
    Nix Install
    ...    zsh
    ...    zsh-autosuggestions
    ...    zsh-syntax-highlighting

Link
    Deep Link    *

Change Shell
    [Tags]    arch    nix    macos
    # TODO: Make this work form robot.
    Interactive    chsh    -s    $(    which     zsh    )

