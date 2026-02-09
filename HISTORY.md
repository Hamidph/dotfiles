# Brewfile Change History

This file tracks all changes to the Brewfile over time. Every addition, removal, or modification should be documented here.

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

