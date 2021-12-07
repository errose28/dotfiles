*** Settings ***
Library    DotfilesLibrary
Default Tags    linux    macos    headless

*** Tasks ***
# Only needed if nix is being used as the package manager,
# But does not hurt otherwise.
Link
    Deep Link    *

Install Packages
    Install    nix=nix-zsh-completions
    Install    nix=nix-bash-completions
    # direnv used to automatically enable nix-shells and lorri.
    Install    direnv
    Install    lorri

