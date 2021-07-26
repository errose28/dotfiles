#!/usr/bin/env bash

options() {
    delimiter="$1"
    printf "selection${delimiter}output"
}

keybinding() {
    echo 'ctrl-r'
}

prompt() {
    echo 'Pick one: '
}

run() {
    query="$1"
    selection="$2"
    # Do something with query and selection.
    echo "got $query $selection"
}

"$@"