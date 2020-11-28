# DisplayLink is necessary to use multiple monitors with a dock, but not plugging monitors into the laptop directly.
#
# Instructions for DisplayLink setup were taken from this article:
# https://savoisn.github.io/post/displaylink_on_arch/
#
# linux-headers (or linux-lts-headers if using lts kernel) should be installed if not done so already.

*** Settings ***
Library    DotfilesLibrary
Default Tags    arch

*** Tasks ***
Arch Install
    [Tags]    arch
    # Should install evdi driver.
    Yay Install    displaylink

    Pacman Install
    ...    autorandr
    ...    arandr

Link
    Shallow Link    .config/autorandr

Services
    Enable Systemd Services    displaylink

# Not sure if this is necessary.
Modprobe
    Interactive    sudo    modprobe    udl

