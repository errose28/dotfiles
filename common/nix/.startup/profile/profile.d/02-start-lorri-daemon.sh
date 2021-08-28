if command -v lorri > /dev/null; then
    # Suppress output from background jobs and lorri itself if the daemon is already running.
    (lorri daemon > /dev/null 2>&1 &)
fi
