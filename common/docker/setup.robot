*** Settings ***
Library    DotfilesLibrary
Default Tags    arch    macos

*** Tasks ***
MacOS Install
    [Tags]    macos
    # Might need to do other stuff for docker I don't remember.
    Brew Cask Install    docker

Pacman Install
    # TODO: Add user to the docker group and other setup.
    [Tags]    arch
    Pacman Install    docker

Link
    Deep Link    *

