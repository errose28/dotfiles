# Configuration for Shells

## Directories Added

- *~/.profile.d*
    - All files here will be sourced by ~/.profile by login shells.
    - If a shell is added that does not source ~/.profile by default (zsh, for example), *~/.profile* should be added to the list of files it sources on login.
    - This allows different configurations to add environment variables easily by adding a file with their own variables to this directory.

- *~/.shell.d*
    - All shells should call `~/.shell.d/init-scripts.sh <shell-name>` on startup.
    - This will output a list of scripts that this shell should source.
    - Currently supported values for `<shell-name>` are `bash` and `zsh`.
    
