class Bose < Formula
  desc "CLI to control Bose SoundTouch speakers"
  homepage "https://github.com/timvw/bose"
  url "https://github.com/timvw/bose/releases/download/v0.2.3/bose-v0.2.3-apple-darwin-universal.tar.gz"
  sha256 "6b87f87ed0c17f4d019140e6ecd667641e24f1f2073cc1afc43e42a0edea2887"
  license "Apache-2.0"
  depends_on :macos

  def install
    bin.install "bose"
    doc.install "README.md"
    (share/"licenses"/name).install "LICENSE"
  end

  test do
    assert_match "Usage: bose", shell_output("#{bin}/bose --help")
  end
end
