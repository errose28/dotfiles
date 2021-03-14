#!/usr/bin/env sh
# Functions shared between shells.

# Launch ranger, and go to its last directory in shell when it exits.
r() {
    local dir_file="/tmp/rangerdir$$"
    ranger --choosedir="$dir_file"
    cd "$(cat "$dir_file")"
    rm "$dir_file"
}

# Create a new tmux session attached to an existing one.
# Cannot be run from inside tmux.
t() {
    tmux new-session -t "$1"
}

# Print the size of a directory or file.
sizeof() {
    for dir in "$@"
    do
        du -shL "$dir"
    done
}

# List all files currently being tracked on the current branch.
git-tracked() {
    git ls-tree -r "$(git branch --show-current)" --name-only
}

# Kill and Remove any docker containers.
rm-containers() {
    docker stop "$(docker ps -aq)"
    docker rm "$(docker ps -aq)"
}

# Remove dead symlinks in the provided directory and its subdirectoires.
clean-links() {
    find "$1" -xtype l -delete
}

helpless() {
    "$1" --help | less
}

git-root() {
    cd "$(git rev-parse --show-toplevel)"
}
