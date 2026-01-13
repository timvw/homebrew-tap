class Wt < Formula
  desc "Git worktree helper"
  homepage "https://github.com/timvw/wt"
  url "https://github.com/timvw/wt/archive/refs/tags/v0.1.15.tar.gz"
  sha256 "32cc780572cd4c1354d25c3c70347dd42afc0575f9bd5600efb7fc7bda735af2"
  license "MIT"
  head "https://github.com/timvw/wt.git", branch: "main"

  bottle do
    root_url "https://github.com/timvw/wt/releases/download/v0.1.15"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "da1256e78d5cf8b15c883eb7741af4103316c83991e7e748b1b29870d7b29db6"
    sha256 cellar: :any_skip_relocation, ventura:       "2e7dfebbb3cadf09a36e1fae6c968f21f696e5021d8aca7b8dc0b7d55f382927"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "031dd1bfad65ba195a822e78ec73bc9759c5454386f85fb0ede1cb1253dc7c8a"
    sha256 cellar: :any_skip_relocation, aarch64_linux: "b1ad118f7a1357242d5623104a87828f97980e9af63e558e6169a2dc76669354"
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "wt version", shell_output("#{bin}/wt version")
  end
end
