#!/bin/bash

mkdir -p png svg dist
echo "Downloading radicals..."
python download.py
echo "Converting them to SVGs..."
bash convert.sh
echo "Creating a font..."
fontcustom compile
mv dist/templates/preview.html dist/index.html
rmdir dist/templates