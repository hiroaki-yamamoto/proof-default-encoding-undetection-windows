# The proof that gulp shows "defaultEncoding of undefined" Error on Windows

## What is this?
The proof that gulp shows "defaultEncoding of undefined" Error on Windows
(As described on title...)

## Why this?
I created gulp-scss, but somehow someone (Perhaps everyone) use Windows though
many interpretors and languages are designed for OS X / Linux (and Nodejs and
Gulp are also designed for them, not windows).

Then, I made changes to gulp-scss to satisfy "their demands", but
Windows shows "defaultEncoding of undefined" error. If saying 4-chars dirty
word is accepted, definitely I do :shit:

## AppVeyor?
Here is AppVeyor Status (hopefully it should be green): (Oops! not available yet!)
[![Build status](https://ci.appveyor.com/api/projects/status/76ngqx902lprdise?svg=true)](https://ci.appveyor.com/project/hiroaki-yamamoto/proof-default-encoding-undetection-windows)

## Result
Somehow the problem couldn't be reproduced in this case...
