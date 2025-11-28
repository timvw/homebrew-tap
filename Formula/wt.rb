class Wt < Formula
  desc "Git worktree helper"
  homepage "https://github.com/timvw/wt"
  version "0.1.0"
  license "MIT"
  head "https://github.com/timvw/wt.git", branch: "main"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/timvw/wt/releases/download/v0.1.0/wt-darwin-arm64"
      sha256 "a18a515d5bebb4e91d32c353bd80c5336d4a23c9f26ce93e4496e6980b23a3ba"
    else
      url "https://github.com/timvw/wt/releases/download/v0.1.0/wt-darwin-amd64"
      sha256 "85bb8d64860b170e70e428944ef7f6402bda11db329f6cfca14250224d871c9b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/timvw/wt/releases/download/v0.1.0/wt-linux-arm64"
      sha256 "4572b19fe879b84837fd131a9d7b057a3fa999eb5a6b43da74890d4c6be194b1"
    else
      url "https://github.com/timvw/wt/releases/download/v0.1.0/wt-linux-amd64"
      sha256 "27f58a4312670acc43a1a2c0bbc3a6eaa402330d3e2864def31ff5182d1ccf12"
    end
  end

  def install
    os = OS.mac? ? "darwin" : "linux"
    arch = Hardware::CPU.arm? ? "arm64" : "amd64"
    bin.install "wt-#{os}-#{arch}" => "wt"
  end

  test do
    assert_match "wt version", shell_output("#{bin}/wt version")
  end
end
