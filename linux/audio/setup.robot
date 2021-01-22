# Restart required for changes to take effect.

# If bluetooth stops working (blueman-manager GUI won't start):
#     Try running the following two commands to reload the bluetooth kernel module:
#     sudo rmmod btusb
#     sudo modprobe btusb

# If a previously paired device cannot be discovered/paired:
#     Some devices cannot handle multiple connection to the same sound card (ex. having a pairing on Windows and Linux dual boot).
#     In this case, remove the device pairing, systemctl restart --now bluetooth, then pair and connect the device.

*** Settings ***
Library    DotfilesLibrary
Default Tags    linux

*** Tasks ***
Install
    Emit    Install
    ...    pavucontrol
    ...    blueberry

Link
    Deep Link    *

