# Dotfiles

Dotfiles for Linux and MacOS.

## Structure

- At the top level are directories for each operating system:
    - *common*: Contains dotfiles common to MacOS and Linux.
    - *linux*: Contains dotfiles specific to Linux.
    - *macos*: Contains dotfiles specific to MacOS.

- Within each OS directory, each subdirectory is a parcel, containing dotfiles, setup, and install commands for a program or related set of programs.

## Deployment

- Deploying dotfiles is handled using [Robot Framework](https://robotframework.org) with my custom [Dotfiles Library](https://github.com/errose28/DotfilesLibrary).

### Setting Up Robot

- These steps will set up a python virtual environment within the project directory to install Robot and required libraries.

1. Choose how to manage python.
    - Manually install python (not recommended).
    - Install [lorri](https://github.com/target/lorri) if using [nix](https://nixos.org/manual/nix/stable/).
    - Install [pyenv](https://github.com/pyenv/pyenv) otherwise.
2. Install [direnv](https://direnv.net/)

3. Hook direnv into your current shell: `eval "$(direnv hook <shell>)"`
    - After deploying the dotfiles, this will happen automatically.

4. Enter the dotfiles directory. Direnv should prompt you to allow it to run. Run `direnv allow` to approve.

5. Install dependencies with `python -m pip install -r requirements.txt`

### Using Robot

- Each parcel contains a *.robot* file with commands for linking dotfiles, installing programs, and other general setup for that parcel.

- All *.robot* setup files are idempotent.

- Tags are applied to Robot tasks to select which parcels to deploy. Current tags are:
    - `macos`: works on MacOS.
    - `linux`: works on Linux.
        - `xorg`: requires X window system on Linux.
        - `no-de`: Intended for use only on a Linux installation without a desktop environment.
    - `headless`: only requires a shell to work.

- Default options for Robot are set automatically in *.envrc*, but more options can be added when Robot is run.
    - The `linux` or `macos` tag will be included automatically based on the result of `uname --kernel-name`.
    - The output directory for Robot logs is set to *.logs*.
    - Variables will be set to configure execution of the DotfilesLibrary.

- To deploy all dotfiles for the current OS with symlinks, run `robot .` from the top level directory.

- To additionally install required programs, run `robot -v INSTALL_WITH:<package manager> .`
    - `<package manager>` must be one of the functions defined in *installers.sh* corresponding to a package manager to use.
