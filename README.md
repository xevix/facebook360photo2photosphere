Facebook 360 Photo to Photosphere Converter
===========================================

**Description**

Facebook 360 photos are not presently readily downloadable from Facebook and only viewable in VR via the Gear VR.
This simplistic script converts a Facebook 360 photo into a Google Cardboard / Photosphere compatible image.

**NB:** This script is quite raw and unrefined by design. Feel free to improve as you see fit to your own needs.

**Notice:** Facebook and Facebook 360 photos are copyright/trademark of Facebook Inc., Google and Google Cardboard are similarly copyright/trademark of Google Inc. I do not own any of this, and will remove this if requested by either party.

Dear Facebook: I love the addition of 360 photo uploads to Facebook. Please kindly consider allowing us to download these photos as Photospheres, since clearly Photosphere uploads are supported. If we want to talk about openness of our data, it has to be a two-way street.

## Requirements

* ImageMagick (`convert`)
* cube2sphere
  * Blender
* exiftool

On OSX via Homebrew and pip, install like so:

`brew install imagemagick exiftool && sudo pip install cube2sphere`

Cube2sphere requires Blender. Install via Blender's site, then ensure the `blender` binary is in your PATH.

## Instructions

1. Download the 360 image source from Facebook

  a. Browse to the 360 photo on whoever's wall it is at, but don't click to open the carousel viewer.

  b. Open your browser's "network" tab to monitor file download requests

  c. Click the photo to open the carousel viewer, triggering the download of the 360 photo file

  d. Inspect the network tab for the largest image file downloaded, and save this image to this script's path as `facebook_pano.jpg`

  e. Open the image. There should be 6 square images stacked vertically. If so, you have the right file.

2. Ensure the `facebook_pano.jpg` file is named as such, and move it into this script's directory if it isn't there already.

3. `sh ./fb2ps.sh` from this script's path

4. Output should be named `PANO_facebook_pano_out.jpg`

Now you can load this file into the StreetView app, or view via Cardboard Demos → Photosphere if on Android.

Enjoy!

## TODO

* Obvious refactors into variables instead of copy+pasta
* Read filename as command line argument
* Error handling
* Better quality image `convert` params
* More automated installation of requirements

## License

The MIT License (MIT)

Copyright (c) 2016 by Alejandro Wainzinger

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
