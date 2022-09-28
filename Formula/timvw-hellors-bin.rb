class TimvwHellorsBin < Formula
  desc "Test repository to test github actions"
  homepage "https://github.com/timvw/timvw-hello-rs"
  url "https://github.com/timvw/timvw-hello-rs/archive/refs/tags/v0.1.91.tar.gz"
  sha256 "eac264c3bc205f0663834496143c0233d4b3d075b810bdbac42a371080160e30"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/timvw/homebrew-tap/releases/download/timvw-hellors-bin-0.1.91"
    rebuild 1
    sha256 cellar: :any_skip_relocation, monterey:     "ab2b0441693ab3f9de965f675a0bc9fd0efe892edc8d767ae08dcc0ab32a29e0"
    sha256 cellar: :any_skip_relocation, big_sur:      "71827c8c41a26429c0669a1b0a2a0918fd91badb0c6da65565e1847867355b00"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "74771d525c932fe1936ca06d8f5385a31150361e175274eefaf6ba1702c9038b"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    shell_output("#{bin}/timvw-hello-rs")
  end
end
