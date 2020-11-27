*** Settings ***
Library    DotfilesLibrary
Default Tags    arch    macos

*** Tasks ***
Pacman Install
    [Tags]    arch
    # w3m does image previews.
    # ffmpeg does video previews.
    Pacman Install
    ...    ranger
    ...    trash-cli
    ...    w3m
    ...    ffmpegthumbnailer
    ...    atool
    ...    zip
    ...    unzip

MacOS Install
    [Tags]    macos
    # w3m does image previews.
    # ffmpeg does video previews.
    Brew Install
    ...    ranger
    ...    trash-cli
    ...    w3m
    ...    ffmpegthumbnailer
    ...    atool
    ...    zip
    ...    unzip

Link
    Deep Link    *

