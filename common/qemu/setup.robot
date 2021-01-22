*** Settings ***
Library    DotfilesLibrary
Default Tags    linux    macos

*** Tasks ***
Install
    Emit    Install
    ...    qemu
    ...    OVMF

Link
    Deep Link    *

