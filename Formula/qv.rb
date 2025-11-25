class Qv < Formula
  desc "Quickly view your data"
  homepage "https://github.com/timvw/qv"
  arch arm: "aarch64", intel: "x86_64"

  url "https://github.com/timvw/qv/releases/download/v0.9.14/qv-#{arch}-apple-darwin.tar.gz"
  sha256 arm: "663ce40c3a4e68a6b4feef93d919534c22922cc352588129c49e816a00359b4d",
         intel: "26a19254960b934a9430f3830df64400de98f25e2a669b1e3bfad09a32176f76"
  license "Apache-2.0"
  head "https://github.com/timvw/qv.git", branch: "main"

  depends_on :macos

  def install
    bin.install "qv"
    doc.install "README.md" if File.exist?("README.md")
    (share/"licenses"/name).install "LICENSE" if File.exist?("LICENSE")
  end

  test do
    shell_output("#{bin}/qv -V")
  end
end
