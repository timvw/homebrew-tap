class Qv < Formula
  desc "Quickly view your data"
  homepage "https://github.com/timvw/qv"
  url "https://github.com/timvw/qv/archive/refs/tags/v0.6.0.tar.gz"
  sha256 "3c4c89b392a9f211e4cf3198fa978380d56a19e4150a6015537c1eff5901d74b"
  license "Apache-2.0"
  head "https://github.com/timvw/qv.git", branch: "main"

  bottle do
    root_url "https://github.com/timvw/homebrew-tap/releases/download/qv-0.6.0"
    sha256 cellar: :any_skip_relocation, monterey:     "a30254c20a1fce2c7c2083ed8e6cb12f4f7f8f1635ac0c27a9db1dd1612f2509"
    sha256 cellar: :any_skip_relocation, big_sur:      "2e26ff6698f91cc5dc76f859e35c55799d65907cd55c0f8d7fa52cc33c9e9d17"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "88f1f3eeaa30594711c65c0521a2ba24cb2bd8a7e9b5bd2a728ccfe3154c3d96"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    shell_output("#{bin}/qv -V")
  end
end
