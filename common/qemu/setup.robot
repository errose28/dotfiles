*** Settings ***
Library    DotfilesLibrary
Default Tags    linux    macos

*** Tasks ***
Install
    Emit    Install
    ...    qemu
    ...    libvirt
    ...    virt-manager
    ...    virt-viewer

