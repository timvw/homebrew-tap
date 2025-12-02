class Wt < Formula
  desc "Git worktree helper"
  homepage "https://github.com/timvw/wt"
  url "https://github.com/timvw/wt/archive/refs/tags/v0.1.12.tar.gz"
  sha256 "001c1ed65dc8893e7049895b45948db4f187bbcf5433d6ddc9be8a59ad80aeac"
  license "MIT"
  head "https://github.com/timvw/wt.git", branch: "main"

  bottle do
    root_url "https://github.com/timvw/wt/releases/download/v0.1.12"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "6e6450bf71d057034128cbf07a5afba8290571939aabef7b5dbfdfa60ba6f1f1"
    sha256 cellar: :any_skip_relocation, ventura:       "70fc3c1b5a4ed6423ee174fabc558fb20b55f0795ce8c918c3904274a7ba6aca"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "e745ec71680366b3d096394e8d16d4e0cd71cbe3280404a6064650d8300812a1"
    sha256 cellar: :any_skip_relocation, aarch64_linux: "ae1a1387bf016090592865812ca949749237a77b56e61659ed1cbd56cb60b8be"
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "wt version", shell_output("#{bin}/wt version")
  end
end
