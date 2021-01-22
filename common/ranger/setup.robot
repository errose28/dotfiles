*** Settings ***
Library    DotfilesLibrary
Default Tags    linux    macos

*** Tasks ***
Install
    # w3m does image previews.
    # ffmpeg does video previews.
    Emit    Install
    ...    ranger
    ...    trash-cli
    ...    w3m
    ...    ffmpegthumbnailer
    ...    atool
    ...    zip
    ...    unzip

Link
    Deep Link    *

