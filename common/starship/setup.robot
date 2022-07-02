*** Settings ***
Library    DotfilesLibrary
Default Tags    linux    macos    headless

*** Tasks ***
Install Packages
    # For non-MacOS, need to install with 'curl https://starship.rs/install.sh | sh'
    Install    brew=starship
Link
    Deep Link    *
