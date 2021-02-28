*** Settings ***
Library    DotfilesLibrary
Default Tags    linux    macos

*** Tasks ***
Install
    Emit    Install
    ...    zsh
    ...    zsh-autosuggestions
    ...    zsh-syntax-highlighting
    ...    zsh-powerlevel10k
    # NerdFonts for powerlevel10k.
    ...    meslo-lgs-nf

Link
    Deep Link    *

