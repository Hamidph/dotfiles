# Brewfile Change History

This file tracks all changes to the Brewfile over time. Every addition, removal, or modification should be documented here.

## 2026-04-08

### Added
- **Ollama** (`ollama` cask + formula)
  - Local LLM runner for macOS — run models like Llama, Mistral, Gemma locally
  - `cask "ollama"` installs the GUI menu bar app (`Ollama.app`)
  - `brew "ollama"` installs the CLI for running and managing models from terminal

## 2026-04-04

### Added
- **Blip** (`blip`)
  - File transfer app for sending any size file between devices
  - Installed via Homebrew cask

## 2026-03-06

### Added
- **iStat Menus** (`istat-menus`)
  - Advanced system monitor for macOS menu bar
  - Installed via Homebrew cask and added to Brewfile for reproducible setups

### Added
- **R** (`r`)
  - R programming language and environment installed via Homebrew formula
  - Provides base R runtime for data analysis and statistics
- **RStudio** (`rstudio`)
  - IDE for R development installed via Homebrew cask
  - Added alongside R to support R-based workflows on this Mac

### Removed
- **R** (`r`)
  - Removed from this package baseline and uninstalled from the machine
  - Repo is being kept focused as a shared laptop package set
- **RStudio** (`rstudio`)
  - Removed from Brewfile and uninstalled from `/Applications`
  - No longer part of the standard laptop environment
- **iStat Menus** (`istat-menus`)
  - Removed from Brewfile and requested for uninstall
  - Homebrew uninstall ran, but one privileged cleanup step requires local sudo interaction
- **QuickRecorder** (`lihaoyun6/tap/quickrecorder`)
  - Removed from Brewfile and uninstalled from the machine
  - No longer part of the standard laptop environment

### Removed / Cleaned
- **1Password**
  - Not installed via Homebrew, so no Brewfile change
  - Removed user data directories in `~/Library` (Application Support, Caches, Preferences, Group Containers) for 1Password
  - Full app removal from `/Applications` must be done manually (drag `1Password.app` and `1Password for Safari.app` to Trash)

## 2026-02-13

### Updated
- **Claude** (`claude`)
  - Upgraded from `0.14.10` to `1.1.2998`
  - Reinstalled completely to resolve launch issues
  - Providing the latest features and bug fixes
- **Warp** (`warp`)
  - AI-powered terminal application
  - Removed as requested (including all configuration and cache files)
- **Typora** (`typora`)
  - Minimalist Markdown editor and reader
  - Removed as requested
- **Comet** (`comet`)
  - Perplexity's web browser with integrated AI assistant
  - Removed as requested
- **ChatGPT Atlas** (`chatgpt-atlas`)
  - OpenAI's official browser with ChatGPT built in
  - Removed as requested
- **Granola**
  - AI notepad for meetings
  - Removed as requested
- **Google Suite** (Docs, Sheets, Slides)
  - Productivity applications
  - Removed as requested
- **Google Drive** (`google-drive`)
  - Cloud storage sync application
  - Removed as requested via Homebrew
- **Meva**
  - AI reader application
  - Removed as requested
- **Microsoft Excel**
  - Spreadsheet application
  - Removed as requested
- **Obsidian** (`obsidian`)
  - Markdown note-taking application
  - Removed from Brewfile (App deletion requires manual intervention)
- **Ulysses**
  - Writing application
  - Removed as requested
- **Zoom**
  - Video conferencing application
  - Removed as requested
- **Marked 2**
  - Markdown previewer
  - Removed as requested

### Removed
- **Raycast** (`raycast`)
  - Command launcher and productivity tool
  - Uninstalled and removed from Brewfile on request

## 2026-02-09
### Added
- **Typora** (`typora`)
  - Minimalist Markdown editor and reader
  - Installed for editing and reading Markdown files with a seamless live preview

## 2026-02-08

### Added
- **Google Drive** (`google-drive`)
  - Google Drive desktop app for file sync and cloud storage
  - Native macOS app for syncing files with Google Drive

## 2026-02-06

### Added
- **Codex App** (`codex-app`)
  - OpenAI's Codex desktop app for managing coding agents
  - IDE/agent interface for AI-assisted coding
- **ChatGPT Atlas** (`chatgpt-atlas`)
  - OpenAI's official browser with ChatGPT built in
  - AI-integrated web browsing experience
- **Comet** (`comet`)
  - Perplexity's web browser with integrated AI assistant
  - AI-powered browsing experience

### Note
- **Perplexity** is not available via Homebrew — install from the Mac App Store manually

## 2026-01-27

### Added
- **ChatGPT** (`chatgpt`)
  - Official OpenAI ChatGPT desktop application
  - Native macOS app for interacting with ChatGPT AI assistant
- **Obsidian** (`obsidian`)
  - Powerful knowledge base and note-taking application
  - Markdown-based personal knowledge management system with bidirectional linking

## 2024-12-30

### Added
- **Notion** (`notion`)
  - All-in-one workspace for notes, docs, wikis, and project management
  - Collaborative productivity and note-taking application
- **Logi Options+** (`logi-options+`)
  - Logitech device customization software for mice and keyboards
  - Manage button assignments, gestures, and device settings

## 2024-12-29

### Added
- **Claude** (`claude`)
  - Anthropic's Claude AI desktop application
  - Native macOS app for interacting with Claude AI assistant

## 2025-12-10

### Added
- **QuickRecorder** (`lihaoyun6/tap/quickrecorder`)
  - Lightweight screen recorder for macOS
  - Added to support screen recording needs

### Changed
- **Consolidated documentation** to reduce redundancy:
  - Moved all setup instructions into `README.md`
  - Renamed `mac-setup-guide.md` to `TOOLS.md` (now only contains tool usage examples)
  - Created `AI_AGENT_INSTRUCTIONS.md` for AI agent workflow
  - Created `setup.sh` - automated setup script
  - Simplified file structure and removed duplicate content
- **Created `.cursorrules`** - Comprehensive rules for Cursor AI agents:
  - Enforces use of Homebrew for system packages
  - Enforces use of `uv` for Python projects
  - Enforces use of `pnpm` for Node.js projects
  - Requires documentation of all changes
  - Provides clear decision tree for package management

