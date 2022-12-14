#!/usr/bin/env bash

# Install Homebrew

if [ -e /Application/Xcode.app ]; then
    echo "Xcode is installed"
else
    echo "Xcode is not installed"
    exit 1
fi
