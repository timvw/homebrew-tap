class Qv < Formula
  desc "Quickly view your data"
  homepage "https://github.com/timvw/qv"
  url "https://github.com/timvw/qv/archive/refs/tags/v0.6.0.tar.gz"
  sha256 "3c4c89b392a9f211e4cf3198fa978380d56a19e4150a6015537c1eff5901d74b"
  license "Apache-2.0"
  head "https://github.com/timvw/qv.git", branch: "main"

  bottle do
    root_url "https://github.com/timvw/homebrew-tap/releases/download/qv-0.5.0"
    sha256 cellar: :any_skip_relocation, monterey:     "9619e5df8475865db12bcb7524cad1c1ceb5716e93e407b988452ef0d8301dc8"
    sha256 cellar: :any_skip_relocation, big_sur:      "3d7b84533308b6fbc9ea422ecf0eeba3338d47fbfd9871c86b7a83b2a37d19df"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "86f897ccf58bc19032f9208b378dc4fc4156b5022b669323f3b7d33ac40530f6"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    shell_output("#{bin}/qv -V")
  end
end
