class Wt < Formula
  desc "Git worktree helper"
  homepage "https://github.com/timvw/wt"
  url "https://github.com/timvw/wt/archive/refs/tags/v0.1.13.tar.gz"
  sha256 "aa9427a2016ab3342b5d2f48788bd7269f5ee59131624a1b9946cdb5d07422e6"
  license "MIT"
  head "https://github.com/timvw/wt.git", branch: "main"

  bottle do
    root_url "https://github.com/timvw/wt/releases/download/v0.1.13"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "1cd388a7e8fd0c76f894b3d1b6625842bc4e0498e05f8e0681efeee7357917b1"
    sha256 cellar: :any_skip_relocation, ventura:       "b43000fc195391ff504afa235e349033c247009462ea867fb2929468a22675ed"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "8cc17b2d68895b670b4b6ebee71001e3c45244a8b028778c0c3d673f45bc6152"
    sha256 cellar: :any_skip_relocation, aarch64_linux: "d02ef2549fabee527f77b97ca09b76415f7d0a40cc8b3ab9787bb545b81bee96"
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "wt version", shell_output("#{bin}/wt version")
  end
end
