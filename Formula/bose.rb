class Bose < Formula
  desc "CLI to control Bose SoundTouch speakers"
  homepage "https://github.com/timvw/bose"
  url "https://github.com/timvw/bose/releases/download/v0.2.2/bose-v0.2.2-apple-darwin-universal.tar.gz"
  sha256 "25d554be2a574374931f596c370e4cb135d620f17a77ca65a6fe39ccdd9580e7"
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
