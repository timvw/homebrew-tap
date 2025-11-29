class Wt < Formula
  desc "Git worktree helper"
  homepage "https://github.com/timvw/wt"
  url "https://github.com/timvw/wt/archive/refs/tags/v0.1.9.tar.gz"
  sha256 "3a6bf2a401f92e888b30f2a8b2bf1544b95d7b167bd5fa9e2c9bdb1f588d55ae"
  license "MIT"
  head "https://github.com/timvw/wt.git", branch: "main"

  bottle do
    root_url "https://github.com/timvw/wt/releases/download/v0.1.9"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "ab678656d6df5937aa4950bffc317ae4d197906a2b08c09d202397929b4a825f"
    sha256 cellar: :any_skip_relocation, ventura:       "af709cad1dc9f8451afb2031c3fd48adfe99eba66cfa44ac323254a8b07cd77e"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "e702630773ece005a10746517d99e4310f7ee687c28d1d4a0fd85af0960532f9"
    sha256 cellar: :any_skip_relocation, aarch64_linux: "493449c1036709fbc01f1efb66450399edc58131b47632447247cad00fb8c728"
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "wt version", shell_output("#{bin}/wt version")
  end
end
