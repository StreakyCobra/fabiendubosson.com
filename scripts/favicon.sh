#!/usr/bin/env bash

# Usage: ../scripts/favicon.sh from the `static` directory

# Copy SVG logos as favicons
cp images/logo.svg favicon.svg
cp images/logo-dark.svg favicon-dark.svg

# Function to calculate the density to make favicon of correct size
calculate_density() {
  local original_size=$1
  local target_size=$2
  local original_dpi=$3
  echo "scale=2; $original_dpi / ($original_size / $target_size)" | bc
}

# Generate favicons
magick -density $(calculate_density 512 32 96) favicon.svg -background none favicon.ico
magick -density $(calculate_density 512 16 96) favicon.svg -background none favicon-16x16.png
magick -density $(calculate_density 512 32 96) favicon.svg -background none favicon-32x32.png
magick -density $(calculate_density 512 192 96) favicon.svg -background none android-chrome-192x192.png
magick -density $(calculate_density 512 512 96)  favicon.svg -background none android-chrome-512x512.png
magick -density $(calculate_density 512 180 96) favicon.svg -background none apple-touch-icon.png
