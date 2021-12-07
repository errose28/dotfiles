# Configuration for Shells

## Directories Added

- *"$STARTUP_DIR"/profile/profile.d*
    - All files here will be sourced by ~/.profile by login shells.
    - If a shell is added that does not source ~/.profile by default (zsh, for example), *~/.profile* should be added to the list of files it sources on login.
    - This allows different configurations to add environment variables easily by adding a file with their own variables to this directory.

- *"$STARTUP_DIR"/shell/<shell-name>*
    - All shells should source `"$STARTUP_DIR"/shell/load.sh <shell-name>` on startup.
    - Custom configuration for a shell can be added to the directory `"$STARTUP_DIR"/shell/<shell-name>`
    - Configuration for all shells can be added to the directoy `"$STARTUP_DIR"/shell/common`
    
