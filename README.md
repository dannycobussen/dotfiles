# dotFiles

Using `stow` to simply create symlinks to all config.

## Setup
Use the following command to create symlinks at the correct places.

```sh
stow -v nvim zsh alacritty goodies git -t ~ --dot
```

This will setup the packages `nvim`, `zsh`, `alacritty` and `goodies` at the right spot.
The `--dot` makes sure all files and folders prefixed with `dot-` will be replaced with `.`.

## Remove

```sh
stow -D nvim zsh alacritty goodies git -t ~ --dot
```
