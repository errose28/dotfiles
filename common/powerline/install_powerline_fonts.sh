#!/usr/bin/env sh
clone_dir=/tmp/fonts
git clone --depth=1 https://github.com/powerline/fonts.git "$clone_dir"
"$clone_dir"/install.sh
rm -rf "$clone_dir"
