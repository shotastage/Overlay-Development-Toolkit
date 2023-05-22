#!/usr/bin/env bash


# Platform Check
detect_os() {
    if [ "$(uname)" == "Darwin" ]; then
        # macOS
        echo "macOS"
    elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
        # Linux
        echo "Linux"
    elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then
        # Windows (Cygwin)
        echo "Windows"
    else
        # Unknown OS
        echo "Unknown"
    fi
}


os=$(detect_os)


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
make build
cd
rm -rf .codk_setup
