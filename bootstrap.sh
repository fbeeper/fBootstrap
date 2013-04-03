#!/bin/bash

# Make this script execution path-independent
export DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

successfully() {
  $* || (echo "failed" 1>&2 && exit 1)
}

# Check that Xcode command line tools are already there
clang_path=`which clang`
if [[ ! -f $clang_path ]]
then
	echo -ne "\x1B[00;31mYou need XCode command line tools to proceed\n\x1B[00m"
	exit -1
fi


################################################################[ GIT ]#########
echo "1st things 1st... (preconf based on https://github.com/thoughtbot/laptop)"
  $DOTFILES_DIR/git/git.sh


################################################################[ Basic SW ]####
echo "Installing SW to make my Macbook useful... (thanks to Homebrew)"
  $DOTFILES_DIR/sw/brew.sh
  $DOTFILES_DIR/sw/brew-dev.sh
  $DOTFILES_DIR/sw/linkbrew.sh


################################################################[ OSX ]#########
echo "Customizin OSX... (inspired by https://github.com/mathiasbynens/dotfiles)"
  $DOTFILES_DIR/config/osx.sh


################################################################[ OSX others ]##
echo "Setting RootFS to mount with 'noatime'..."
  successfully sh $DOTFILES_DIR/config/AlwaysMountRootFSWithNoatime_MacOSX.sh

echo "Adding some simple (and personal) customizations to zsh..."
  successfully ln -s $DOTFILES_DIR/config/fbeeper.zsh ~/.oh-my-zsh/custom/fbeeper.zsh
  echo "(i) Use ~/.localrc for private customizations"


################################################################[ Term+Vim ]####
echo "Installing fMacVim... (notice it pimps Terminal.app)"
  git clone git://github.com/fbeeper/fMacVim.git ~/.fMacVim
  cd ~/.fMacVim
  successfully ./install.sh
  defaults write org.vim.MacVim MMLastWindowClosedBehavior -int 1
  defaults write org.vim.MacVim AppleShowAllFiles -bool true
  defaults write org.vim.MacVim MMOpenInCurrentWindow 1
  defaults write org.vim.MacVim MMOpenFilesInTabs 1
  defaults write org.vim.MacVim MMUntitledWindow 0
  cd $(dirname "$0")


################################################################[ Dock Links ]##
echo "Run Dropbox to configure its folder..."
  successfully open /Applications/Dropbox.app
  successfully mkdir -p ~/Projects

echo "Adding some shortcuts to my Dock..."
  $DOTFILES_DIR/util/addFolderToDock.sh /Applications/ Applications
  $DOTFILES_DIR/util/addFolderToDock.sh /Users/fbeeper/ fbeeper
  $DOTFILES_DIR/util/addFolderToDock.sh /Users/fbeeper/Projects/ Projects
  $DOTFILES_DIR/util/addFolderToDock.sh /Users/fbeeper/Dropbox/ Dropbox
  $DOTFILES_DIR/util/addFolderToDock.sh /Users/fbeeper/Downloads/ Downloads
  killall Dock


################################################################[ Services ]####
echo "Add service+shortcut to..."
  if [[ ! -d ~/Library/Services/ ]]
  then
    mkdir -p ~/Library/Services/
  fi
  echo "...copy File or Directory path from Finder (Ctrl + Opt + Cmd + C)"
  cp -r $DOTFILES_DIR/config/copyFilePath.workflow ~/Library/Services/copyFilePath.workflow 
  defaults write pbs NSServicesStatus -dict-add '"(null) - copy file path - runWorkflowAsService"' '{ "key_equivalent" = "@^~c"; }'
  echo "...launch screensaver, consequently lock screen (Ctrl + Opt + Cmd + L)"
  cp -r $DOTFILES_DIR/config/screensaver.workflow ~/Library/Services/screensaver.workflow 
  defaults write pbs NSServicesStatus -dict-add '"(null) - MacVim-it - runWorkflowAsService"' '{ "key_equivalent" = "@^~o"; }'
  echo "...open File or Directory on MacVim (Ctrl + Opt + Cmd + O)"
  cp -r $DOTFILES_DIR/config/MacVim-it.workflow ~/Library/Services/MacVim-it.workflow 
  defaults write pbs NSServicesStatus -dict-add '"(null) - Start Screensaver (Lock Screen) - runWorkflowAsService"' '{ "key_equivalent" = "@^~l"; }'
  # http://www.hcs.harvard.edu/~jrus/site/cocoa-text.html (explanation on @^~)


################################################################[ The End ]#####
echo "DONE!"
echo "Remember that some stuff may only be operative after reboot (or simple user log out)"
echo "Take a look at Reminders.app to see what to do next (will open automatically)"
  
  automator -i "Register Bartender" $DOTFILES_DIR/util/reminder.workflow
  automator -i "Register DaisyDisk" $DOTFILES_DIR/util/reminder.workflow
  automator -i "Sync electrum!" $DOTFILES_DIR/util/reminder.workflow
  automator -i "Review all other app/sw licenses!" $DOTFILES_DIR/util/reminder.workflow
  automator -i "Cleanup all unwanted brew/cask app aliases in /Applications" $DOTFILES_DIR/util/reminder.workflow
  automator -i "Install apps purchased on the Mac AppStore" $DOTFILES_DIR/util/reminder.workflow
  automator -i "Install MacTex (already downloaded at ~/Downloads)" $DOTFILES_DIR/util/reminder.workflow  
  automator -i "Thank (and star Github repos :P) all people that made this possible!" $DOTFILES_DIR/util/reminder.workflow
  open "/Applications/Reminders.app"

echo -e "\n\x1B[00;33m More info in the README file, or at \x1B[00;34m http://github.com/fbeeper/dotfiles \x1B[00m"
echo -e "\x1B[00;33m All comments, ideas, code or/and cheers will be appreciated! \x1B[00m \n"
