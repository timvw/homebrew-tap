class Wt < Formula
  desc "Git worktree helper"
  homepage "https://github.com/timvw/wt"
  version "0.1.0"
  license "MIT"
  head "https://github.com/timvw/wt.git", branch: "main"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/timvw/wt/releases/download/v0.1.1/wt-darwin-arm64"
      sha256 "a1c3a04db2c22696995d8b016e255d3a827ffacc87908d510f453442c1814f69"
    else
      url "https://github.com/timvw/wt/releases/download/v0.1.1/wt-darwin-amd64"
      sha256 "0ad0c1bbcdc2d27e231ce6d7cf35c69709fed82b567ed531d1903a704313a372"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/timvw/wt/releases/download/v0.1.1/wt-linux-arm64"
      sha256 "c9a7f5b01fe10700d4b1aa70560cd80247c312f56272e95dc95dbc69a8e05574"
    else
      url "https://github.com/timvw/wt/releases/download/v0.1.1/wt-linux-amd64"
      sha256 "18e62923017ce65c3d6e5a5d82bcdec92c7c56797549f18d79049193b936ec39"
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
