*** Settings ***
Library    DotfilesLibrary
Default Tags    linux    macos

*** Tasks ***
# Only needed if nix is being used as the package manager,
# But does not hurt otherwise.
Link
    Deep Link    *

Install
    Emit    Insall
    ...    nix-zsh-completions
    ...    nix-bash-completions
    # direnv used to automatically enable nix-shells and lorri.
    ...    direnv
    ...    lorri

