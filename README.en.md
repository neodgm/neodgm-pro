# NeoDunggeunmo Pro

- [한국어 (Korean)](https://github.com/neodgm/neodgm-pro/blob/main/README.md)

<img src="https://neodgm.dalgona.dev/assets/images/neodgm_pro_demo.png" width="672">

**NeoDunggeunmo Pro** is a proportional bitmap font based on
[NeoDunggeunmo](https://github.com/neodgm/neodgm).

## Introduction

"Dunggeunmo-kkol" is a public domain bitmap font for DOS designed and released
by Jungtae Kim in 1990s, and it's still widely used in LED sign boards thanks
to its decent design. NeoDunggeunmo is a general-purpose TrueType font with
outline glyphs converted from the bitmap font and some original glyphs which
don't exist in the original font.

NeoDunggeunmo Pro is something beyond NeoDunggeunmo. It breaks free from 8x16
or 16x16 pixels boundaries, and each glyph takes just as much space as it
deserves. And with the kerning feature, which appropriately adjusts spacing
between certain character pairs, NeoDunggeunmo Pro is a versatile pixel font
which can be used anywhere outside terminal emulators.

Check out [the official website (Korean)](http://neodgm.dalgona.dev/neodgm_pro.html)
for more information.

## Downloads

This repository only contains source codes for the font. Use
[the Releases page](https://github.com/neodgm/neodgm-pro/releases) to download
the pre-built font files.

## Installing Fonts via Package Managers

### Homebrew (macOS, etc.)

You can install the font cask via Homebrew. These casks are provided by the
[neodgm/homebrew-neodgm](https://github.com/neodgm/homebrew-neodgm) tap.

```bash
$ brew tap neodgm/neodgm

$ brew install --cask font-neodunggeunmo-pro
```

> **CAUTION:**
>
> These packages below are not officially supported, and may not be up to date.
> The developer of NeoDunggeunmo Pro is not responsible for any issues caused by
> installing these packages. Please contact the package maintainers directly if
> you have any problem using these community packages.

### Arch Linux

Install `ttf-neodgm-pro` package from AUR (Arch User Repository).

```bash
# Git
$ git clone https://aur.archlinux.org/ttf-neodgm-pro.git
$ cd ttf-neodgm-pro
$ makepkg -si
```

```bash
# AUR Helpers (yay for example)
$ yay -S ttf-neodgm-pro
```

This AUR package is maintained by [@RieLCho](https://github.com/RieLCho). 💕

## Using Web Fonts

### Official Web Font Kit (neodgm-pro-webfont)

[neodgm/neodgm-pro-webfont](https://github.com/neodgm/neodgm-pro-webfont) is a
repository for the official NeoDunggeunmo Pro web font kits, and therefore it
gets updated as fast as possible when a new version of the font is released.
Check the `README.md` file of the repository for detailed instructions.

## Manually Building Fonts from the Source Code

It is enough in most cases to download and use pre-built font files. For some
adventurous geeks who want to modify the source code and build your own font
files, the build instruction is provided below:

1. The source code of NeoDunggeunmo Pro is written in Elixir programming
  language. Visit [the official Elixir website](https://elixir-lang.org) to
  install the appropriate version of Elixir for your operating system.

1. Clone this repository using Git.

    ```sh
    $ git clone https://github.com/neodgm/neodgm-pro.git
    ```

1. Enter these commands to build a TTF file.

    ```sh
    $ mix deps.get

    $ MIX_ENV=prod mix pixel_font.build
    ```

1. A file named `NeoDunggeunmoPro-Regular.ttf` will be created in your PWD.

## Typography Guildlines

If you are using this font to author contents which are to be displayed in
standard-DPI PC displays, follow the typography guidelines as much as possible
to deliver the best result.

https://neodgm.dalgona.dev/guides.html

(Sorry, this content is only provided in Korean for now.)

## Getting Involved

Please feel free to submit issues if...

- There are problems in pre-built font files you have downloaded,
- You want some glyphs to be added in NeoDunggeunmo Pro,
- Or you have other comments regarding this project.

## License

NeoDunggeunmo Pro font files and its source codes are distributed under SIL
Open Font License 1.1. Read the `LICENSE.txt` file for the full text of SIL
Open Font License 1.1.
