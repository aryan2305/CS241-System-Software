#!/bin/bash

i=1
for file in ./nature_images/*.{jpg,jpeg}
do
    convert $file ./nature_images/$i.pdf
    i=$((i+1))
done

rm ./nature_images/*.jpg ./nature_images/*.jpeg

mkdir ~/image
cp ./nature_images/*.pdf ~/image/
du -h ~/image

for file in ~/image/*.pdf
do
    convert -resize 25% $file ~/image/temp.pdf
    rm $file
    mv ~/image/temp.pdf $file
done

du -h ~/image
