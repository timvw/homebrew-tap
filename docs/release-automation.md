# Release Automation Overview

This repository now automates upgrades for the `qv` and `bose` formulae so fresh releases on GitHub flow into Homebrew with minimal effort.

## 1. Release discovery (Renovate)
- `.github/renovate.json` configures `regexManagers` that watch `Formula/qv.rb` and `Formula/bose.rb` for version strings, tarball URLs, and bottle root URLs.
- When a new GitHub release appears for `timvw/qv` or `timvw/bose`, Renovate opens a PR that updates all relevant fields (macOS + Linux assets, sha256 checksums, bottle URLs).
- PRs are labeled `renovate` and `homebrew` automatically so follow-up automation can target them.

## 2. Continuous Integration
### General contributors
- `.github/workflows/tests.yml` runs `brew test-bot` on `macos-15` and `ubuntu-24.04` for pushes/PRs from humans.
- The workflow skips when `github.actor == renovate[bot]` to avoid duplicated work.

### Renovate PRs
- `.github/workflows/renovate-verify.yml` triggers only for Renovate PRs and runs on the same runner matrix.
- Steps per OS:
  - Set up Homebrew and cache Ruby gems.
  - `brew install --build-bottle ./Formula/qv.rb`, then `brew test` and `brew audit --strict`.
  - On macOS: install `bose`, confirm the binary architecture via `file`, and run `brew test`/`brew audit`.
  - On Linux: skip installing `bose` (macOS binary) but verify the release asset is reachable.
  - Upload qv bottles from macOS runners so maintainers can reuse them during publishing.

## 3. Auto-labeling & publishing
- `.github/workflows/label-after-ci.yml` waits for both `brew test-bot` and `renovate verify` checks to succeed on Renovate PRs, then applies the `pr-pull` label.
- Existing `.github/workflows/publish.yml` (brew pr-pull) auto-merges any PR with that label, pushing bottles and cleaning up branches.

## 4. Adding new formulae or platforms
- Extend the Renovate regex managers with new files or additional OS-specific URL patterns.
- Update the CI matrix if you need more runners (e.g., future macOS or Linux versions) or if new formulae require platform-specific handling.
- Ensure release archives include `README` and `LICENSE` so formula tests continue to pass.

## 5. Manual verification
- You can still run the workflows locally: `brew install --build-bottle Formula/qv.rb`, `brew test Formula/qv.rb`, etc., mirroring what CI does.
- If you add a `scripts/verify-release.sh`, hook it into `renovate-verify.yml` for consistent checks across local and CI environments.
