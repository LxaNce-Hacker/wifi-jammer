#!/bin/bash

# Enhanced WiFi Jammer Setup Script
# Sets up the wifi-jammer command globally

# Colors for better output
RED='\033[1;31m'
GREEN='\033[1;32m'
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
RESET='\033[0m'

echo -e "${CYAN}Setting up Enhanced WiFi Jammer...${RESET}"

# Check if running as root
if [[ $EUID -eq 0 ]]; then
    echo -e "${YELLOW}Warning: Running as root. This will install globally.${RESET}"
fi

# Check if wifi-jammer file exists
if [[ ! -f "wifi-jammer" ]]; then
    echo -e "${RED}Error: wifi-jammer file not found in current directory!${RESET}"
    echo -e "${YELLOW}Make sure wifi-jammer file is in the same directory as setup.sh${RESET}"
    exit 1
fi

# Make executable
echo -e "${CYAN}[1/3] Making wifi-jammer executable...${RESET}"
chmod +x wifi-jammer

# Check if /usr/local/bin exists
if [[ ! -d "/usr/local/bin" ]]; then
    echo -e "${YELLOW}Creating /usr/local/bin directory...${RESET}"
    mkdir -p /usr/local/bin
fi

# Copy to system PATH
echo -e "${CYAN}[2/3] Installing wifi-jammer to /usr/local/bin...${RESET}"
if [[ $EUID -eq 0 ]]; then
    cp wifi-jammer /usr/local/bin/
else
    sudo cp wifi-jammer /usr/local/bin/
fi

# Verify installation
if [[ -f "/usr/local/bin/wifi-jammer" ]]; then
    echo -e "${GREEN}[3/3] Installation successful!${RESET}"
    echo -e "${GREEN}✓ wifi-jammer installed to /usr/local/bin/${RESET}"
    
    # Check if /usr/local/bin is in PATH
    if [[ ":$PATH:" == *":/usr/local/bin:"* ]]; then
        echo -e "${GREEN}✓ /usr/local/bin is in your PATH${RESET}"
    else
        echo -e "${YELLOW}⚠ /usr/local/bin is not in your PATH${RESET}"
        echo -e "${YELLOW}Add this line to your ~/.bashrc or ~/.zshrc:${RESET}"
        echo -e "${CYAN}export PATH=\"/usr/local/bin:\$PATH\"${RESET}"
    fi
    
    echo -e "\n${CYAN}Usage:${RESET}"
    echo -e "  ${GREEN}wifi-jammer${RESET}  - Run the enhanced WiFi jammer"
    echo -e "  ${GREEN}sudo wifi-jammer${RESET}  - Run with root privileges (recommended)"
    
    echo -e "\n${YELLOW}Note: Root privileges are required for monitor mode operations.${RESET}"
    
    # Clean up
    echo -e "\n${CYAN}Cleaning up setup files...${RESET}"
    rm -f setup.sh
    echo -e "${GREEN}Setup complete!${RESET}"
    
else
    echo -e "${RED}Installation failed!${RESET}"
    echo -e "${YELLOW}Try running: sudo bash setup.sh${RESET}"
    exit 1
fi
