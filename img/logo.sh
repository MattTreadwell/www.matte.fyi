#!/bin/bash

IMG=$(basename $1 .png)

echo "Resizing image to 200x100"
convert $1 -resize 200x100 $IMG.png
echo "Converting image to webp"
cwebp $IMG.png -o $IMG.webp
