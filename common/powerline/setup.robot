*** Settings ***
Library    DotfilesLibrary
Default Tags    arch    nix    macos

*** Tasks ***
Arch Install
    [Tags]    arch
    Pacman Install
    ...    powerline
    # Using the manual install from the powerline fonts git repo for consistent font names with MacOS.
    # If we switch to using nix as the MacOS package manager this may not be necessary.
    # ...    powerline-fonts

# TODO: Determine if installing with nix or pip is better for NixOS.
Pip Install
    [Tags]    macos    nix
    Pip Install
    ...    powerline-status

Font Install
    Interactive install_powerline_fonts.sh

# Any configs not overridden by dotfiles will be taken from /usr/lib/python3.9/site-packages/powerline/config_files.
# Copy files from there to dotfiles and modify them to override.
Link
    Deep Link    *

