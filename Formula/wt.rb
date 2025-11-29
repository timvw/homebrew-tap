class Wt < Formula
  desc "Git worktree helper"
  homepage "https://github.com/timvw/wt"
  url "https://github.com/timvw/wt/archive/refs/tags/v0.1.7.tar.gz"
  sha256 "b3339f4f0b58f3f55f68bb616ac064e21615e4081f77f7b42f24f9ee0438be74"
  license "MIT"
  head "https://github.com/timvw/wt.git", branch: "main"

  bottle do
    root_url "https://github.com/timvw/wt/releases/download/v0.1.7"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "ada2e0f34abf89fac39d47f9b63826dffdf225ad0dd29dfd0e813e1ff92434a8"
    sha256 cellar: :any_skip_relocation, ventura:       "ce34eb57e125b357c0e8142521a238b0dc5c159b34488a5e0eb462cb3d4de9a0"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "59739b7e12598732373db857208089a3aeef793dae934c663009c8d772d39aa5"
    sha256 cellar: :any_skip_relocation, aarch64_linux: "f80b234d63785af7ae2d193f6718b3cc7306cc0f6d6008482437c92bbdcef20b"
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "wt version", shell_output("#{bin}/wt version")
  end
end
