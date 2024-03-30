class Qv < Formula
  desc "Quickly view your data"
  homepage "https://github.com/timvw/qv"
  url "https://github.com/timvw/qv/archive/refs/tags/v0.9.6.tar.gz"
  sha256 "9b28df05aad691b9dfa2be5f680fa3ea1949a014bc10e7f81709b8ed3a84b9a1"
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
