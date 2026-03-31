#!/bin/bash

set -e

REPO="dienvocomvexcojp/bump-version"
INSTALL_DIR="${INSTALL_DIR:-$HOME/.local/bin}"
BINARY_NAME="bump-version"

echo "Installing $BINARY_NAME..."

# Create install directory if it doesn't exist
mkdir -p "$INSTALL_DIR"

# Download the script from GitHub
curl -fsSL "https://raw.githubusercontent.com/$REPO/main/$BINARY_NAME" -o "$INSTALL_DIR/$BINARY_NAME"

# Make it executable
chmod +x "$INSTALL_DIR/$BINARY_NAME"

# Check if INSTALL_DIR is in PATH
if [[ ":$PATH:" != *":$INSTALL_DIR:"* ]]; then
    echo ""
    echo "WARNING: $INSTALL_DIR is not in your PATH."
    echo "Add it by running:"
    echo ""
    echo "  echo 'export PATH=\"$INSTALL_DIR:\$PATH\"' >> ~/.zshrc && source ~/.zshrc"
    echo ""
fi

echo "Successfully installed $BINARY_NAME to $INSTALL_DIR/$BINARY_NAME"
