*** Settings ***
Library    DotfilesLibrary
Default Tags    linux    macos    headless

*** Tasks ***
Install Misc Packages
    Install    ncdu
    Install    drawio

Install Compression and Archive Packages
    Install    atool
    Install    zip
    Install    unzip

Install Preview Packages
    Install    exiftool
    ...    pacman=perl-image-exiftool
    # For pdftotext command:
    Install    xpdf
    Install    w3m
    # Requires universe repo for apt.
    Install    bat
    Install    jq
    # TODO: Find a way to mark installs as optional.
    Install    krb5
    ...    apt=krb5-user

Link
    Deep Link    *

