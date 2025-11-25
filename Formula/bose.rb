class Bose < Formula
  desc "CLI to control Bose SoundTouch speakers"
  homepage "https://github.com/timvw/bose"
  url "https://github.com/timvw/bose/releases/download/v0.2.10/bose-v0.2.10-apple-darwin-universal.tar.gz"
  sha256 "f378deddc0bc8de70b3f91dfdd83a6becba782f0b689ad3290d6b19eb2138724"
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
