*** Settings ***
Library    DotfilesLibrary
Default Tags    macos

# Will need to manually configure menu bar and notification center.

*** Keywords ***
Defaults Write
    [Arguments]    @{args}
    Interactive    defaults     write   @{args}


*** Tasks ***
Global Settings
    # Make long press repeating instead of showing alt char.
    # Does not work with -g option.
    Defaults Write    NSGlobalDomain    ApplePressAndHoldEnabled    -bool    false
    # Speed up window animations.
    Defaults Write    -g    NSWindowResizeTime    -float    0.0001
    Defaults Write    -g    InitialKeyRepeat    -int    10
    Defaults write    -g    KeyRepeat    -int    1
    # 1 is orange. Can only use numbers.
    Defaults Write    -g    AppleAccentColor    1

Dock Settings
    Defaults Write    com.apple.dock    orientation    -string    left
    Defaults Write    com.apple.dock    autohide    -bool    true
    Defaults Write    com.apple.dock    tilesize    -integer    45
    # Only show open apps in the dock.
    Defaults Write    com.apple.dock    static-only    -bool    true
    # Fastest animation for minimizing windows.
    Defaults Write    com.apple.dock    mineffect    -string    scale
    Defaults Write    com.apple.dock    no-bouncing    -bool    true

Menu Bar Settings
    ### These do not seem to take effect and may need to be set manually. ###

    # Set visible items in menu bar.
    # 0 means visible only when active, 1 means always visible.
    Defaults Write    com.apple.controlcenter    "NSStatusItem Visible Battery"    1
    Defaults Write    com.apple.controlcenter    "NSStatusItem Visible Bluetooth"    1
    Defaults Write    com.apple.controlcenter    "NSStatusItem Visible Clock"    1
    Defaults Write    com.apple.controlcenter    "NSStatusItem Visible KeyboardBrightness"    1
    Defaults Write    com.apple.controlcenter    "NSStatusItem Visible NowPlaying"    0
    Defaults Write    com.apple.controlcenter    "NSStatusItem Visible Sound"    1
    Defaults Write    com.apple.controlcenter    "NSStatusItem Visible WiFi"    1
    # Set ordering of items in menu bar.
    # lower -> higher number indicates right -> left order.
    Defaults Write    com.apple.controlcenter    "NSStatusItem Preferred Position Battery"    185
    Defaults Write    com.apple.controlcenter    "NSStatusItem Preferred Position Bluetooth"    286
    Defaults Write    com.apple.controlcenter    "NSStatusItem Preferred Position KeyboardBrightness"    354
    Defaults Write    com.apple.controlcenter    "NSStatusItem Preferred Position WiFi"    318
    Defaults Write    com.apple.controlcenter    "NSStatusItem Preferred Position Sound"    360
    Defaults Write    com.apple.controlcenter    "NSStatusItem Preferred Position NowPlaying"    388

Run Applescript Based Settings
    Interactive    ${CURDIR}/preferences.applescript

