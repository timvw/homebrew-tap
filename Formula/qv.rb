class Qv < Formula
  desc "Quickly view your data"
  homepage "https://github.com/timvw/qv"
  url "https://github.com/timvw/qv/archive/refs/tags/v0.9.0.tar.gz"
  sha256 "ca9486bb9aa3553edd3a6515df3560fe1aaff909efc0774b6c170bf2d5ceb721"
  license "Apache-2.0"
  head "https://github.com/timvw/qv.git", branch: "main"

  bottle do
    root_url "https://github.com/timvw/homebrew-tap/releases/download/qv-0.8.4"
    sha256 cellar: :any_skip_relocation, monterey:     "f164588390f730592f05e1366ed036d5a4e5fb9d387fc8ce30c5fe9ac2b9eb3a"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "0e5defc877777f58471022fcf3a4d3c9d7da1116b93588b3db02aa3d9f9f35f7"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    shell_output("#{bin}/qv -V")
  end
end
