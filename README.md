# Termux-ohmyzsh

A fork of [oh-my-termux](https://github.com/4679/oh-my-termux), Termux-ohmyzsh enhances the app with vibrant colors.

Termux-ohmyzsh integrates oh-my-zsh, [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting), and [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) into your Termux app. It also includes a variety of color schemes (most of which are sourced from [Gogh](https://github.com/Mayccoll/Gogh)) and Powerline fonts (adapted from [powerline/fonts](https://github.com/powerline/fonts)). The default configuration features the agnoster theme for oh-my-zsh, Solarized Dark as the color scheme, and Iosevka as the font.

**This repository requires the Termux official repository. In mainland China, you may need to add the Termux app to your proxy list to access the Termux official repository.**

## Installation

```shell
sh -c "$(curl -fsSL https://github.com/zyw271828/termux-ohmyzsh/raw/master/install.sh)"
```

## Changing the Color Scheme

To change the color scheme, run `chcolor` or execute the following command:

```shell
~/.termux/colors.sh
```

## Changing the Font

To change the font, run `chfont` or execute the following command:

```shell
~/.termux/fonts.sh
```

## Requirements

- curl

## Reverting to the Previous Environment

1. Under the home directory, you can find backup files for zshrc named with the date, such as `.zshrc.bak.2018.1.1-00:00:00`. Rename the backup file back to `.zshrc`. If no backups exist, remove the current `.zshrc` file.

2. You can also find backup directories for Termux configuration named with the date, such as `.termux.bak.2018.1.1-00:00:00`. Rename the backup directory back to `.termux`. If no backups exist, remove the current `.termux` directory.

3. Restart Termux.

## Tips (Refer to the Termux Wiki)

Use a two-finger pinch gesture to adjust the font size. Termux utilizes combinations with the volume keys to emulate certain shell functions:

- `VolDown+C`: `Ctrl+C`, sends SIGINT to interrupt the current process.
- `VolDown+D`: `Ctrl+D`, logs out of the current session.
- `VolDown+E`: `Ctrl+E`, moves the cursor to the end of the line in the shell.
- `VolDown+L`: `Ctrl+L`, clears the terminal screen.
- `VolDown+Z`: `Ctrl+Z`, sends SIGTSTP to suspend the current process.

You can use `VolUp+Q` to bring up an additional key bar, or you can use the following combinations:

- `VolUp+W/A/S/D`: Move the cursor up/left/down/right.
- `VolUp+E`: ESC.
- `VolUp+T`: TAB.
- `VolUp+Digits`: F1-F9, F10 is 0.
- `VolUp+L`: Pipe character "|".
- `VolUp+H`: Tilde character "~".
- `VolUp+U`: Underscore "_".
- `VolUp+V`: Volume control.

For an improved text input experience, swipe left on the `VolUp+Q` key bar.

## Example

Solarized Dark color scheme + oh-my-zsh agnoster theme + Iosevka font:

<p align="center"><img alt="Termux-ohmyzsh screenshot" src="./termux-ohmyzsh.png" width="250"/></p>
