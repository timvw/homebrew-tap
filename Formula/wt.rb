class Wt < Formula
  desc "Git worktree helper"
  homepage "https://github.com/timvw/wt"
  url "https://github.com/timvw/wt/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "faa7c4167c8755e59647c28e3d0d177eb5a70c5cbe4c35db98646f64634fc228"
  license "MIT"
  head "https://github.com/timvw/wt.git", branch: "main"

  bottle do
    root_url "https://github.com/timvw/wt/releases/download/v0.1.2"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "61cf10570098b11b8cfad78ab5bb1eeecedcdbca2d3cf7736a216b23f4d458be"
    sha256 cellar: :any_skip_relocation, ventura: "2a9405cc092ca62ba0f0a80bb25867beddb2e04c158156604f1f3a805fe62016"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "11d8ca256f2224f03d25b68aa8e0d3aaf5fa0d056f17a5f9759c3b22d8fa0242"
    sha256 cellar: :any_skip_relocation, aarch64_linux: "c6adea11f21a787ad5f9e8fc5cc8003d19ed3f71ac680c5e461fe716d3407ba3"
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "wt version", shell_output("#{bin}/wt version")
  end
end
