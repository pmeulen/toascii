#!/usr/bin/env bash

# Get the directory of this script
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# File containing the Apple code signing identity to use
# Get the available identities using: security find-identity -v -p codesigning
# Use e.g. XCode->Accounts->Manage Certificates to get your code signing certificate
CODESIGN_FILE="$SCRIPT_DIR/codesigning_identity"

IDENTITY=""
if [ -f "$CODESIGN_FILE" ]; then
    IDENTITY=$(cat "$CODESIGN_FILE")
else
    echo "No $CODESIGN_FILE file found. Code signing will be skipped."
fi

# Requires pyinstaller
# e.g. "pip install pyinstaller"

if [ -n "$IDENTITY" ]; then
  pyinstaller --onefile toascii.py --target-arch universal2 --codesign-identity "$IDENTITY"
else
  pyinstaller --onefile toascii.py --target-arch universal2
fi