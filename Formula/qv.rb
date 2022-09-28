class Qv < Formula
  desc "Quickly view your data"
  homepage "https://github.com/timvw/qv"
  url "https://github.com/timvw/qv/archive/refs/tags/v0.3.2.tar.gz"
  sha256 "6278a2b43d05da21d3625a69b1419c020bb706be8f83710ea832b5d42b254c91"
  license "Apache-2.0"
  head "https://github.com/timvw/qv.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    shell_output("#{bin}/qv -V")
  end
end
