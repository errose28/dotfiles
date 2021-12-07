*** Settings ***
Library    DotfilesLibrary
Default Tags    linux

*** Tasks ***
Install Packages
    # Eww is new and may need to be built from source for necessary features.
    Install    eww

Link
    Deep Link    *

