*** Settings ***
Library    DotfilesLibrary    ignore=vscode_extensions.txt
Library    OperatingSystem
Library    String
Library    Process
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

    ${installed_extensions_result} =    Run Process    code    --list-extensions

    FOR     ${extension}    IN    @{extensions}
        ${is_installed} =    Get Lines Containing String    ${installed_extensions_result.stdout}    ${extension}
        IF    "${is_installed}" == "${EMPTY}"
            Interactive    code     --install-extension=${extension}
        END
    END
