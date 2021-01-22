*** Settings ***
Library    DotfilesLibrary
Default Tags    linux    macos

*** Tasks ***
Install
    # TODO: Add user to the docker group and other setup.
    Emit    Install
    ...    docker
    ...    docker-compose

Link
    Deep Link    *

