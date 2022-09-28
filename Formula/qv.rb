class Qv < Formula
  desc "Quickly view your data"
  homepage "https://github.com/timvw/qv"
  url "https://github.com/timvw/qv/archive/refs/tags/v0.3.3.tar.gz"
  sha256 "4763a7bfba52fd9c60beb9ed6cbcb5bb2e01c895b1296b23e513cf37ef3e5d99"
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
