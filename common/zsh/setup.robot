*** Settings ***
Library    DotfilesLibrary
Library    OperatingSystem
Default Tags    linux    macos    headless

*** Tasks ***
Install Packages
    Install    zsh
    Install    zsh-autosuggestions
    Install    zsh-syntax-highlighting

Common Link
    Add Ignore    *.ttf
    Deep Link    *

MacOS Link
    [Tags]    macos
    # Fonts do not work if symlinked on MacOS.
    Copy Files    *.ttf    %{HOME}/Library/Fonts

Linux Link
    [Tags]    linux
    Set Target    %{HOME}/.local/share/fonts
    Deep Link    *.ttf

