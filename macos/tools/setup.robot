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
    # Currently Chat GPT is only offered on MacOS
    Install    chatgpt

Link
    Deep Link    *

