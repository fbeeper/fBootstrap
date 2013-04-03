fBootstrap
==========

Custom bootstrap installation and configuration for Mac. Kind of a "dotfiles
repo" too.

<br />
Introduction
============

In order to have easier reinstalls of my Mac, I did some scripts somewhere in
between of [Thoughtbot's Laptop](https://github.com/thoughtbot/laptop) and any
other [dotfiles](http://dotfiles.github.com) repo at Github. Briefly, the main
scripts are organized as follows:

* **bootstrap.sh**: Script that will command all the process.
* **sw/*.sh**: Scripts that will install all the software I need.
* **config/osx.sh**: Script that will set many custom settings to OSX.

Take a look at all the scripts, feel free to take some code (many pieces come
from others as well :P), ideas, customize it, improve it, or whatever you like!

And remember, this repository (as any dotfile repo) is meant for forking.

Enjoy!

<br />
Installation
============

Easy peasy:

	git clone git://github.com/fbeeper/fBootstrap.git ~/.fBootstrap 
	cd ~/.fBootstrap && ./bootstrap.sh

Pay attention to the installation/configuration process because some questions
will be asked. Sometimes easy ones as your Github user/email, sometimes more
difficult ones as your root credentials to be able to proceed!

<br />
Customization
=============

I think that most of these scripts are perfectly useful for anybody. However,
there are part that you should consider to adapt to fit your own needs: 

* **/sw/brew-dev.sh** is where I've gathered some installs that are very
  personal: I don't think most people will need Qt and VTK development libraries
  on their systems! :P
* Everything under **/config/osx.sh** customize MANY things... Take a look and
  decide previous to your install

<br />
What you get
============

An essential pack of software for your Mac:

* [Homebrew](http://mxcl.github.com/homebrew/)
* [Zsh](http://www.zsh.org) + [Oh my
  sh!](https://github.com/robbyrussell/oh-my-zsh)!
* [Dropbox](https://www.dropbox.com) 
* [The Unarchiver](http://wakaba.c3.cx/s/apps/unarchiver.html) 
* [Google Chrome](https://www.google.com/intl/en/chrome/browser/)
* [VLC Media Player](http://www.videolan.org/vlc/)
* [Spotify](https://www.spotify.com/)
* [Open Office](http://www.openoffice.org)
* [Skype](http://www.skype.com/)
* [Cyberduck](http://cyberduck.ch)
* [Bartender](http://www.macbartender.com)
* [BetterTouchTool](http://blog.boastr.net)
* [Coconutbattery](http://www.coconut-flavour.com/coconutbattery/)
* [DaisyDisk](http://www.daisydiskapp.com)

Leaving as it is, you also get these tools for developement:

* [CMake + CMake GUI](http://www.cmake.org)
* [X-Quartz](http://xquartz.macosforge.org)
* [Imagemagick](http://www.imagemagick.org)
* [Doxygen](http://www.stack.nl/~dimitri/doxygen/)
* [Graphviz](http://www.graphviz.org)
* [Qt development library](http://qt-project.org) (4.8.4 because of VTK)
* [QtCreator](http://qt-project.org) (missing in Homebrew package)
* [VTK](http://www.vtk.org)
* [VNC Viewer](http://www.realvnc.com) (keyboard works better!)
* [SourceTree](http://www.sourcetreeapp.com)
* [Makeicns](http://www.amnoid.de/icns/makeicns.html)
* [MacTex](http://tug.org/mactex/) (the only manual installation)
* [TexMaker](http://www.xm1math.net/texmaker/)

And last but not least, this bootstrap will install:

* [fMacVim](https://github.com/fbeeper/fMacVim)! Coooool! :D

Besides all this cool software, fBootstrap will add a couple of things you've
probably missed on your Mac OS for a long time:

* ``Ctrl`` + ``⌥`` + ``⌘`` + ``l`` shortcut to start your screensaver and lock
  screen! Blazing fast!
* ``Ctrl`` + ``⌥`` + ``⌘`` + ``c`` to copy file/dir paths from Finder. I know
  *drag and drop* is cool, but not as much as this shortcut!
* ``Ctrl`` + ``⌥`` + ``⌘`` + ``o`` to open files in fMacVim. Neat!  
  
And I programatically added links to ``/Applications``, ``~``, ``Projects`` (my
work), ``~/Dropbox``, and ``Downloads`` right into the Dock. Yay!

<br /> 
What's the future of fBootstrap?
--------------------------------

This is nowhere near to be perfect, so I expect to bring future updates.

**Nothing planned yet.**

I'd be pleased to hear any comments, ideas, code, questions, or whatever you may
want to say!

You'll easily find me at: [github.com/fbeeper](https://github.com/fbeeper), or
[@fbeeper](http://twitter.com/fbeeper).

<br />
Licensing and thanks...
-----------------------

I kept as much references as I could (in-line with the code) to the work of
others. But I'm going to be more clear: 

* Relative to the extracts of code I adapted from [Thoughtbot's
  Laptop](https://github.com/thoughtbot/laptop), they have a MIT License that I
  want to respect, read it here:
  [license](https://raw.github.com/thoughtbot/laptop/master/LICENSE).

* [Mathias Bynens](https://github.com/mathiasbynens/)' [OSX
  customizations](https://github.com/mathiasbynens/dotfiles/blob/master/.osx)
  haven't got a license, but I thank him for sharing them! 
  
* [Root FS 'noatime' mounting](https://gist.github.com/pklaus/931579) comes from
  another unlicensed code. Thanks to [Philipp
  Klaus](https://gist.github.com/pklaus/931579).

* Besides, I want to thank to all the people who made possible all the software
  that I'm able to install! This script is possible thanks to them, not to me :P
  

Relative to my work, I'd like to share it with the world under an simple clause:
If you use it the least you must choose something from this list.

* Make any constructive comment of my code. I'm here to learn.
* Contribute something to this scripts. Updates, fixes, features... Whatever!
* Donate bitcoins to: **1N3hiRq46tLgHmdU1UAQST7SA3SfKTfb75**

Besides that, I hope you are kind enough to reference any your sources whether
is my code or a code from a 3rd party!
