class Qv < Formula
  desc "Quickly view your data"
  homepage "https://github.com/timvw/qv"
  url "https://github.com/timvw/qv/archive/refs/tags/v0.3.3.tar.gz"
  sha256 "4763a7bfba52fd9c60beb9ed6cbcb5bb2e01c895b1296b23e513cf37ef3e5d99"
  license "Apache-2.0"
  head "https://github.com/timvw/qv.git", branch: "main"

  bottle do
    root_url "https://github.com/timvw/homebrew-tap/releases/download/qv-0.3.3"
    sha256 cellar: :any_skip_relocation, monterey:     "90b7853afc2daf0dacf3b150d40cb48d2f46f7e48af93c11a0b434b0b9c392a4"
    sha256 cellar: :any_skip_relocation, big_sur:      "f5c91119e0eb6847085e1a57770e5b11acb2c46b9cd5f6854d86ee9f5cbd1434"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "8568d214cc5003dc3b7d270f9265c3ab625b3b1b87697daed0e763e27c698f16"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    shell_output("#{bin}/qv -V")
  end
end
