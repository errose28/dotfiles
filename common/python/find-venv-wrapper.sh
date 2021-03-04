#!/usr/bin/env sh

# Currently no need to list possible paths, but this might change.
venv_wrapper_paths=""$(which virtualenvwrapper.sh)""

for venv_wrapper in $venv_wrapper_paths; do
    if [ -f "$venv_wrapper" ]; then
        export VENV_WRAPPER="$venv_wrapper"
        break
    fi
done

