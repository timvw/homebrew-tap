class Wt < Formula
  desc "Git worktree helper"
  homepage "https://github.com/timvw/wt"
  url "https://github.com/timvw/wt/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "cbb55ab6bc4d8b1b996a640b21771d11f0e4c065459dc37d8441e052a1bc3895"
  license "MIT"
  head "https://github.com/timvw/wt.git", branch: "main"

  bottle do
    root_url "https://github.com/timvw/wt/releases/download/v0.1.4"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "5fd336d8f7e6d5c2e598dae0edffbaaef53b212739b235adbc6e656e034b39cf"
    sha256 cellar: :any_skip_relocation, ventura:       "c8aa5035fcb1d6dd5e8ea8794bcf0df309dd9f009283cca71c223f9cb8b2b97c"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "e8b38b0a3076c19af5988075cc74d30519092c5e6f32e0b16dd0d30f15e0b0a3"
    sha256 cellar: :any_skip_relocation, aarch64_linux: "80f3c867600b05a04404405b22cbe103991d07421559b49b1ddc363c3e1f6814"
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "wt version", shell_output("#{bin}/wt version")
  end
end
