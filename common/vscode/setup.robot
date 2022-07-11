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
    @{extensions_to_install} =    Split To Lines    ${contents}

    ${installed_extensions_result} =    Run Process    code    --list-extensions

    FOR     ${extension_to_install}    IN    @{extensions_to_install}
        ${is_installed} =    Get Lines Matching Regexp    ^${installed_extensions_result.stdout}$    ${extension_to_install}
        IF    "${is_installed}" == "${EMPTY}"
            Interactive    code     --install-extension=${extension_to_install}
        END
    END

