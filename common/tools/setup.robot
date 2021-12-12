*** Settings ***
Library    DotfilesLibrary
Default Tags    linux    macos    headless

*** Tasks ***
Install Misc Packages
    Install    ncdu

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
    Install    bat
    Install    krb5

Link
    Deep Link    *

