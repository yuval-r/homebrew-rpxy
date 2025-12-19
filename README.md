# homebrew-rpxy

Homebrew tap for [rpxy](https://rpxy.io) - a simple and ultrafast HTTP reverse proxy written in Rust.

## Prerequisites

**Important:** This formula requires `git-lfs` to be installed and available in your PATH **before** installation. The source repository uses git submodules that require git-lfs during Homebrew's download process.

Install and initialize git-lfs:
```bash
brew install git-lfs
git lfs install
```

**Note:** Homebrew runs downloads in a sanitized environment. If installation fails with "git-lfs: command not found", ensure git-lfs is in your system PATH. You can verify this with:
```bash
which git-lfs
# Should output: /opt/homebrew/bin/git-lfs (or similar)
```

If git-lfs is not found, add it to your PATH in your shell configuration file (e.g., `~/.zshrc` or `~/.bash_profile`):
```bash
echo 'export PATH="/opt/homebrew/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc
```

## Installation
```bash
brew tap yuval-r/rpxy
brew install rpxy
```

## Usage
```bash
rpxy --help
```

## Updating
```bash
brew upgrade rpxy
```
