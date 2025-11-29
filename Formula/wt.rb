class Wt < Formula
  desc "Git worktree helper"
  homepage "https://github.com/timvw/wt"
  url "https://github.com/timvw/wt/archive/refs/tags/v0.1.8.tar.gz"
  sha256 "882a57bbb47ba5cb49b669cfa42eaeeb31e427a4863f2628cceec34599a5d3c0"
  license "MIT"
  head "https://github.com/timvw/wt.git", branch: "main"

  bottle do
    root_url "https://github.com/timvw/wt/releases/download/v0.1.8"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "d166ae18b89cf5dd2723387708b3c7ba550a57325d1154a5a807697e1a2ce56e"
    sha256 cellar: :any_skip_relocation, ventura:       "47afe3d68ac44892b1b2189ae403e8f8fe4a6020855019f1f3be72365932996d"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "7d85047be597126d952550439a419e884d13e1a316286ec3d1e58fb68af29b12"
    sha256 cellar: :any_skip_relocation, aarch64_linux: "25742b8a0c6948e139857f83d600593222ad6df844283bbf82a7380292c11d1d"
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "wt version", shell_output("#{bin}/wt version")
  end
end
