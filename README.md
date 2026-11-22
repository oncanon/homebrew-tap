# oncanon/homebrew-tap

Homebrew tap for [Canon](https://oncanon.com/).

```sh
brew install --cask oncanon/tap/canon-app   # Canon.app and the canon CLI
brew install oncanon/tap/canon              # the canon CLI only
```

Canon.app updates itself (Sparkle), so the cask is marked `auto_updates`.
`brew upgrade` updates the CLI.

The release workflow in [oncanon/canon](https://github.com/oncanon/canon) updates
both files on every release. Do not edit `version`, `url` or `sha256` by hand.
