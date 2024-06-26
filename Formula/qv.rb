class Qv < Formula
  desc "Quickly view your data"
  homepage "https://github.com/timvw/qv"
  url "https://github.com/timvw/qv/archive/refs/tags/v0.9.3.tar.gz"
  sha256 "1a9625265bd94f65645c4d5e578f541f9635d224032344125032bf7082baed23"
  license "Apache-2.0"
  head "https://github.com/timvw/qv.git", branch: "main"

  bottle do
    root_url "https://github.com/timvw/homebrew-tap/releases/download/qv-0.9.3"
    sha256 cellar: :any_skip_relocation, ventura: "c43b8d7aadbf6c20671d75aba1db8e832b47c614cccfc3dfdae918e46d0462b5"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    shell_output("#{bin}/qv -V")
  end
end
