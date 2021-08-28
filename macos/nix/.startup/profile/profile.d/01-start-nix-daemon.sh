# For some reason this does not run automatically on MacOS when using nix.
nix_daemon=/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh
if [ -f "$nix_daemon" ]; then
    . "$nix_daemon"
fi
