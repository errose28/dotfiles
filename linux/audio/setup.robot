# Restart required for changes to take effect.

# If bluetooth stops working (blueman-manager GUI won't start):
#     Try running the following two commands to reload the bluetooth kernel module:
#     sudo rmmod btusb
#     sudo modprobe btusb

# If a previously paired device cannot be discovered/paired:
#     Some devices cannot handle multiple connection to the same sound card (ex. having a pairing on Windwos and Linux dual boot).
#     In this case, remove the device pairing, systemctl restart --now bluetooth, then pair and connect the device.

*** Settings ***
Library    DotfilesLibrary
Default Tags    arch    nix

*** Tasks ***
Arch Install
    [Tags]    arch
    # Main audio drivers and control panel.
    Pacman Install
    ...    pavucontrol
    ...    pulseaudio
    ...    pulseaudio-alsa

    # Bluetooth.
    # blueberry is a more reliable front end than blueman.
    Pacman Install
    ...    pulseaudio-bluetooth
    ...    bluez
    ...    bluez-utils
    ...    blueberry

# Audio drivers set up by configuration.nix.
Nix Install
    [Tags]    nix
    # Main audio drivers and control panel.
    Nix Install
    ...    pavucontrol

    # Bluetooth.
    # blueberry is a more reliable front end than blueman.
    Nix Install
    ...    blueberry

Arch Services
    [Tags]    arch
    Enable Systemd Services    bluetooth

Nix Services
    [Tags]    Nix
    # Nix requires pulseaudio user service to be enabled.
    Enable Systemd Services    pulseaudio    user=True

Link
    Deep Link    *

