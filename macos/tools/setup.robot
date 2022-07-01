*** Settings ***
Library    DotfilesLibrary
Default Tags    macos

*** Tasks ***
Install Packages
    Install    koekeishiya/formulae/yabai
    Install    cliclick
    Install    watch
    Install    coreutils
    ...    nix=coreutils-full
    # Homebrew splits coreutils into some other packages, and requires
    # additional path edits.
    ...    brew=${NONE}

Link
    Deep Link    *

