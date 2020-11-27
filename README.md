# Dotfiles

- These are the dotfiles for my current Linux setup, which conists of the following major components:

    - **Distro**: Arch
        - The individual config files should be mostly distro independent.
    - **Display Server**: [X.Org][xorg]
    - **Window Manager**: [i3][i3]
    - **Status Bar**: [polybar][polybar]
    - **Launcher/Window Switcher**: [rofi][rofi]

## Structure

- Each top level directory contains information for package.

- The contents of each package should be symlinked or copied to `$HOME` in order for the files to reside in the correct locations.

    - This structure is compatible with [Gnu Stow](stow), although I do not use Stow to maintain my dotfiles.

- Each package has a `setup` script that is used to automate deployment and should not be symlinked/copied.

    - See [Installing the Dotfiles](#installing-the-dotfiles) for more information.

## Installing the Dotfiles

- Symlinking and package installation is handled by the `deploy-dotfiles` script found in *deploy*.

- This script works, but is still in the early stages of development.

    - In the future, I hope to make it a more general purpose tool.

- Before running for the first time, bootstrap the script by using it to deploy itself.

    - Run `deploy/bin/deploy-dotfiles deploy`.

        - This will install the programs necessary to use the `deploy-dotfiles` script for furhter deployments.

        - This will also symlink the script to *~/bin* so it can be called from anywhere.

- To install a package run `deploy-dotfiles <package1> <package2> ...`

    - This will run the `setup` script for each package to create its symlinks and install its package dependencies in an idempotent manner.

    - Each `setup` script calls back to functions defined in `deploy-dotfiles`.

- On non-Arch based systems, this script will have to be modified so that the package installs are done using your distro's package manager instead of `yay`.

## Rofi Launchers and Switchers

- There are three main rofi switchers used, each controlled by a *.rasi* file in *rofi/.config/rofi*:

    1. An application launcher for searching and starting programs.

    2. A power menu for screen locking, sleeping, logging out, shutting down, and restarting.

        - The controls to execute these actions are in *rofi/bin/power_menu*

    3. A workspace independent window switcher.

## Interesting Features

- A python script that uses the [i3ipc][i3ipc-python] and [XLib][xlib] modules to snap the mouse location to the center of the focused window when the focused window is changed using the keyboard.

    - This can be found in *i3/bin/mouse-follows-focus*.

    - This script can be thought of as the *mouse_follows_focus* compliment to i3's built in *focus_follows_mouse* option.

    - Combined with i3's *focus_follows_mouse* option, this ensures that the mouse is always over the focused window.

- Mod + scroll up/down to adjust volume.

- Mod + Shift + scroll up/down to adjust screen brightness.

- Basic gesture support in i3 with [libinput-gestures][gestures].

[i3]: https://i3wm.org/
[polybar]: https://polybar.github.io/
[rofi]: https://github.com/davatorium/rofi
[ranger]: https://github.com/ranger/ranger
[stow]: https://www.gnu.org/software/stow/
[xorg]: https://www.x.org/wiki/
[i3ipc-python]: https://buildmedia.readthedocs.org/media/pdf/i3ipc-python/stable/i3ipc-python.pdf
[xlib]: http://python-xlib.sourceforge.net/doc/html/index.html
[gestures]: https://github.com/bulletmark/libinput-gestures
