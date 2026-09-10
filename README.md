<div align="center">

# ImKKingshuk Homebrew Tap

Homebrew formulae and casks for tools by [@ImKKingshuk](https://github.com/ImKKingshuk).

</div>

## Setup

```bash
brew tap ImKKingshuk/tap
```

## Available Formulae

| Formula | Description | Install |
|---------|-------------|---------|
| **LockKnife** | The Ultimate Android Security Research Tool | `brew install lockknife` |
| **BloatwareHatao** | The Ultimate Android Bloatware Removal Tool | `brew install bloatwarehatao` |
| **Stealthix** | Database injection detection toolkit for SQL, NoSQL, and NewSQL | `brew install stealthix` |

Stealthix becomes installable after its first public GitHub release is published and the `Update Formula` workflow generates `Formula/stealthix.rb`.
Its ADB workflows also require Android platform-tools:

```bash
brew install --cask android-platform-tools
```

## Available Casks

*Coming soon — GUI applications will be listed here.*

## Usage

```bash
# Tap this repository (one-time)
brew tap ImKKingshuk/tap

# Install a formula
brew install lockknife
brew install bloatwarehatao
brew install stealthix

# Or install directly without tapping
brew install ImKKingshuk/tap/lockknife
brew install ImKKingshuk/tap/bloatwarehatao
brew install ImKKingshuk/tap/stealthix

# Update
brew update && brew upgrade lockknife
brew update && brew upgrade bloatwarehatao
brew update && brew upgrade stealthix
```

## Requirements

- macOS (Apple Silicon)
- Homebrew 4.0+
- Android platform-tools for ADB-driven workflows

## License

Each formula/cask references its respective project's license. See individual project repositories for details.
