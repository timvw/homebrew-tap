# Bose Formula Bottling

These are the steps I followed to produce the universal (arm64 + x86_64) binary
for `bose` v0.2.0 and update the Homebrew formula to use it. Future releases
can reuse the same flow.

## 1. Build release binaries

```bash
cd ~/src/github/bose
rustup target add x86_64-apple-darwin   # one-time setup
cargo build --release                   # arm64 build on Apple Silicon
cargo build --release --target x86_64-apple-darwin
```

## 2. Create a universal binary

```bash
mkdir -p dist
install -m 755 target/release/bose dist/bose-aarch64-apple-darwin
install -m 755 target/x86_64-apple-darwin/release/bose dist/bose-x86_64-apple-darwin
strip -S -x dist/bose-aarch64-apple-darwin dist/bose-x86_64-apple-darwin
lipo -create -output dist/bose-universal-macos \
  dist/bose-aarch64-apple-darwin dist/bose-x86_64-apple-darwin
strip -S -x dist/bose-universal-macos
cp LICENSE dist/
cat > dist/README.md <<'EOF'
# Bose CLI Binary

This archive contains the prebuilt `bose` CLI for macOS (universal arm64/x86_64).
EOF
```

## 3. Package and upload

```bash
VERSION=0.2.0
ARCHIVE="dist/bose-${VERSION}-macos-universal.tar.gz"
tar -czf "$ARCHIVE" -C dist bose-universal-macos README.md LICENSE
shasum -a 256 "$ARCHIVE"
gh release upload "v${VERSION}" "$ARCHIVE" --clobber
```

## 4. Update the formula

In `homebrew-tap/Formula/bose.rb`:

- Set `url` to the GitHub release asset.
- Replace the `sha256` with the checksum from the previous step.
- Remove the `depends_on "rust" => :build` line (no build needed).
- Install the binary directly inside `def install`:

```ruby
bin.install "bose-universal-macos" => "bose"
doc.install "README.md"
(share/"licenses"/name).install "LICENSE"
```

## 5. Test locally

```bash
cd ~/src/github/homebrew-tap
brew uninstall --force bose || true
brew install --formula ./Formula/bose.rb
bose --help
brew test ./Formula/bose.rb
brew audit --strict ./Formula/bose.rb
```

## 6. Open a PR

Commit the formula/doc changes, push a branch, and open a PR. The
`brew test-bot` GitHub Action (see `.github/workflows/tests.yml`) will build and
verify the formula, and `publish.yml` will run `brew pr-pull` once the PR is
labelled appropriately.
