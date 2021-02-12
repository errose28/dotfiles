# Polybar has support for most extra features turned off by default in nixpkgs.
# Turn them all on here.
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
