# New Mac Setup Guide

## Step 1: Install Homebrew

Open Terminal and run:
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

After it finishes, it will show some commands to run. Copy and run them (adds Homebrew to your PATH).

For Apple Silicon Macs, it's usually:
```bash
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```

## Step 2: Download and Run Brewfile

Put the `Brewfile` in your home directory, then run:
```bash
cd ~
brew bundle
```

This installs everything. Takes 5-10 minutes.

## Step 3: Setup Git

```bash
git config --global user.name "Your Name"
git config --global user.email "your@email.com"
gh auth login
```

## Step 4: Setup Python Tools

```bash
pipx ensurepath
pipx install ruff
pipx install httpie
```

---

## How to Use Each Tool

### uv (Python package manager)
```bash
# Create new project
uv init my-project
cd my-project

# Add packages
uv add langchain langgraph anthropic

# Run your code
uv run python main.py

# Add dev dependencies
uv add --dev pytest ruff
```

### gh (GitHub CLI)
```bash
gh auth login              # Login once
gh repo clone owner/repo   # Clone repos
gh pr create               # Create PR
gh pr list                 # List PRs
```

### jq (JSON processing)
```bash
# Pretty print JSON
cat response.json | jq .

# Extract field
echo '{"name": "hamid"}' | jq '.name'

# Use with curl
curl -s https://api.example.com | jq '.data[0]'
```

### fzf (Fuzzy finder)
```bash
# Search files
fzf

# Search and open in cursor
cursor $(fzf)

# Search command history
history | fzf
```

### ripgrep (Fast search)
```bash
# Search in current directory
rg "search term"

# Search specific file type
rg "def " --type py

# Case insensitive
rg -i "error"
```

### bat (Better cat)
```bash
# View file with syntax highlighting
bat script.py

# Show line numbers
bat -n file.py
```

### poppler (PDF tools)
```bash
# PDF to text
pdftotext document.pdf output.txt

# PDF info
pdfinfo document.pdf
```

### pnpm (Node package manager)
```bash
# Install packages
pnpm install

# Add package
pnpm add express

# Run scripts
pnpm run dev
```

---

## Quick Reference

| Task | Command |
|------|---------|
| New Python project | `uv init myproject && cd myproject` |
| Add Python package | `uv add package-name` |
| Run Python | `uv run python main.py` |
| Search code | `rg "pattern"` |
| Find file | `fzf` |
| Parse JSON | `cat file.json \| jq .` |
| View file | `bat file.py` |

---

## Updating

```bash
# Update Homebrew and all packages
brew update && brew upgrade
```
