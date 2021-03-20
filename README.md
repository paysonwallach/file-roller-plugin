<div align="center">
  <h1>File Roller Plugin</h1>
  <p>Pantheon Files plugin providing easy archive creation through File Roller.</p>
  <a href="https://github.com/paysonwallach/file-roller-plugin/releases/latest">
    <img alt="Version 0.1.0" src="https://img.shields.io/badge/version-0.1.0-red.svg?cacheSeconds=2592000&style=flat-square" />
  </a>
  <a href="https://github.com/paysonwallach/file-roller-plugin/blob/master/LICENSE" target="\_blank">
    <img alt="Licensed under the GNU General Public License v3.0" src="https://img.shields.io/github/license/paysonwallach/file-roller-plugin?style=flat-square" />
  <a href=https://buymeacoffee.com/paysonwallach>
    <img src=https://img.shields.io/badge/donate-Buy%20me%20a%20coffe-yellow?style=flat-square>
  </a>
  <br>
  <br>
</div>

[File Roller Plugin](https://github.com/paysonwallach/file-roller-plugin) is a plugin for [Pantheon Files](https://github.com/elementary/files) which allows for easy creation of archives, such as tar or zip files, from selected items using [File Roller](https://gitlab.gnome.org/GNOME/file-roller).

## Installation

### Dependencies

[File Roller Plugin](https://github.com/paysonwallach/file-roller-plugin) depends on [File Roller](https://gitlab.gnome.org/GNOME/file-roller) to create archives from .

Clone this repository or download the [latest release](https://github.com/paysonwallach/file-roller-plugin/releases/latest).

```shell
git clone https://github.com/paysonwallach/file-roller-plugin
```

Configure the build directory at the root of the project.

```shell
meson --prefix=/usr build
```

Install with `ninja`.

```shell
ninja -C build install
```

## Contributing

Pull requests are welcome! For major changes, please open an issue first to discuss what you would like to change. By participating in this project, you agree to abide by the terms of the [Code of Conduct](https://github.com/paysonwallach/file-roller-plugin/blob/master/CODE_OF_CONDUCT.md).

## License

[File Roller Plugin](https://github.com/paysonwallach/file-roller-plugin) is licensed under the [GNU General Public License v3.0](https://github.com/paysonwallach/file-roller-plugin/blob/master/LICENSE).
