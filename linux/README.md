# Linux Dotfiles

- Dotfiles for various Linux distributions.

- Currently, there are only install commands for Arch, but Ubuntu and and NixOS may be added in the future.

- Dotfiles are included for a Linux distro if there are tasks in their *.robot* files tagged for that distro.

    - Commands not tagged for a specific distro will be skipped when robot is used to deploy dotfiles with the *--include=\<distro>* option.