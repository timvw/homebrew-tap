class Qv < Formula
  desc "Quickly view your data"
  homepage "https://github.com/timvw/qv"
  url "https://github.com/timvw/qv/releases/download/v0.9.14/qv-0.9.14-macos-arm64.tar.gz"
  sha256 "635dfdc03ea54aafe80854781b590efa42ea1de9e0d67e5a69d64bdf8b78de0b"
  license "Apache-2.0"
  head "https://github.com/timvw/qv.git", branch: "main"

  depends_on :macos

  def install
    bin.install "qv-universal-macos" => "qv"
    doc.install "README.md" if File.exist?("README.md")
    (share/"licenses"/name).install "LICENSE"
  end

  test do
    shell_output("#{bin}/qv -V")
  end
end
