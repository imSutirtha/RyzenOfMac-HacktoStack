# 🚀 Hackintosh Dev Beast: macOS Sequoia on AMD Ryzen + Full Dev Setup

Welcome to the ultimate all-in-one guide for setting up macOS Sequoia on an AMD Ryzen 7600X system — plus a fully loaded modern developer environment.

> 🧠 Whether you're a code warrior, mobile dev ninja, or someone who just said “Screw it, let’s turn my PC into a Mac” — this guide is for YOU.

---

## 🖥️ System Specs (a.k.a. The Beast)
| Component     | Details                             |
|--------------|--------------------------------------|
| **CPU**      | AMD Ryzen 5 7600X                    |
| **GPU**      | ASRock Radeon RX 6750 XT Challenger Pro |
| **Motherboard** | MSI B650 Gaming Plus WiFi        |
| **RAM**      | 32GB DDR5 @ 5200MHz                  |
| **Storage**  | 2TB 5400RPM HDD (macOS installed here) |
| **OS**       | macOS Sequoia (Running on OpenCore)  |
| **Hostname** | `DIVA` ❤️                               |

---

## 🛠️ Stage 0: Pre-requisites and Downloads

### ✅ Required Tools:
- [OpenCore Legacy Patcher (OCLP)](https://dortania.github.io/OpenCore-Legacy-Patcher/)
- [macOS Sequoia Installer](https://mrmacintosh.com)
- USB Flash Drive (at least 16GB)
- Working macOS or macOS VM to create the installer
- Patience. (This is Hackintosh, not Minecraft.)

---

## 💻 Stage 1: Install macOS Sequoia on Ryzen

> Refer to [Dortania Guide](https://dortania.github.io/OpenCore-Install-Guide/) and OpenCore Legacy Patcher for creating a bootable USB and applying patches. You’re basically Frankenstein-ing macOS onto a Ryzen machine — it's a dark art.

- Boot from USB
- Format the drive as APFS using Disk Utility
- Install macOS Sequoia
- Run OpenCore Post-Install Root Patch
- Reboot, patch, and stabilize
- Verify: system boots from HDD without USB

---

## 🧰 Stage 2: Developer Environment Setup

### ⚙️ Dev & Utility Tools

```bash
# Install iTerm2 (optional, but preferred)
brew install --cask iterm2

# Install Xcode Command Line Tools
xcode-select --install

# Install Homebrew (if not already)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

---

### 📦 Install Core Dev Utilities

```bash
brew install node
brew install yarn
brew install watchman
brew install python
brew install --cask docker
brew install --cask mongodb-compass
brew install --cask tableplus
```

---

### 🔁 Make python and pip global:

```bash
echo 'alias python="python3"' >> ~/.zshrc
echo 'alias pip="pip3"' >> ~/.zshrc
source ~/.zshrc
```


---

### 🧪 Verify Core Tools:

```bash
node -v
npm -v
yarn -v
python --version
pip --version
docker --version
```


---

### 📱 Mobile & Cross-Platform Dev Stack
### React Native & Expo CLI

```bash
npm install -g react-native-cli
npm install -g expo-cli
```


---

### Flutter Web & CLI

```bash
brew install --cask flutter
flutter doctor
```


---

### 🔥 VS Code & Extensions
### Install VS Code

```bash
brew install --cask visual-studio-code
```


---

### Install Extensions

```bash
code --install-extension Dart-Code.dart-code
code --install-extension Dart-Code.flutter
code --install-extension eamodio.gitlens
code --install-extension humao.rest-client
code --install-extension PKief.material-icon-theme
code --install-extension CoenraadS.bracket-pair-colorizer-2
```


---

### 🧠 Java, Spring Boot, Angular
### Java 22 & 23 + Version Manager

```bash
brew install jenv
brew install openjdk@22
brew install openjdk@23

# Add to .zshrc
echo 'export PATH="/opt/homebrew/opt/openjdk@22/bin:$PATH"' >> ~/.zshrc
echo 'export PATH="/opt/homebrew/opt/openjdk@23/bin:$PATH"' >> ~/.zshrc
echo 'export JAVA_HOME="$(/usr/libexec/java_home)"' >> ~/.zshrc
source ~/.zshrc

# Enable jenv
jenv add /opt/homebrew/opt/openjdk@22
jenv add /opt/homebrew/opt/openjdk@23
jenv global 22
```


> ⚠️ You can set Java versions project-specific using .java-version

---

### Spring Boot & Angular CLI

```bash
npm install -g @angular/cli
brew install maven
```


---

### 🐘 XAMPP & SQL Tools

#### ✅ XAMPP: Download from official site

#### ✅ SQLYog: Not available on macOS natively. Use TablePlus or DBeaver as a better alternative.

---

### 📦 Optional Tools & Notes

| Tool           | Purpose                    | Status                                                             |
| -------------- | -------------------------- | ------------------------------------------------------------------ |
| Firebase CLI   | Realtime DB, Hosting, Auth | `npm install -g firebase-tools`                                    |
| Postman        | API Testing                | Use REST Client extension in VS Code                               |
| Android Studio | Mobile Dev                 | Install manually from [here](https://developer.android.com/studio) |
| Xcode          | Native iOS apps            | Installed via `xcode-select --install` or App Store                |

---
