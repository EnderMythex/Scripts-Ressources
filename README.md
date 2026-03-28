<div align="center">

# 🛠️ Scripts-Ressources

**A curated collection of useful scripts, fixes, and utilities for Windows power-users.**

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Platform: Windows](https://img.shields.io/badge/Platform-Windows-0078D6?logo=windows)](https://www.microsoft.com/windows)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](https://github.com/EnderMythex/Scripts-Ressources/pulls)
[![Stars](https://img.shields.io/github/stars/EnderMythex/Scripts-Ressources?style=social)](https://github.com/EnderMythex/Scripts-Ressources/stargazers)

</div>

---

## 📋 Table of Contents

- [About](#-about)
- [Script Categories](#-script-categories)
  - [Windows Fixes & Tweaks](#-windows-fixes--tweaks)
  - [Software Utilities](#-software-utilities)
  - [System Maintenance](#-system-maintenance)
- [Getting Started](#-getting-started)
- [Usage](#-usage)
- [Contributing](#-contributing)
- [License](#-license)

---

## 📖 About

This repository is a growing library of **batch scripts, PowerShell scripts, and other resources** designed to make your Windows experience smoother. Whether you need to fix a broken install, automate a repetitive task, or tweak system settings, you'll find something useful here.

> Scripts are provided as-is. Always review a script before running it so you understand what it does.

---

## 📂 Script Categories

### 🪟 Windows Fixes & Tweaks

| Script | Description |
|--------|-------------|
| `StartAllBack-Fix.bat` | Repairs and re-registers **StartAllBack** after a Windows update breaks the classic Start Menu / taskbar experience. Stops the affected service, re-runs the installer in repair mode, and restarts Explorer. |

### 🧰 Software Utilities

| Script | Description |
|--------|-------------|
| *(more coming soon)* | Additional utility scripts will be added here. |

### 🔧 System Maintenance

| Script | Description |
|--------|-------------|
| *(more coming soon)* | Maintenance and clean-up scripts will be added here. |

---

## 🚀 Getting Started

### Prerequisites

- **Windows 10 / 11** (most scripts target modern Windows)
- **Administrator privileges** – many scripts require elevated permissions

### Clone the repository

```bash
git clone https://github.com/EnderMythex/Scripts-Ressources.git
cd Scripts-Ressources
```

Or simply download the individual script you need directly from the repository.

---

## ▶️ Usage

### Running a Batch script

1. **Right-click** the `.bat` file
2. Select **"Run as administrator"**
3. Follow any on-screen instructions

### Running a PowerShell script

```powershell
# Allow the script to run (one-time, per-session)
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass

# Then execute
.\script-name.ps1
```

> ⚠️ **Tip:** Never run scripts from untrusted sources without reading them first.

---

## 🤝 Contributing

Contributions are welcome! If you have a useful script to share:

1. **Fork** this repository
2. Create a new branch: `git checkout -b feature/my-script`
3. Add your script with a clear name and a brief comment header
4. Open a **Pull Request** describing what your script does

Please make sure your script:
- Has a descriptive filename (e.g., `fix-windows-audio.bat`)
- Includes a short comment block at the top explaining its purpose
- Has been tested on at least one Windows version

---

## 📄 License

This project is licensed under the **MIT License** – see the [LICENSE](LICENSE) file for details.

---

<div align="center">

Made with ❤️ by [EnderMythex](https://github.com/EnderMythex)

</div>