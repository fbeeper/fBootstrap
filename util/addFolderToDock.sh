#!/bin/bash

if [[ ! -d $1 ]]
then
  echo "You need to specify an existing destination folder"
  exit -1
else
  D_PATH=$1
fi

if [[ $2 == "" ]]
then
  echo "Warning! No name specified... using Path"
  D_NAME=$1
else
  D_NAME=$2
fi

defaults write com.apple.dock persistent-others -array-add "<dict><key>tile-data</key><dict><key>arrangement</key><integer>2</integer><key>displayas</key><integer>1</integer><key>file-data</key><dict><key>_CFURLString</key><string>$D_PATH</string><key>_CFURLStringType</key><integer>0</integer></dict><key>file-label</key><string>$D_NAME</string><key>file-type</key><integer>18</integer><key>showas</key><integer>2</integer></dict><key>tile-type</key><string>directory-tile</string></dict>"
