# WiFi Jammer v1.2

An advanced WiFi network testing tool with enhanced features, improved user interface, and multiple attack methods.

![Built with Bash](https://img.shields.io/badge/Bash-✔️-informational)
![Platform: Linux](https://img.shields.io/badge/Platform-Kali%20Linux-red)

## ⚠️ DISCLAIMER
**THIS TOOL IS CREATED FOR EDUCATIONAL AND AUTHORIZED TESTING PURPOSES ONLY. USE ONLY ON NETWORKS YOU OWN OR HAVE EXPLICIT PERMISSION TO TEST. UNAUTHORIZED USE IS ILLEGAL AND UNETHICAL.**

## 🚀 Features

### Enhanced Version (wifi-jammer)
- **Interactive User Interface** - Easy-to-use menu system with color-coded output
- **Automatic Monitor Mode** - Intelligent detection and setup of wireless interfaces
- **Dual Band Support** - Scan both 2.4 GHz and 5 GHz networks
- **Advanced Network Analysis** - Detailed security information (WPA3, WPA2, WEP, Open)
- **Client Detection** - Scan and target specific connected devices
- **Multiple Attack Methods**:
  - Standard Deauth Attack
  - Mixed Deauth/Disassoc Attack
  - Advanced MDK3 Attack (if available)
- **Protected Management Frame (PMF) Detection** - Warns about modern security features
- **Automatic Cleanup** - Proper restoration of network settings on exit
- **Enhanced Error Handling** - Better validation and user feedback

### Original Version (wifi-jammer)
- Basic monitor mode control
- Simple network scanning
- Basic deauth attacks
- Command-line interface

## 📋 Requirements

### Essential Tools
- `aircrack-ng` suite (airmon-ng, airodump-ng, aireplay-ng)
- `iw` and `iwconfig` (wireless tools)
- `xterm` or `gnome-terminal` (for enhanced UI)

### Optional Tools
- `mdk3` (for advanced attack methods)

## 🔧 Installation

### For Enhanced Version (Recommended)
```bash
git clone https://github.com/LxaNce-Hacker/wifi-jammer
cd wifi-jammer
chmod +x wifi-jammer
bash setup.sh
```

## 📖 Usage

Simply run the command after setup:
```bash
sudo wifi-jammer
```

**Step-by-step process:**
1. **Interface Detection** - Automatically detects and configures wireless interface
2. **Band Selection** - Choose between 2.4 GHz or 5 GHz scanning
3. **Network Scanning** - Interactive network discovery with security analysis
4. **Target Selection** - Choose target network from color-coded list
5. **Client Detection** - Optional scan for connected devices
6. **Attack Method** - Select from multiple attack strategies
7. **Attack Execution** - Launch the selected attack with real-time feedback

## 🎯 Attack Methods

### 1. Standard Deauth
- Continuous deauthentication frames
- Effective against most networks
- Single attack vector

### 2. Mixed Attack
- Combines deauth and disassociation
- Higher success rate
- Multiple attack vectors

### 3. MDK3 Attack
- Advanced deauth with mdk3
- Most sophisticated method
- Requires mdk3 installation

## 🔍 Network Security Analysis

The enhanced version provides detailed security information:

- **🔴 Open Networks** - No encryption (highest risk)
- **🟡 WEP Networks** - Weak encryption (deprecated)
- **🔵 WPA Networks** - Basic WPA security
- **🟢 WPA2 Networks** - Strong WPA2 encryption
- **🔷 WPA3 Networks** - Latest WPA3 security
- **⚠️ PMF Detection** - Protected Management Frame support

## 🛡️ Safety Features

- **Automatic Cleanup** - Restores network settings on exit
- **Process Management** - Proper handling of background processes
- **Error Validation** - Input validation and error checking
- **Signal Handling** - Graceful shutdown on interruption
- **Permission Checks** - Ensures root privileges
- **Interface Detection** - Automatic wireless adapter detection
- **NetworkManager Integration** - Proper service management

## 🔧 Troubleshooting

### Common Issues
1. **"No wireless interface found"**
   - Ensure WiFi adapter is connected
   - Check if driver supports monitor mode

2. **"Failed to enable monitor mode"**
   - Kill conflicting processes: `sudo airmon-ng check kill`
   - Restart NetworkManager: `sudo systemctl restart NetworkManager`

3. **"No terminal emulator found"**
   - Install xterm: `sudo apt install xterm`
   - Or install gnome-terminal: `sudo apt install gnome-terminal`

4. **"MDK3 not found"**
   - Install mdk3: `sudo apt install mdk3`
   - Or use other attack methods

### Performance Tips
- Let network scan run for 15-20 seconds for better results
- Use 2.4 GHz band for better compatibility
- Target networks with weaker security first
- Ensure good signal strength to target

## 📁 File Structure
```
wifi-jammer/
├── wifi-jammer      # Main enhanced WiFi jammer script
├── setup.sh         # Setup script for global installation
└── README.md        # This documentation file
```

## 🔒 Legal Notice

This tool is designed for:
- **Educational purposes** - Learning about WiFi security
- **Authorized testing** - Penetration testing with permission
- **Network administration** - Testing your own networks

**Unauthorized use is strictly prohibited and may violate:**
- Computer Fraud and Abuse Act
- Digital Millennium Copyright Act
- Local and federal laws regarding network interference

## 🤝 Contributing

Contributions are welcome! Please:
1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## 📄 License

This project is for educational purposes only, licensed under the GNU General Public License v3.0 - see the [LICENSE](LICENSE) file for details.

## 🔄 Version History

- **v1.2** - Complete rewrite with interactive UI, multiple attack methods, advanced features, and enhanced security analysis
- **v1.0** - Basic WiFi jammer functionality

---

**Remember: With great power comes great responsibility. Use this tool ethically and legally.**
