# Polybar has support for most extra features turned off by default in nixpkgs.
# Turn them all on here.
# Install with `nix-env -iA nixos.polybar-extra-support`
self: super:
{
    polybar-extra-support = super.polybar.override {
        alsaSupport = true;
        githubSupport = true;
        mpdSupport = true;
        pulseSupport = true;
        # Cannot have iw support and nl support.
        iwSupport = false;
        nlSupport = true;
        i3GapsSupport = true;
    };
}
