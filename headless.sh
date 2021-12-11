#!/usr/bin/env sh

# Symlinks headless dotfiles if python or general install priviledges are not available.
# Just run this script, no additional bootstrap operations are required.
# Useful for ssh.

set -e

TARGET="$HOME"

deep_link() {
    parcel="$(realpath "$1")"
    echo "Linking parcel $parcel"
    # Make all $file paths relative to the parcel.
    cd "$parcel"
    for file in $(find . -type f); do
        case "$(basename "$file")" in
            *.md) ;;
            *.robot) ;;
            *)
                mkdir -p "$(dirname "$TARGET"/"$file")"
                ln -svfb "$parcel"/"$file" "$TARGET"/"$file"
            ;;
        esac
    done
    cd -
}

cd common
deep_link bash
deep_link direnv
deep_link git
deep_link lf
deep_link nix
deep_link readline
deep_link shell
deep_link tmux
deep_link tools
deep_link vim
deep_link zsh

