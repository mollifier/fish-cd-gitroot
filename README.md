# fish-cd-gitroot

## Synopsis
Fish plugin to change directory to git repository root directory.

Port of [cd-gitroot](https://github.com/mollifier/cd-gitroot) for the fish shell.

## How to set up

### Installing using fisher
We recommend using [fisher](https://github.com/jorgebucaran/fisher) to install fish-cd-gitroot.

```
fisher add mollifier/fish-cd-gitroot
```

## Usage

```
cd-gitroot [PATH]
```

If PATH isn't specified, change directory to current git repository root directory.
else change directory to PATH instead of it.
PATH is treated relative path in git root directory.

## Options
\--help    display help and exit

