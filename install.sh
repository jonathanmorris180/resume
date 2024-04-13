#!/bin/bash

if [ -r ./deps ]; then
  echo "Installing dependencies..." 
else
  echo "Dependencies file not found. Exiting..."
  exit 1
fi

if command -v tlmgr &> /dev/null; then
  echo "TeX Live is installed. Proceeding..."
else
  echo "TeX Live is not installed. Please install basictex."
  exit 1
fi

while read -r line; do
  echo "Starting $line..."
  sudo tlmgr install "$line"
done < ./deps

sudo fmtutil-sys --all
