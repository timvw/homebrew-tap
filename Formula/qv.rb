class Qv < Formula
  desc "Quickly view your data"
  homepage "https://github.com/timvw/qv"
  url "https://github.com/timvw/qv/archive/refs/tags/v0.3.2.tar.gz"
  sha256 "6278a2b43d05da21d3625a69b1419c020bb706be8f83710ea832b5d42b254c91"
  license "Apache-2.0"
  head "https://github.com/timvw/qv.git", branch: "main"

  bottle do
    root_url "https://github.com/timvw/homebrew-tap/releases/download/qv-0.3.2"
    rebuild 1
    sha256 cellar: :any_skip_relocation, monterey:     "592f9852f633f58a83627569bea7dc6b384ed60ba068f15c2eaf9384ba82decd"
    sha256 cellar: :any_skip_relocation, big_sur:      "7645d0abdd537179143436157a51cfae1a49cfc1d042b70e3f625e1a08ad18ab"
    sha256                               x86_64_linux: "a114490b58765897b17ee7441b8db8782d64a2c5477644623583e3e65a1d2879"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    shell_output("#{bin}/qv -V")
  end
end
