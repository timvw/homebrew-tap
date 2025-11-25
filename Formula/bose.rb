class Bose < Formula
  desc "CLI to control Bose SoundTouch speakers"
  homepage "https://github.com/timvw/bose"
  url "https://github.com/timvw/bose/releases/download/v0.2.3/bose-v0.2.3-apple-darwin-universal.tar.gz"
  sha256 "6493d532efcb061c5d0a8ec1dbacdfe76ba931c3da94b872e4fd2363f4827ef8"
  license "Apache-2.0"
  # macOS-only binary; Linux checks only validate artifact availability.
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
