*** Settings ***
Library    DotfilesLibrary
Default Tags    linux    no-de    xorg

*** Tasks ***
Install Packages
    # Expecting yshui fork.
    Install    picom

Link
    Deep Link    *

