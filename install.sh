#!/usr/bin/env bash

# Install Homebrew

if [ -e /Applications/Xcode.app ]; then
    echo "Xcode is installed"
else
    echo "Xcode is not installed"
    exit 1
fi

cd
mkdir .codk_setup
cd .codk_setup
git clone https://github.com/shotastage/CoreOverlay.git
cd CoreOverlay
swift build
cd
rm -rf .codk_setup
