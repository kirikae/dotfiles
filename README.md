```
              ▄▄                         ▄▄▄▄      ██     ▄▄▄▄
              ██              ██        ██▀▀▀      ▀▀     ▀▀██
         ▄███▄██   ▄████▄   ███████   ███████    ████       ██       ▄████▄   ▄▄█████▄
        ██▀  ▀██  ██▀  ▀██    ██        ██         ██       ██      ██▄▄▄▄██  ██▄▄▄▄ ▀
        ██    ██  ██    ██    ██        ██         ██       ██      ██▀▀▀▀▀▀   ▀▀▀▀██▄
        ▀██▄▄███  ▀██▄▄██▀    ██▄▄▄     ██      ▄▄▄██▄▄▄    ██▄▄▄   ▀██▄▄▄▄█  █▄▄▄▄▄██
          ▀▀▀ ▀▀    ▀▀▀▀       ▀▀▀▀     ▀▀      ▀▀▀▀▀▀▀▀     ▀▀▀▀     ▀▀▀▀▀    ▀▀▀▀▀▀
```
Setup Description
-----------------
These dotfiles are organised by role. As such, you can choose to install certain roles individually. The `./install.sh` script can be used to prompt for each role, and install, or not.
* Shell `bash`
* Browser `firefox`
* Text Editor `vim`

Installation
------------

1. Clone the repo. (Along with the current vim plugins)
 `git clone https://github.com/kirikae/.dotfiles --recursive ~/.dotfiles`
2. Change directory to dotfiles and install via GNU Stow
```
# Change to dir
cd ~/.dotfiles
# To install only those dotfiles related to vim
stow vim
```

A note on `vim`:
You will need to run :PlugInstall to install the plugins. These are not stored in this repo.
Alternatively, you can simply run the following instead:
`git clone https://github.com/kirikae/dotfile --recursive`
This should clone any of the sub-repos (primarily vim plugins). This may change in the future as I better organise everything.

NOTE: This has been tested and whatnot on a Fedora 28 Minimal install.

Thanks to Original Authors
--------------------------
Many different people have inspired the configuration and content of these dotfiles.
To name a couple:
* https://github.com/mohabaks/dotfiles
* https://github.com/dylanaraps/dotfiles
* https://github.com/rmw5601/dotfiles
* https://github.com/alxkt/dotfiles
