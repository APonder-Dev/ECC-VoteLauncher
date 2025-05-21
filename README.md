# 🌍 ECC-VoteLauncher

**ECC-VoteLauncher** is a cross-platform vote automation toolkit for the [EcoCityCraft](https://ecocitycraft.com) Minecraft server.  
It allows players to quickly and easily vote across all 14 major server sites with their username autofilled — via web, Windows, or Linux/macOS.

![Platform](https://img.shields.io/badge/platform-Windows%20%7C%20macOS%20%7C%20Linux-blue)
![License](https://img.shields.io/github/license/APonder-Dev/ECC-VoteLauncher)
![Status](https://img.shields.io/badge/status-active-brightgreen)

---

## ✨ Features

- 🌐 **Web Voting Portal**  
  - Autofill your username for all vote sites
  - Clean and responsive design
  - Per-site cooldown tracking (optional)
  - Offline functionality — no server required
  
- 🖥️ **Windows Batch Script**  
  - Launches all 14 vote pages  
  - Prompts for username

- 🐧 **Linux/macOS Bash Script**  
  - Uses `xdg-open` or `open` to launch vote links  
  - Username prompt and autofill

---

## 🗂️ Project Structure

```plaintext
ECC-VoteLauncher/
├── index.html       # Web interface with cooldowns & design
├── ECC-VoteLauncher.bat      # Windows .bat script
├── ECC-VoteLauncher.sh       # Bash script for Linux/macOS
├── LICENSE                # MIT license
└── README.md              # This file
```

---

## 🚀 Quick Start

### 🔗 Web Portal

> `index.html`

1. Open in your browser
2. Enter your Minecraft username
3. Click “Submit”
4. Click any “Vote Now” button — autofilled and timed per site

### 🪟 Windows

> `ECC-VoteLauncher.bat`

```bat
Double-click the file
Enter your Minecraft username
All vote links open in your default browser
```

### 🐧 Linux & macOS

> `ECC-VoteLauncher.sh`

```bash
chmod +x ECC-VoteLauncher.sh
./ECC-VoteLauncher.sh
```

✔ Detects platform (`xdg-open` on Linux, `open` on macOS)  
✔ Opens all links with `?username=YourName` appended

---

## 🌐 Supported Vote Sites

14 major voting platforms, each with username autofill support in the web portal.

- MinecraftPocket-Servers.com
- Minecraft Menu
- MinecraftBestServers.com
- CurseForge
- Minecraft Buzz
- Best-Minecraft-Servers.co
- Servers-Minecraft.net
- MinecraftList.org
- Minecraft-Server.net
- TopMinecraftServers.org
- Minecraft-MP.com
- TopG.org
- Minecraft-Server-List.com
- MinecraftServers.org

---

## 🧠 Customization

You can customize/add new vote sites in `index.html`:

```js
{ id: "site15", name: "New Vote Site", url: "https://example.com/vote", cooldown: 86400000 }
```

- `cooldown` is in milliseconds
- Button timers will update automatically

---

## 📄 License

MIT License.  
You are free to use, share, and modify this project — attribution appreciated.

---

## 🙌 Author

**Anthony Ponder**  
GitHub: [@APonder-Dev](https://github.com/APonder-Dev)

Built for the EcoCityCraft community with ❤️