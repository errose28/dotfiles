*** Settings ***
Library    DotfilesLibrary
Default Tags    arch    nix    macos

*** Tasks ***
Pip Install
    Pip Install
    ...    powerline-status

Font Install
    Interactive    install_powerline_fonts.sh

# Any configs not overridden by dotfiles will be taken from <python site packages>/powerline/config_files.
# Copy files from there to dotfiles and modify them to override.
Link
    Add Ignore    install_powerline_fonts.sh
    Deep Link    *

