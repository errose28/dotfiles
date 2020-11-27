*** Settings ***
Library    DotfilesLibrary

*** Tasks ***
Install
    # sdhand's picom fork (picom-rounded-corners) does not have window blur.
    Yay Install    picom-ibhagwan-git

Link
    Deep Link    *

