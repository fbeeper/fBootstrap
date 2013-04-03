#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "Linking Hombrewed apps and cleaning..."
  # Ommiting native linkapps because they make Spotlight unreachable symlinks
  # brew linkapps --system
  # brew cask linkapps
  osascript $SCRIPT_DIR/myBrewLinkApps.scpt
  osascript $SCRIPT_DIR/myCaskLinkApps.scpt
  brew cleanup

