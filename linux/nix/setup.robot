*** Settings ***
Library    DotfilesLibrary
Default Tags    linux

*** Tasks ***
# Only needed if nix is being used as the package manager,
# But does not hurt otherwise.
Link
    Deep Link    *

