# Dotfiles

Dotfiles for Linux and MacOS.

## Structure

- At the top level are directories for each operating system:
    - *common*: Contains dotfiles common to MacOS and Linux.
    - *linux*: Contains dotfiles specific to Linux.
    - *macos*: Contains dotfiles specific to MacOS.

- Within each OS directory, each subdirectory is a parcel, containing dotfiles, setup, and install commands for a program or related set of programs.

## Deployment

### Deploying With Robot

- The easiest way to deploy the dotfiles is with [Robot Framework](https://robotframework.org) with my custom [Dotfiles Library](https://github.com/errose28/DotfilesLibrary).

#### Setting Up Robot

- Install dependencies and bring them into the current shell's PATH.
    - Option 1: Run the following in your shell:
    ```shell
    DOTFILES=<path to git root directory of this repo>
    source bootstrap.sh
    ```

    - Option 2: If you are already using [direnv](https://direnv.net/), you can enable the repo's *.envrc* file to automatically load and unload the dependencies from your PATH when you enter and leave the directory.

        - The dotfiles contain a parcel to set up direnv once they are deployed.

- Both options will run the following steps:
    1. Install [asdf](https://asdf-vm.com/) from source to *~/.asdf*.
    2. Use asdf to install the latest version of python.
    3. Create and load a python virtual environment.
    4. Install pip packages from *requirements.txt* to the virtual environment.
    5. Set default options for the `robot` command when invoked.

    - On future runs, the installation steps will be skipped. Only the dependencies will be added to the PATH.

#### Invoking Robot

- Each parcel contains a *.robot* file with commands for linking dotfiles, installing programs, and other general setup for that parcel.

- All *.robot* setup files are idempotent.

- Tags are applied to Robot tasks to select which parcels to deploy. Current tags are:
    - `macos`: works on MacOS.
    - `linux`: works on Linux.
        - `xorg`: requires X window system on Linux.
        - `no-de`: Intended for use only on a Linux installation without a desktop environment.
    - `headless`: only requires a shell to work.

- Default options for Robot are set automatically in *.envrc* and *bootstrap.sh*, but more options can be added when Robot is run.
    - The `linux` or `macos` tag will be included automatically based on the result of `uname -s`.
    - The output directory for Robot logs is set to *.logs*.
    - Variables will be set to configure execution of the DotfilesLibrary.

- To deploy all dotfiles for the current OS with symlinks, run `robot .` from the top level directory.

- To additionally install required programs, run `robot -v INSTALL_WITH:<package manager> .`
    - `<package manager>` must be one of the functions defined in *installer.sh* corresponding to a package manager to use.

- After installing, some configurations will require logging out and back in to take effect.

### Manual Deployment

- In some cases, like `ssh`ing to a server, installing new packages may not be desired or permitted.

- The *headless.sh* script can be run from the top level directory to only symlink configs for headless dotfiles without installing anything.
    - This is a pure shell script with no dependencies.

- This is useful to configure common programs like bash and vim that most machines already have, even if you cannot or do not want to install anything new.
