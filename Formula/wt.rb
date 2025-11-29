class Wt < Formula
  desc "Git worktree helper"
  homepage "https://github.com/timvw/wt"
  url "https://github.com/timvw/wt/archive/refs/tags/v0.1.11.tar.gz"
  sha256 "5b4636f45e0353b2f257ca1ddcdce1a67346eb99e801c39d0a2ee791869e8197"
  license "MIT"
  head "https://github.com/timvw/wt.git", branch: "main"

  bottle do
    root_url "https://github.com/timvw/wt/releases/download/v0.1.11"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "279adabb90f5102f2c63c0a7e3226ba2cd66214b949d392ed878d2417402b1c7"
    sha256 cellar: :any_skip_relocation, ventura:       "c79dcff18976c5509e7225d52d1828edf7dbb0d13cb76cbc0fb5486114ece652"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "848618b5df230b39e915c472ac0d6cd5a16ed0136d2a3806835de3122ae537f1"
    sha256 cellar: :any_skip_relocation, aarch64_linux: "6396df3f0ed1bc003b5f9d3dfbae7df11081ca3ad96e786c786ea6d702508527"
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "wt version", shell_output("#{bin}/wt version")
  end
end
