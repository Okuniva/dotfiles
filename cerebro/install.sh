#!/bin/bash

# Create Cerebro config directory if it doesn't exist
mkdir -p "$HOME/Library/Application Support/Cerebro"

# Create symlink for Cerebro config
ln -sf "$(pwd)/config.json" "$HOME/Library/Application Support/Cerebro/config.json"

echo "✅ Cerebro configuration has been installed"
