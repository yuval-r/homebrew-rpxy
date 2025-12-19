# homebrew-rpxy

Homebrew tap for [rpxy](https://rpxy.io) - a simple and ultrafast HTTP reverse proxy written in Rust.

## Prerequisites

**Important:** This formula requires `git-lfs` to be installed **before** installation, as the source repository uses git submodules that require git-lfs during download.

Install git-lfs first:
```bash
brew install git-lfs
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
