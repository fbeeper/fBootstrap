#!/bin/bash

echo "Installing my personal developement envs..."
  brew install cmake
  brew cask install cmake # -> Kiteware gui
  brew cask install x-quartz
  brew install imagemagick
  brew cask install doxygen
  brew install graphviz
  brew install qt --developer
  brew tap homebrew/science
  brew install vtk --qt
  brew cask install qtcreator
  brew cask install paraview
  # brew cask install virtualbox -> even if it is an official cask it isn't .app
  brew cask install vncviewer
  brew cask install sourcetree
  brew install makeicns
  brew cask install texmaker

echo "Downloading MacTex package for you (manual install!)..."
  curl -OL http://mirror.ctan.org/systems/mac/mactex/MacTeX.pkg > ~/Downloads/MacTeX.pkg
  # assuming its future installation... :P
  echo "export PATH=\$PATH:/usr/texbin" >> ~/.zshrc
