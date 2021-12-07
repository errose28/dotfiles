*** Settings ***
Library    DotfilesLibrary
Default Tags    linux    macos

*** Tasks ***
Install Packages
    Install    qemu
    Install    libvirt
    Install    virt-manager
    Install    virt-viewer

