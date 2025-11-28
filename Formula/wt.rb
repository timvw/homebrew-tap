class Wt < Formula
  desc "Git worktree helper"
  homepage "https://github.com/timvw/wt"
  url "https://github.com/timvw/wt/archive/refs/tags/v0.1.6.tar.gz"
  sha256 "2bcd85a4a90ad2b14ca4f9a4930b02793a0b21edc96404bd60a5137c7bee0bae"
  license "MIT"
  head "https://github.com/timvw/wt.git", branch: "main"

  bottle do
    root_url "https://github.com/timvw/wt/releases/download/v0.1.6"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "48168444992bee9a78c48f39ef17417276cba513b4e1b34a42374fa8bd4825ad"
    sha256 cellar: :any_skip_relocation, ventura:       "2903b52578c62fa0428a4b2d41e2e7b17d6e3778667976376a4a2f5864445da2"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "848e3b76d68070bb3e95d282455105405971da1d5b911ea1c2c9d19dcf0908e4"
    sha256 cellar: :any_skip_relocation, aarch64_linux: "31a9f6f8d8ff1adc85c4a43b7f1d71e1a021d94066bfb6b6b0a02537c6bd6612"
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "wt version", shell_output("#{bin}/wt version")
  end
end
