*** Settings ***
Library    DotfilesLibrary
Default Tags    arch    nix    macos

*** Tasks ***
# Deployed to a directory so more files can be added for functions on different setups.
Link
    Deep Link    *
