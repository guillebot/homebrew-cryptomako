# homebrew-cryptomako

Homebrew tap for **[CryptoMako](https://github.com/guillebot/cryptomako)** — a Cryptomator format‑8 vault over S3‑compatible storage (macOS app).

## Install

```bash
brew tap guillebot/cryptomako
brew install --cask cryptomako
```

## Upgrade

```bash
brew upgrade --cask cryptomako
```

## Uninstall

```bash
brew uninstall --cask cryptomako
```

Optional cleanup of app support data (also listed in the cask `zap`):

```bash
brew uninstall --cask --zap cryptomako
```

## Official Homebrew (pending)

A cask for CryptoMako has been prepared for **[Homebrew/homebrew-cask](https://github.com/Homebrew/homebrew-cask)** so users can eventually run `brew install --cask cryptomako` without this tap.

**Status:** blocked on Homebrew’s [Package Acceptance Policy](https://docs.brew.sh/Package-Acceptance-Policy#notability) notability thresholds for a **self-submission** by the repository owner (need **≥90 forks, ≥90 watchers, or ≥225 stars**; plus the canonical repo must normally be **≥30 days** old). Current metrics and the official PR (if open) are tracked below once filed.

Until acceptance, keep using this tap. After merge, this README will point at the official cask and the tap may be deprecated.

## Source

- App / releases: [guillebot/cryptomako](https://github.com/guillebot/cryptomako)
- This tap: [guillebot/homebrew-cryptomako](https://github.com/guillebot/homebrew-cryptomako)

## License / distribution notes

CryptoMako is **AGPL-3.0**. The macOS app is distributed as a **notarized DMG** from [GitHub Releases](https://github.com/guillebot/cryptomako/releases).
