# homebrew-rpxy

Homebrew tap for [rpxy](https://rpxy.io) - a simple and ultrafast HTTP reverse proxy written in Rust.

## Prerequisites

**Important:** This formula requires `git-lfs` to be installed and initialized **before** installation, as the source repository uses git submodules that require git-lfs during download.

Install and initialize git-lfs first:
```bash
brew install git-lfs
git lfs install
```

This ensures git-lfs is properly configured and available during Homebrew's download process.

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
