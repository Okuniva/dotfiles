#!/usr/bin/env zsh

# Appium Drivers Installation and Management Script
# This script helps install, update, and manage Appium drivers

set -e

# Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
APPIUM_CONFIG_DIR="$SCRIPT_DIR/.appium"

show_usage() {
    echo "Usage: $0 [install|update|list|help]"
    echo ""
    echo "Commands:"
    echo "  install    Install Appium drivers from package.json (default)"
    echo "  update     Update all installed drivers to latest versions"
    echo "  list       List all installed drivers"
    echo "  help       Show this help message"
    echo ""
    echo "Available drivers in package.json:"
    echo "  - appium-uiautomator2-driver (Android)"
    echo "  - appium-xcuitest-driver (iOS)"
}

check_appium_installed() {
    if ! command -v appium &> /dev/null; then
        echo "Error: Appium is not installed globally."
        echo "Please install it first with: npm install -g appium"
        exit 1
    fi
}

install_drivers() {
    echo "Installing Appium drivers..."
    check_appium_installed
    
    echo "Installing Appium drivers from $APPIUM_CONFIG_DIR"
    
    # Navigate to the .appium directory and install drivers
    cd "$APPIUM_CONFIG_DIR"
    
    # Install drivers using npm (this will install the versions specified in package.json)
    npm install
    
    echo ""
    echo "✅ Appium drivers installed successfully!"
    list_drivers
    
    echo ""
    echo "Installed drivers:"
    echo "- UIAutomator2 Driver (Android)"
    echo "- XCUITest Driver (iOS)"
    echo ""
    echo "You can now use these drivers with Appium for mobile automation testing."
}

update_drivers() {
    echo "Updating Appium drivers..."
    check_appium_installed
    
    cd "$APPIUM_CONFIG_DIR"
    npm update
    
    echo ""
    echo "✅ Appium drivers updated successfully!"
    list_drivers
}

list_drivers() {
    echo ""
    echo "Installed Appium drivers:"
    appium driver list --installed
}

# Parse command line arguments
case "${1:-install}" in
    install)
        install_drivers
        ;;
    update)
        update_drivers
        ;;
    list)
        check_appium_installed
        list_drivers
        ;;
    help|--help|-h)
        show_usage
        ;;
    *)
        echo "Unknown command: $1"
        echo ""
        show_usage
        exit 1
        ;;
esac
