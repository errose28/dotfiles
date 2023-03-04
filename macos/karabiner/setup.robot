*** Settings ***
Library    DotfilesLibrary
Default Tags    macos

# Config should swap caps/escape, and swap cmd/option on my external non-mac keyboard.
# Also remaps mouse buttons for logitech mouse on when used via bluetooth or dongle.

*** Tasks ***
Install Packages
    Install    karabiner-elements

Link
    # NOTE: When a modification is made through the karabiner elements app, it will overwrite the symlink.
    # TODO: Support hardlinks in dotfiles library for this case.
    Deep Link    *

