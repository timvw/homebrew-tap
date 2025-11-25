class Qv < Formula
  desc "Quickly view your data"
  homepage "https://github.com/timvw/qv"

  if Hardware::CPU.arm?
    url "https://github.com/timvw/qv/releases/download/v0.9.15/qv-aarch64-apple-darwin.tar.gz"
    sha256 "24259e523848ab44f888da936be7a3497b67613061e5d66f6fb4aeee774a9bbc"
  else
    url "https://github.com/timvw/qv/releases/download/v0.9.15/qv-x86_64-apple-darwin.tar.gz"
    sha256 "fcd767882a98f9f15d75494a946c893494beb15a7bbf5f187da51f77b037f16a"
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
