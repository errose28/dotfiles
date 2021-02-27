#!/usr/bin/env sh

# Find the powerline script and source it.
# Script location will depend on the package manager used.

. ~/.shell.d/common/init-python.sh
# Used if powerline installed with python -m pip.
pip_powerline_dir="$(python -m site --user-site)"
powerline_dirs=""$pip_powerline_dir/powerline/bindings" "$HOME/.nix-profile/share" '/usr/share/powerline/bindings'"

for pl_dir in $powerline_dirs; do
    if [ -d "$pl_dir" ]; then
        export POWERLINE_DIR="$pl_dir"
        # Start powerline daemon to speed up startup.
        # Should be in PATH if powerline is installed.
        # powerline-daemon --quiet
        break
    fi
done

