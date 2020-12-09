*** Settings ***
Library    DotfilesLibrary
Default Tags    arch    macos

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

Link
    Deep Link    *

Change Shell
    [Tags]    arch
    # TODO: Make this work form robot.
    Interactive    chsh    -s    $(    which     zsh    )

