*** Settings ***
Library    DotfilesLibrary
Default Tags    arch    nix    macos

*** Tasks ***
MacOS Install
    [Tags]    macos
    # Might need to do other stuff for docker I don't remember.
    Brew Cask Install
    ...    docker
    ...    docker-compose

Pacman Install
    # TODO: Add user to the docker group and other setup.
    [Tags]    arch
    Pacman Install
    ...    docker
    ...    docker-compose

Nix Install
    # TODO: Add user to the docker group and other setup.
    [Tags]    nix
    Nix Install
    ...    docker
    ...    docker-compose

Link
    Deep Link    *

