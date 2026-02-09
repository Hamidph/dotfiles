# Tool Usage Guide

Quick reference for all installed tools.

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
| Update everything | `brew update && brew upgrade` |
