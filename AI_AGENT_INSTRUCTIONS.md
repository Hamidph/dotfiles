# AI Agent Instructions for Dotfiles Repository

## Repository Purpose
This is a **dotfiles repository** for managing macOS development environment setup. It contains configuration files and installation scripts to bootstrap a new Mac for AI/software engineering work.

## Core Principles

### 1. **Always Update Both the Brewfile AND Install Immediately**
When the user requests installing new software:
- ✅ Add it to the `Brewfile` first
- ✅ Then run the install command via terminal
- ✅ Update `HISTORY.md` with the change

### 2. **Always Document Changes**
Every time you modify the `Brewfile`:
- Add an entry to `HISTORY.md` with:
  - Date (YYYY-MM-DD format)
  - What was added/removed/changed
  - Brief reason or context

### 3. **Installation Command Patterns**
```bash
# For regular Homebrew packages
brew install package-name

# For casks (GUI apps)
brew install --cask app-name

# For taps (third-party repositories)
brew install username/tap/package-name

# Run with 'all' permissions to avoid sandbox issues
```

## File Structure

### `Brewfile`
The main package definition file organized by category:
- CLI Tools
- Python
- Node.js
- AI/Data
- Apps (casks)
- Other categories as needed

**Format:**
```ruby
# Category Name
brew "package-name"           # CLI tools
cask "app-name"              # GUI applications
brew "user/tap/package"      # Third-party taps
```

### `HISTORY.md`
Change log tracking all modifications to the Brewfile.

**Format:**
```markdown
## YYYY-MM-DD

### Added
- **Package Name** (`exact-brew-name`)
  - Description
  - Reason for adding

### Removed
- **Package Name**
  - Reason for removal

### Changed
- **Package Name**
  - What changed and why
```

### `README.md`
Main repository overview with setup instructions. This is what users see on GitHub.

### `TOOLS.md`
Usage examples and reference for installed tools. Update this if you add tools that need usage examples.

## Common Workflows

### Workflow 1: User Wants to Install New Software
```
1. Add package to Brewfile in appropriate category
2. Run installation command in terminal (with 'all' permissions)
3. Update HISTORY.md with date and details
4. If it's a significant tool, consider adding usage examples to TOOLS.md
```

**Example:**
```bash
# User says: "install discord"
# Step 1: Add to Brewfile under # Apps
# Step 2: Run: brew install --cask discord
# Step 3: Update HISTORY.md with entry
```

### Workflow 2: User Wants to Remove Software
```
1. Remove package from Brewfile
2. Optionally uninstall from current machine: brew uninstall package-name
3. Update HISTORY.md under "Removed" section
```

### Workflow 3: User Wants to Update/Reorganize
```
1. Make changes to Brewfile
2. Document in HISTORY.md under "Changed" section
3. Explain what was reorganized and why
```

## Important Notes

### Terminal Commands
- Always request `required_permissions: ['all']` for brew commands
- This avoids sandbox permission issues with Homebrew directories

### Brewfile Syntax
- Use `brew "name"` for command-line tools
- Use `cask "name"` for GUI applications
- Use `brew "user/tap/name"` for third-party taps
- Comments use `#` and should describe categories

### Categories to Maintain
Keep the Brewfile organized with clear category headers:
- CLI Tools
- Python
- Node.js
- AI/Data
- Apps
(Add new categories as needed when a group of 2+ tools share a theme)

## Context for New Agents

When you start working in this repository:

1. **Read these files first:**
   - `Brewfile` - See what's currently installed
   - `HISTORY.md` - Understand recent changes
   - `README.md` - Understand the user's workflow

2. **Understand the user's intent:**
   - This is a living configuration that evolves with their needs
   - Changes should be tracked and documented
   - Both the repository AND current machine should stay in sync

3. **Default behavior:**
   - When user asks to install something: update Brewfile, install it, log it
   - When user asks about tools: check the Brewfile and guide
   - Always maintain organization and documentation

## Quick Reference

| User Request | Actions Required |
|--------------|------------------|
| "Install X" | 1. Add to Brewfile<br>2. Run brew install<br>3. Update HISTORY.md |
| "Remove X" | 1. Remove from Brewfile<br>2. Optionally brew uninstall<br>3. Update HISTORY.md |
| "What's installed?" | Read and explain Brewfile |
| "Setup new Mac" | Guide them through README.md |
| "Update everything" | Run brew update && brew upgrade |
| "How to use X?" | Check TOOLS.md for usage examples |

## Example Interaction

**User:** "install visual studio code"

**Agent Actions:**
1. Add to Brewfile:
   ```ruby
   cask "visual-studio-code"
   ```
2. Run terminal command:
   ```bash
   brew install --cask visual-studio-code
   ```
3. Update HISTORY.md:
   ```markdown
   ## 2025-12-10
   ### Added
   - **Visual Studio Code** (`visual-studio-code`)
     - Code editor for development
   ```

---

## Summary
This repository is the user's source of truth for their development environment. Always keep it updated, documented, and in sync with their actual machine. Every change should be traceable through HISTORY.md.

