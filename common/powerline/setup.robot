*** Settings ***
Library    DotfilesLibrary
Default Tags    arch    macos

*** Tasks ***
Arch Install
    [Tags]    arch
    Pacman Install
    ...    powerline
    ...    powerline-fonts

# Any configs not overridden by dotfiles will be taken from /usr/lib/python3.9/site-packages/powerline/config_files.
# Copy files from there to dotfiles and modify them to override.
Link
    Deep Link    *

