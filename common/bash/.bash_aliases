# taken from archwiki to prevent nested ranger instances.
# ranger() {
    # if [ -z "$RANGER_LEVEL" ]; then
        # /usr/bin/ranger "$@"
    # else
        # exit
    # fi
# }

# Mirror the ranger shortcut I made to open an identical terminal in the same
# working diretory.
rr() {
    "$PREF_TERM" --working-directory "$(pwd)"
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
    docker rm -f "$(docker ps -a -q)"
}

backup() {
    rsync-backup
    borg-backup
}

# Remove dead symlinks in the provided directory and its subdirectoires.
clean-links() {
    find "$1" -xtype l -delete
}

helpless() {
    "$1" --help | less
}
