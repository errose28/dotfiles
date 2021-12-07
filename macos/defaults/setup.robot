*** Settings ***
Library    DotfilesLibrary
Default Tags    macos

*** Keywords ***
Defaults Write
    [Arguments]    @{args}
    Interactive    defaults     write   @{args}


*** Tasks ***
Set Defaults
	# Make long press repeating instead of showing alt char.
	Defaults Write    NSGlobalDomain    ApplePressAndHoldEnabled    -bool    false
	# Speed up window animations.
	Defaults Write    -g    NSWindowResizeTime    -float    0.0001

