# Use .localrc for SUPER SECRET CRAP that you don't
# want in your public, versioned repo. (https://github.com/cobyism/dotfiles/blob/master/zsh/zshrc.symlink)
if [[ -a ~/.localrc ]]
then
  source ~/.localrc
fi

# Simple navigation
alias ..="cd .."
alias ~="cd ~"
alias cd..='..'

# Show/hide hidden files in Finder (https://github.com/mathiasbynens/dotfiles/blob/master/.aliases)
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

#########
# Other #
#########
export GREP_OPTIONS="--color"
export CLICOLOR=true

# Zsh
CASE_SENSITIVE="true"

# Nicer history
export HISTSIZE=100000
export HISTFILE="$HOME/.zshistory"
export SAVEHIST=$HISTSIZE
export HISTCONTROL=ignoredups

# Use vim as the editor
export EDITOR=vim
alias vi="vim"
alias mvim="open -a MacVim"

