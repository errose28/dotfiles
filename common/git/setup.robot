*** Settings ***
Library    DotfilesLibrary
Default Tags    linux    macos    headless

*** Tasks ***
Install Packages
    # May need extra steps for tab completion depending on the platform.
    Install    git

Link
    Deep Link    *

