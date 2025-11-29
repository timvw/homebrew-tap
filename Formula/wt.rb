class Wt < Formula
  desc "Git worktree helper"
  homepage "https://github.com/timvw/wt"
  url "https://github.com/timvw/wt/archive/refs/tags/v0.1.10.tar.gz"
  sha256 "62c6126e10b8da44e03ad5826149d894951c43e4252c7dd5ef1726678bf57112"
  license "MIT"
  head "https://github.com/timvw/wt.git", branch: "main"

  bottle do
    root_url "https://github.com/timvw/wt/releases/download/v0.1.10"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "ace37f507ef9afb997c9506cb54355c37052c0fdd7118977f2694c090c9e37ff"
    sha256 cellar: :any_skip_relocation, ventura:       "3aef9b233081357e68841cadd268e91e4e3f39f968c369bc2f270c03855ec742"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "fd8f04f9054aa11c9bc0c554df3328dda9439b71146c06fb05dc52e4e091cf35"
    sha256 cellar: :any_skip_relocation, aarch64_linux: "db0d71aaf750b3b7792f9ac2d3af9ae2f586a7323db1bcf11c8a8c5a89224b85"
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "wt version", shell_output("#{bin}/wt version")
  end
end
