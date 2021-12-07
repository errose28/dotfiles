*** Settings ***
Library    DotfilesLibrary
Default Tags    linux    macos    headless

# Scripts to be sourced by shells on startup.

*** Tasks ***
Link
    Add Ignore    README.md
    Deep Link    *
