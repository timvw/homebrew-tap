class Bose < Formula
  desc "CLI to control Bose SoundTouch speakers"
  homepage "https://github.com/timvw/bose"
  url "https://github.com/timvw/bose/releases/download/v0.2.0/bose-0.2.0-macos-universal.tar.gz"
  sha256 "d0616decd3aca56e0b8642d6b26fd955288c6c86f70d5847fcaac59f25f6c3f4"
  license "Apache-2.0"

  def install
    bin.install "bose-universal-macos" => "bose"
    doc.install "README.md"
    (share/"licenses"/name).install "LICENSE"
  end

  test do
    assert_match "Usage: bose", shell_output("#{bin}/bose --help")
  end
end
