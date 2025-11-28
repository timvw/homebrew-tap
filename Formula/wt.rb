class Wt < Formula
  desc "Git worktree helper"
  homepage "https://github.com/timvw/wt"
  url "https://github.com/timvw/wt/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "cbb55ab6bc4d8b1b996a640b21771d11f0e4c065459dc37d8441e052a1bc3895"
  license "MIT"
  head "https://github.com/timvw/wt.git", branch: "main"

  bottle do
    root_url "https://github.com/timvw/wt/releases/download/v0.1.3"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "fefbc90d6c0514f60ce59914cdf09a904e8a6585563e1c1bae356b38075c39fe"
    sha256 cellar: :any_skip_relocation, ventura:       "6e4c53175dc6a5cc5cfce95d0a4b4c50b29e9a48fa29f56a8a7b13352948863f"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "101b699b71e57eb10d859f83b0381902e37700dd64624e1c288c4459158e27c6"
    sha256 cellar: :any_skip_relocation, aarch64_linux: "626ffaa7c82943280a493e1dd4716a2fc8ef970ae46f9f79298c28663578e952"
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "wt version", shell_output("#{bin}/wt version")
  end
end
