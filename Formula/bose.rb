class Bose < Formula
  desc "CLI to control Bose SoundTouch speakers"
  homepage "https://github.com/timvw/bose"
  url "https://github.com/timvw/bose/archive/refs/tags/v0.2.10.tar.gz"
  sha256 "e72751442c3f8ca85716d73382468a8b2755d2ff9700d44903ce20a83d24c6d4"
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
