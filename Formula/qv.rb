class Qv < Formula
  desc "Quickly view your data"
  homepage "https://github.com/timvw/qv"

  if Hardware::CPU.arm?
    url "https://github.com/timvw/qv/releases/download/v0.11.0/qv-aarch64-apple-darwin.tar.gz"
    sha256 "4245d63aac3eeb9555a1d327193aa8b1bb6c4ba68c2f716c3cbb91d316edc280"
  else
    url "https://github.com/timvw/qv/releases/download/v0.11.0/qv-x86_64-apple-darwin.tar.gz"
    sha256 "e2b59edd41335d92d1d099faf69b529d20a3d644dd795dc75ac6273f547cd4a9"
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
