# Shell to have scripts sourced, in addition to common scripts.
shell="$1"

if [ "$shell" ] && [ -d  "$shell_dir"/"$shell" ]; then
    for file in  "$shell_dir"/"$shell"/*; do
        . "$file"
    done
fi

if [ -d "$shell_dir"/common ]; then
    for file in  "$shell_dir"/common/*; do
        . "$file"
    done
fi

