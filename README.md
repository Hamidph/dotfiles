# Dotfiles

My macOS development environment configuration for AI/software engineering.

## 🚀 Quick Setup

### Automated Setup (Recommended)
On a fresh Mac, run this one command:

```bash
curl -fsSL https://raw.githubusercontent.com/Hamidph/dotfiles/main/setup.sh | bash
```

### Manual Setup
If you prefer step-by-step control:

```bash
# 1. Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# 2. Add Homebrew to PATH
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# 3. Install git and GitHub CLI
brew install git gh

# 4. Login to GitHub and clone this repo
gh auth login
gh repo clone Hamidph/dotfiles
cd dotfiles

# 5. Install everything from Brewfile
brew bundle --file=./Brewfile

# 6. Setup git identity
git config --global user.name "Hamid"
git config --global user.email "your@email.com"

# 7. Setup Python tools
pipx ensurepath
pipx install ruff httpie
```

## 📦 What's Included

- **CLI Tools**: git, gh, jq, fzf, ripgrep, bat
- **Python**: Python 3.12, uv, pipx
- **Node.js**: node, pnpm
- **AI/Data**: poppler
- **Apps**: Cursor, iTerm2, Raycast, Docker, Chrome, QuickRecorder

See [`Brewfile`](./Brewfile) for the complete list.

## 🔄 Daily Usage

### Install Everything
```bash
brew bundle --file=./Brewfile
```

### Update Everything
```bash
brew update && brew upgrade
```

### Add New Software
```bash
# Example: Install a new app
brew install --cask new-app

# Then update your dotfiles
# 1. Add to Brewfile
# 2. Update HISTORY.md
# 3. Commit and push
```

## 🛠 Tool Examples

See [`TOOLS.md`](./TOOLS.md) for usage examples of each installed tool.

## 📝 Files

- **[Brewfile](./Brewfile)** - Package definitions
- **[setup.sh](./setup.sh)** - Automated setup script
- **[TOOLS.md](./TOOLS.md)** - Tool usage examples
- **[HISTORY.md](./HISTORY.md)** - Change log
- **[.cursorrules](./.cursorrules)** - Rules for Cursor AI agents

## 👤 Author

**Hamid** - [Hamidph](https://github.com/Hamidph)

