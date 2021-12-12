*** Settings ***
Library    DotfilesLibrary
Default Tags    linux    no-de

*** Tasks ***
Install Packages
    # Eww is new and may need to be built from source for necessary features.
    Install    eww
    ...    pacman=${NONE}
    ...    aur=eww-git

Link
    Deep Link    *

