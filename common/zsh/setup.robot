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

    # TODO: Symlink scripts to source to ~/.shell-init/zsh
    # Interactive    ln    -s    

MacOS Install
    [Tags]    macos
    Brew Install
    ...    zsh
    ...    zsh-autosuggestions
    ...    zsh-syntax-highlighting

    # TODO: Symlink scripts to source to ~/.shell-init/zsh
    # Interactive    ln    -s    

Nix Install
    [Tags]    nix
    Nix Install
    ...    zsh
    ...    zsh-autosuggestions
    ...    zsh-syntax-highlighting

Link
    Deep Link    *

Change Shell
    [Tags]    arch    macos
    # TODO: Make this work form robot.
    Interactive    chsh    -s    $(    which     zsh    )

