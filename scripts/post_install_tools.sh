```bash
#!/bin/bash

# 🚀 Dev Tools Installer for macOS Sequoia Hackintosh

echo "🔧 Installing Homebrew (if not present)..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# ⬇️ Command Line Tools
brew install \
    node \
    yarn \
    python \
    watchman \
    firebase-cli

npm install -g expo-cli

# Optional but useful
brew install --cask iterm2 docker

# Flutter setup
if ! command -v flutter &> /dev/null
then
    echo "📦 Installing Flutter..."
    git clone https://github.com/flutter/flutter.git -b stable ~/flutter
    export PATH="$PATH:~/flutter/bin"
    flutter doctor
fi

# Dart
brew tap dart-lang/dart
brew install dart

# Java setup (for Android Studio)
brew install openjdk@11
sudo ln -sfn /opt/homebrew/opt/openjdk@11/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk-11.jdk

# VS Code Extensions
code --install-extension Dart-Code.flutter
code --install-extension msjsdiag.debugger-for-chrome
code --install-extension GitHub.vscode-pull-request-github
code --install-extension humao.rest-client

echo "✅ All tools installed successfully!"
```