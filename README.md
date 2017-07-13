[![](https://img.shields.io/badge/Wahoo-Package-00b0ff.svg?style=flat-square)][Wahoo]
![](https://img.shields.io/badge/License-MIT-707070.svg?style=flat-square)

# :key: [_keychain_](http://www.funtoo.org/Keychain)
> Keychain helps you to manage SSH and GPG keys in a convenient and secure manner. Download and learn how to use Keychain on your Linux, Unix or MacOS system.

Keychain for [Wahoo][Wahoo] / [fish](fishshell.com).

## Install
> _Note_: You need to have `keychain` installed prior to loading Wahoo.

Install `keychain` using homebrew:

```fish
brew install keychain
```

And add the package to your Wahoo:

```fish
wa g keychain
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

# License

[MIT](http://opensource.org/licenses/MIT) © [Tom Hensel][Author]

[Author]: https://github.com/gretel
[Wahoo]: https://github.com/bucaran/wahoo
