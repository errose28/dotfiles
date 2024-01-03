*** Settings ***
Library    DotfilesLibrary
Default Tags    macos

# Makes the following keyboard/mouse modifications:
# - Swap caps lock and escape.
# - Swap cmd/option on my external non-mac keyboard.
# - Remaps mouse buttons for logitech mouse on when used via bluetooth or dongle.
# - Reverse vertical scroll direction for external logitech mouse only (not trackpad).

*** Tasks ***
Install Packages
    Install    karabiner-elements

Link
    # NOTE: When a modification is made through the karabiner elements app, it will overwrite the symlink.
    # TODO: Support hardlinks in dotfiles library for this case.
    Deep Link    *

