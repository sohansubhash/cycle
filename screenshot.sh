#!/usr/bin/env bash

#make directory  /Users/sohan/Pictures/Screen\ Shots if it does not already exist

# remove Screen shot from the “Screen shot 2013–03–01 at 9:29 PM.”
defaults write com.apple.screencapture name ""

# sets screenshot location
defaults write com.apple.screencapture location /Users/sohan/Pictures/Screen\ Shots

# sets screenshot type
defaults write com.apple.screencapture type png

# Enable/Disable image shadows
defaults write com.apple.screencapture disable-shadow -bool true

# to apply all changes
killall SystemUIServer
