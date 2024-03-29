class Qv < Formula
  desc "Quickly view your data"
  homepage "https://github.com/timvw/qv"
  url "https://github.com/timvw/qv/archive/refs/tags/v0.9.1.tar.gz"
  sha256 "ee2ded57cf047aa3767a7ace34e8772755adedfea68e6e5ea510c639c611a591"
  license "Apache-2.0"
  head "https://github.com/timvw/qv.git", branch: "main"

  bottle do
    root_url "https://github.com/timvw/homebrew-tap/releases/download/qv-0.9.1"
    sha256 cellar: :any_skip_relocation, ventura: "da46745aefb68b81c4c271a776a5e7f66ccb6340d861461ce7df7f14d67e0583"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    shell_output("#{bin}/qv -V")
  end
end
