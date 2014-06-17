#!/bin/bash

for png in png/*.png; do
  pnm=${png//.png/.pnm}; svg=${png//png/svg}
  convert $png -negate -flatten $pnm
  potrace $pnm -s -o $svg
  rm $pnm
done
