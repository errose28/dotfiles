*** Settings ***
Library    DotfilesLibrary    ignore=vscode_extensions.txt
Library    OperatingSystem
Library    String
Default Tags    arch    macos

*** Tasks ***

### MacOS ###

MacOS Install
    [Tags]    macos
    Brew Cask Install    visual-studio-code

MacOS Link
    [Tags]    macos
    Set Target    ~/Library/Application Support/Code/User
    Deep Link    *

### Arch ###

Arch Install
    [Tags]    arch
    Yay Install    visual-studio-code-bin

Arch Link
    [Tags]    arch
    Set Target    ~/.config/Code/User
    Deep Link    *

### Common ###

Install Extensions
    ${contents} =    Get File    vscode_extensions.txt
    @{extensions} =    Split To Lines    ${contents}

    # vscode will skip extensions already installed.
    FOR     ${extension}    IN    @{extensions}
        DotfilesLibrary.Interactive    code     --install-extension='${extension}'
    END

