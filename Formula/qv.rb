class Qv < Formula
  desc "Quickly view your data"
  homepage "https://github.com/timvw/qv"
  url "https://github.com/timvw/qv/archive/refs/tags/v0.3.4.tar.gz"
  sha256 "5a22c7f1ceaabebf8e3ae55a7958474a4821a038e74a2a7b1f8de520c7d5b242"
  license "Apache-2.0"
  head "https://github.com/timvw/qv.git", branch: "main"

  bottle do
    root_url "https://github.com/timvw/homebrew-tap/releases/download/qv-0.3.4"
    rebuild 1
    sha256 cellar: :any_skip_relocation, monterey:     "802a5a5b58c0f1e6aefe6258594844dcaae1dbb3deb209e3e570a97cf4bf0cdc"
    sha256 cellar: :any_skip_relocation, big_sur:      "8d594fed680e2f612a332b7fd024a9d6c0db94ac6d9a52720a561c6e0cb59db1"
    sha256                               x86_64_linux: "243d82f60ba55eca030a066dd1597cca38318d0ceb84bc1b6272cbabce5dcb0c"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    shell_output("#{bin}/qv -V")
  end
end
