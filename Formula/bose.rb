class Bose < Formula
  desc "CLI to control Bose SoundTouch speakers"
  homepage "https://github.com/timvw/bose"
  url "https://github.com/timvw/bose/releases/download/v0.2.2/bose-0.2.2-macos-universal.tar.gz"
  sha256 "90dc44b9a92a379867bace4f64edaf4542c7dada0079fee9404fff05c9e867cc"
  license "Apache-2.0"
  depends_on :macos

  def install
    bin.install "bose-universal-macos" => "bose"
    doc.install "README.md"
    (share/"licenses"/name).install "LICENSE"
  end

  test do
    assert_match "Usage: bose", shell_output("#{bin}/bose --help")
  end
end
