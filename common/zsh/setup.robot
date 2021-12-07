*** Settings ***
Library    DotfilesLibrary
Default Tags    linux    macos

*** Tasks ***
Install Packages
    Install    zsh
    Install    zsh-autosuggestions
    Install    zsh-syntax-highlighting
    Install    zsh-powerlevel10k
    # NerdFonts for powerlevel10k:
    Install    meslo-lgs-nf

Link
    Deep Link    *

