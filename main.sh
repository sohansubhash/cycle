#!/usr/bin/env bash

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `macOS.sh` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

###############################################################################
# General                                                                     #
###############################################################################

# Use Graphite Appearance
defaults write NSGlobalDomain AppleAquaColorVariant -int 6

# Dark UI
defaults write NSGlobalDomain AppleInterfaceStyle -string "Dark"

# Use Graphite Highlight Color
defaults write NSGlobalDomain AppleHighlightColor -string "0.847059 0.847059 0.862745"

# Show scrollbars When scrolling
defaults write NSGlobalDomain AppleShowScrollBars -string "WhenScrolling"



# Show System Info at the Login Screen
defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName


