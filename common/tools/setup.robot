*** Settings ***
Library    DotfilesLibrary
Default Tags    linux    macos

*** Tasks ***
Install Misc Packages
    [Tags]    headless
    Install    ncdu

Install Language Tools
    [Tags]    headless
    Install    pyenv
    ...    nix=${NONE}

Install Compression and Archive Packages
    [Tags]    headless
    Install    atool
    Install    zip
    Install    unzip

Install Preview Packages
    [Tags]    headless
    Install    exiftool
    ...    pacman=perl-image-exiftool
    # For pdftotext command:
    Install    xpdf
    Install    w3m
    Install    bat

Install Virtualization Packages
    Install    qemu
    Install    libvirt
    Install    virt-manager
    Install    virt-viewer

Install Desktop Packages
    Install    brave
    ...    pacman=${NONE}
    ...    aur=brave-bin

Link
    Deep Link    *

