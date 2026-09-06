class Qv < Formula
  desc "Quickly view your data"
  homepage "https://github.com/timvw/qv"

  if Hardware::CPU.arm?
    url "https://github.com/timvw/qv/releases/download/v0.10.0/qv-aarch64-apple-darwin.tar.gz"
    sha256 "02c86dee99d212201eb9fc37b883365d53b5767fe2a728f46aa7bf51a7a16fea"
  else
    url "https://github.com/timvw/qv/releases/download/v0.10.0/qv-x86_64-apple-darwin.tar.gz"
    sha256 "20be64b1c9f760fabbbcbe4d248b99082a6d3b887e688998922122278e3e895a"
  end
  license "Apache-2.0"
  version_scheme 1
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
