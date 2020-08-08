# .dotfiles

This repository contains all of my dotfiles

## Installing
My dotfiles are managed using GNU Stow.

To install on Linux Debian flavor run 
``` 
$ apt install stow
```

To get started, clone this repository into the your home directory
```
$ git clone git@github.com:humbertoluks/.dotfiles.git ~/.dotfiles
```
Goto to the clone folder and run stow git to symlink the necessary files.
use exampe: 
```
$ stow -vd ~/.dotfiles git -t ~/
```
