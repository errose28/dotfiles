*** Settings ***
Library    DotfilesLibrary
Default Tags    linux    macos

*** Tasks ***
Install
    # May need extra steps for tab completion depending on the platform.
    Emit    Install    git

Link
    Deep Link    *

