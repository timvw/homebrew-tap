class Qv < Formula
  desc "Quickly view your data"
  homepage "https://github.com/timvw/qv"
  url "https://github.com/timvw/qv/releases/download/v0.9.6/qv-0.9.6-macos-arm64.tar.gz"
  sha256 "9443fa4623439bda45ab3d5614907b6a9f48908dc8c27409196c6929aadd9b01"
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
