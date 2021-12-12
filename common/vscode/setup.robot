*** Settings ***
Library    DotfilesLibrary    ignore=vscode_extensions.txt
Library    OperatingSystem
Library    String
Default Tags    linux    macos

*** Tasks ***
Install Packages
    Install    vscode
    ...    brew=visual-studio-code

Linux Link
    [Tags]    linux
    Set Target    ~/.config
    Deep Link    *

MacOS Link
    [Tags]    macos
    Set Target    ~/Library/Application Support
    Deep Link    *

Install Extensions
    ${contents} =    Get File    vscode_extensions.txt
    @{extensions} =    Split To Lines    ${contents}

    # vscode will skip extensions already installed.
    FOR     ${extension}    IN    @{extensions}
        Interactive    code     --install-extension=${extension}
    END

