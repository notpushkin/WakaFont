# WakaFont

Font consisting of 'missing' radicals for [WaniKani][wk].

## Usage

### Web

Use it just like any icon font: import the CSS and add `<i class="radical-gun"></i>` somewhere in your code. Radicals will behave just like normal characters, but won't be selectable.

### Android

Try [this article][bbcoder] and let me know if it works. You'll want to use XML entity codes (like `&#xf100;`).

[bbcoder]: http://www.barebonescoder.com/2010/05/android-development-using-custom-fonts/

## Prerequisites

* potrace
* ImageMagick
* FontCustom

## Process

1. (manual) Get the API key, then call the `/radicals` method with all levels enabled
2. Download all the radical PNGs
3. Convert them to a format suitable for [potrace][pt] (and invert), then to SVG
4. Use [FontCustom][fc] to make a webfont & preview page

To make the font, run `./Shakefile.sh` and wait. If everything is OK, you'll get font, CSS and preview page in the `dist/` dir. If you just want to get PNGs or convert them to SVGs, you can run `python download.py` or `bash convert.sh`.

## License

All files except for `radicals.json` are licensed under WTFPL2. `radicals.json` is a modified WaniKani API output (personal info removed) and is subject to its Terms of Use.

[wk]: https://wanikani.com/
[pt]: http://potrace.sourceforge.net/
[fc]: http://fontcustom.com/