*** Settings ***
Library    DotfilesLibrary
Default Tags    linux    macos

*** Tasks ***
Install Packages
    Install    zsh
    Install    zsh-autosuggestions
    Install    zsh-syntax-highlighting
    Install    zsh-powerlevel10k
    ...    pacman=zsh-theme-powerlevel10k
    # Homebrew tap: https://github.com/romkatv/homebrew-powerlevel10k
    ...    brew=romkatv/powerlevel10k/powerlevel10k

    # NerdFonts for powerlevel10k.
    # TODO: Save the ttf files from here instead: https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k
    # Most package managers will not have the patched fonts.
    Install    meslo-lgs-nf
    ...    pacman=powerline-fonts

Link
    Deep Link    *

