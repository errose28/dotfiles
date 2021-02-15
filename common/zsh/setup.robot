*** Settings ***
Library    DotfilesLibrary
Default Tags    linux    macos

*** Tasks ***
Install
    Emit    Install
    ...    zsh
    ...    zsh-autosuggestions
    ...    zsh-syntax-highlighting

Link
    Deep Link    *

