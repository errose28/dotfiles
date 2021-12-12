*** Settings ***
Library    DotfilesLibrary
Default Tags    linux    macos    headless

*** Tasks ***
Install Packages
    Install    neovim
    Install    vim
    ...    brew=macvim

Link
    Deep Link    *

