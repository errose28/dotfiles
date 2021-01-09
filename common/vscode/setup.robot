*** Settings ***
Library    DotfilesLibrary    ignore=vscode_extensions.txt
Library    OperatingSystem
Library    String
Default Tags    arch    nix    macos

*** Tasks ***

### MacOS ###

MacOS Install
    [Tags]    macos
    Brew Cask Install    visual-studio-code

MacOS Link
    [Tags]    macos
    Set Target    ~/Library/Application Support
    Deep Link    *

### Linux ###

Arch Install
    [Tags]    arch
    Yay Install    visual-studio-code-bin

Nix Install
    [Tags]    nix
    Nix Install    vscode

Linux Link
    [Tags]    arch    nix
    Set Target    ~/.config
    Deep Link    *

### Common ###

Install Extensions
    ${contents} =    Get File    vscode_extensions.txt
    @{extensions} =    Split To Lines    ${contents}

    # vscode will skip extensions already installed.
    FOR     ${extension}    IN    @{extensions}
        DotfilesLibrary.Interactive    code     --install-extension=${extension}
    END

