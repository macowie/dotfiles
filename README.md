# maddie's cool dotfiles

## Setup with [stow](https://www.gnu.org/software/stow/)

Clone the repo and stow the 'packages' you want to use from it. This will symlink the nested files within to your home directory.

```bash
$ cd ~
$ git clone https://github.com/macowie/dotfiles 
$ cd dotfiles
$ stow nvim 
```

Or, if cloning to a folder that isn't directly under ~

```bash
$ cd ~
$ git clone https://github.com/macowie/dotfiles Code/dotfiles
$ cd Code/dotfiles
$ stow --target=../.. nvim 
```
