#!/bin/bash

packs=( example-pack1 example-pack2 ) #Enter the names of pack directories within the "packs" directory
for i in "${packs[@]}"
do
    rm -f ./web/$i.json
    rm -f ./packs/$i/pack.json
    sticker-pack --add-to-index web/ ./packs/$i
done
