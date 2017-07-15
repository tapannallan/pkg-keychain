[![](https://img.shields.io/badge/Oh--My--Fish-pkg--keychain-00b0ff.svg?style=flat-square)][Oh-My-Fish]
[![](https://img.shields.io/badge/fisherman-jitakirin%2Fpkg--keychain-00b0ff.svg?style=flat-square)][fisherman]
![](https://img.shields.io/badge/License-MIT-707070.svg?style=flat-square)

# :key: [_keychain_][Keychain]
> Keychain helps you to manage SSH and GPG keys in a convenient and secure manner. Download and learn how to use Keychain on your Linux, Unix or MacOS system.

[Keychain] for [fish] ([Oh-My-Fish] / [fisherman]).

## Install
> _Note_: You need to have [Keychain] installed prior to adding it to [fish].

Install [Keychain] using homebrew:

```fish
brew install keychain
```

or your distro package manager:

```fish
# Debian / Ubuntu
apt install keychain

# Fedora
dnf install keychain

# OpenSUSE
zypper install keychain
```

And add the package to your [fish] using [Oh-My-Fish]:

```fish
omf install https://github.com/jitakirin/pkg-keychain
```

or [fisherman]:

```fish
fisher jitakirin/pkg-keychain
```

## Usage

The package adds a snippet into fish's `conf.d` directory so keychain
is loaded automatically.  By default keychain is started only with the
`--quiet` option, but you can customise those by setting
`keychain_init_args` variable, e.g.:

```fish
set -U keychain_init_args --quiet --confhost --timeout 60 --agents ssh,gpg

# to also load a key by default
set -U keychain_init_args --quiet --agents ssh,gpg id_ed25519
```

Note that `--eval` option is always passed to keychain so it generates
output that can be sourced by the shell.

## Note about `$SHELL`

[Keychain] (incorrectly) depends on the `SHELL` variable to decide on the
format to output environment variables in.

This variable is normally set by `login(1)` based on shell set in the
user's passwd entry and is meant to define user's preferred shell.

Although it may not be exactly right, given this is the only way to
make keychain work correctly under fish, this function will launch
`keychain` with `SHELL` set to fish.

This does not affect the environment outside of this function.

Still, given that there are other programs with this behaviour (e.g.
docker-machine) if fish is not your login shell, you may want to set
this variable to point to fish when running fish, like:

```fish
set -Ux SHELL $__fish_bin_dir/fish
```

# License

[MIT](http://opensource.org/licenses/MIT) © [Tom Hensel][Author]

[Author]: https://github.com/gretel
[Keychain]: http://www.funtoo.org/Keychain
[fish]: fishshell.com
[Oh-My-Fish]: https://github.com/oh-my-fish/oh-my-fish
[fisherman]: https://fisherman.github.io/
