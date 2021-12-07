#!/usr/bin/env sh

brew() {
    pkg="$1"
    if ! command brew list "$pkg" > /dev/null 2>&1; then
        command brew install "$pkg"
    fi
}

nix() {
    pkg="$1"
    if ! nix-env --query --installed "$pkg" > /dev/null 2>&1; then
        nix-env -iA nixpkgs."$pkg"
    fi
}

"$@"
