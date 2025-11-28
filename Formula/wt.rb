class Wt < Formula
  desc "Git worktree helper"
  homepage "https://github.com/timvw/wt"
  url "https://github.com/timvw/wt/archive/refs/tags/v0.1.5.tar.gz"
  sha256 "7792fef07ecb27c321ec45a80da837bb41b9d766094a5e5d49709c9220d7f588"
  license "MIT"
  head "https://github.com/timvw/wt.git", branch: "main"

  bottle do
    root_url "https://github.com/timvw/wt/releases/download/v0.1.5"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  ""
    sha256 cellar: :any_skip_relocation, ventura:       ""
    sha256 cellar: :any_skip_relocation, x86_64_linux:  ""
    sha256 cellar: :any_skip_relocation, aarch64_linux: ""
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "wt version", shell_output("#{bin}/wt version")
  end
end
