class Qv < Formula
  desc "Quickly view your data"
  homepage "https://github.com/timvw/qv"
  url "https://github.com/timvw/qv/archive/refs/tags/v0.8.1.tar.gz"
  sha256 "336b32fb3065fa36dd596ade4de304e0931c7eabc96edff79d13570754e2805a"
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
