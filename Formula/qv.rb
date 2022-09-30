class Qv < Formula
  desc "Quickly view your data"
  homepage "https://github.com/timvw/qv"
  url "https://github.com/timvw/qv/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "2daeaf27b1b18e58e4bca02e0e92c42d4d2219915e22af7cc1df9698a94b9fa8"
  license "Apache-2.0"
  head "https://github.com/timvw/qv.git", branch: "main"

  bottle do
    root_url "https://github.com/timvw/homebrew-tap/releases/download/qv-0.4.0"
    sha256 cellar: :any_skip_relocation, monterey:     "a8db93917ee219aacb819340e8351593b6ae3ccc95df67a1f4b5a5012661f7ab"
    sha256 cellar: :any_skip_relocation, big_sur:      "c0e6aeeaa964ca525a1f76582f9487f08793830da7ee42ff2410e69987f0f1c6"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "e47eb6f9372c4a4e7c3875c42d4a155ae72892518b11fc357c5145e682253c4d"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    shell_output("#{bin}/qv -V")
  end
end
