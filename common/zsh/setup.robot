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

Link
    Deep Link    *

Change Shell
    # TODO: Make this work form robot.
    Interactive    chsh    -s    $(    which     zsh    )

