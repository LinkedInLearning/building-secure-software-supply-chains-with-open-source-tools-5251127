#!/bin/bash

set -e

echo "🔧 Updating system packages..."
sudo apt update && sudo apt install -y \
  build-essential \
  curl \
  wget \
  git \
  unzip \
  jq \
  make \
  python3 \
  python3-pip \
  lsb-release \
  procps \
  software-properties-common

echo "✅ System dependencies installed."

# ----------------------------------------------------------------------------
# 🍺 Install Homebrew on Linux (if not already installed)
# ----------------------------------------------------------------------------
if ! command -v brew &> /dev/null; then
  echo "🍺 Installing Homebrew..."
  NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~/.bashrc
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
else
  echo "🍺 Homebrew already installed."
fi

# ----------------------------------------------------------------------------
# 🔐 Gitleaks (Secrets detection)
# ----------------------------------------------------------------------------
if ! command -v gitleaks &> /dev/null; then
  echo "🔐 Installing Gitleaks..."
  sudo apt install -y gitleaks
else
  echo "🔐 Gitleaks already installed."
fi

# ----------------------------------------------------------------------------
# 🐍 Python security tools
# ----------------------------------------------------------------------------
echo "🐍 Installing Bandit and Safety..."
pip3 install --upgrade pip
pip3 install bandit safety

# ----------------------------------------------------------------------------
# 📦 Install Trivy, Syft, Grype via Brew
# ----------------------------------------------------------------------------
echo "📦 Installing Trivy, Syft, Grype via Homebrew..."
brew install trivy syft grype

# ----------------------------------------------------------------------------
# ✅ Final Check
# ----------------------------------------------------------------------------
echo ""
echo "🎉 All tools installed!"
echo "-----------------------------------------------------"
echo "🕵️ Gitleaks:     $(gitleaks version | head -n 1 || echo 'Not installed')"
echo "🐍 Bandit:       $(bandit --version 2>/dev/null || echo 'Not installed')"
echo "🧪 Safety:       $(safety --version 2>/dev/null || echo 'Not installed')"
echo "🐳 Trivy:        $(trivy --version | head -n 1 || echo 'Not installed')"
echo "📦 Syft:         $(syft version | head -n 1 || echo 'Not installed')"
echo "🛡️ Grype:        $(grype version | head -n 1 || echo 'Not installed')"
echo "-----------------------------------------------------"