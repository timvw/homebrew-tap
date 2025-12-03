class Wt < Formula
  desc "Git worktree helper"
  homepage "https://github.com/timvw/wt"
  url "https://github.com/timvw/wt/archive/refs/tags/v0.1.14.tar.gz"
  sha256 "ae86a4864580a99203e9b5ddadcf640aa59c81209d612157d6637ef5266817a5"
  license "MIT"
  head "https://github.com/timvw/wt.git", branch: "main"

  bottle do
    root_url "https://github.com/timvw/wt/releases/download/v0.1.14"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "123185901b9ee390de21b8680e52983eb359a32698091c4568d49563aa5e3654"
    sha256 cellar: :any_skip_relocation, ventura:       "94c3ed002f2e5a8654713a5f9cfd78a9b5181fdcfa530773b382e523702139e5"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "3b3ade7b026e14981825f2571aee1fbfcc401a5330ecd9c58bfc64fb479afc96"
    sha256 cellar: :any_skip_relocation, aarch64_linux: "229f420902764adea000c9e4abc679496dd52b88f2323f725f5653ee48ee0043"
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "wt version", shell_output("#{bin}/wt version")
  end
end
