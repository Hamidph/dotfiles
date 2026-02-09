#!/bin/bash
# =============================================================================
# Mac Setup Script - Automated Installation
# =============================================================================
# This script automates the setup of a new Mac for development
# Run this on a fresh Mac to get everything configured

set -e  # Exit on error

echo "🚀 Starting Mac setup..."

# 1. Install Homebrew
echo "📦 Installing Homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# 2. Add Homebrew to PATH
echo "🔧 Adding Homebrew to PATH..."
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# 3. Install git and GitHub CLI
echo "🔧 Installing git and GitHub CLI..."
brew install git gh

# 4. Login to GitHub
echo "🔐 Please login to GitHub..."
gh auth login

# 5. Clone your dotfiles
echo "📥 Cloning dotfiles repository..."
cd ~
gh repo clone Hamidph/dotfiles
cd dotfiles

# 6. Install everything from Brewfile
echo "📦 Installing all packages from Brewfile..."
brew bundle --file=./Brewfile

# 7. Setup git identity
echo "👤 Setting up git identity..."
git config --global user.name "Hamid"
read -p "Enter your email for git: " email
git config --global user.email "$email"

echo "✅ Mac setup complete!"
echo ""
echo "Next steps:"
echo "  1. Open iTerm2 from Applications"
echo "  2. Open Cursor from Applications"
echo "  3. Configure Raycast preferences"
echo "  4. Run 'pipx ensurepath' and install Python tools"
echo ""
echo "See mac-setup-guide.md for more details!"

