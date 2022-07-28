# Source this script to have homebrew installed and added to the current shell session.

# Install homebrew.
# From https://brew.sh
# No sudo required.
/usr/bin/env bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew=/opt/homebrew/bin/brew
[ -x "$brew" ] && eval "$("$brew" shellenv)"



