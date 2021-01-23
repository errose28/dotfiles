# Dotfiles

- Dotfiles for MacOS and various Linux distributions.

## Structure

- At the top level are directories for each operating system:
    - *common*: Contains dotfiles common to MacOS and Linux distros.
    - *linux*: Contains dotfiles specific to various Linux distros.
    - *macos*: Contains dotfiles specific to MacOS.

- Within each OS directory, each subdirectory is a package, containing dotfiles, setup, and install commands for one program.

## Deployment with Robot Framework

- Deploying dotfiles is handled using [Robot Framework](https://robotframework.org) with my custom [Dotfiles Library](https://github.com/errose28/DotfilesLibrary).
    - Each package contains a *.robot* file with commands for linking dotfiles, installing programs, and other general setup for that program.

- Installation of programs is done by registering a robot framework listener to the `Emit` keyword of the DotfilesLibrary, which the robot files will forward installation instructions to.

    - Listeners I use for installation are kept at [DotfilesLibraryListeners](https://github.com/errose28/DotfilesLibraryListeners)

    - Installation of programs can be skipped by not registering a listener.

- *bootstrap.sh* at the top level directory will install robot framework, the dotfiles library, and listeners using pip.

- All *.robot* setup files are idempotent.

- Tasks that are specific to one OS are tagged as such.

- To deploy all dotfiles for linux, for example, run `robot --include=linux .` from the top level directory.

    - This will skip all tasks in the *macos* directory, because they are tagged as *macos*.

    - This will only run commands from the *linux* and *common* directories that have been tagged as being for Linux.

