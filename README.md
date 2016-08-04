# WakaFont

Font consisting of 'missing' radicals for [WaniKani][wk].

## Usage

### Web

Use it just like any icon font: import the CSS and add `<i class="radical-gun"></i>` somewhere in your code. Radicals will behave just like normal characters, but won't be selectable.

### Android

Try [this article][bbcoder] and let me know if it works. You'll want to use XML entity codes (like `&#xf100;`).

[bbcoder]: http://www.barebonescoder.com/2010/05/android-development-using-custom-fonts/

## Process

The process used to be:

1. (manual) Get the API key, then call the `/radicals` method with all levels enabled
2. Download all the radical PNGs
3. Convert them to a format suitable for [potrace][pt] (and invert), then to SVG
4. Use [FontCustom][fc] to make a webfont & preview page

Now we just store all the SVGs in this repo, so just `fontcustom compile` it.
