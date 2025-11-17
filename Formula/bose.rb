class Bose < Formula
  desc "CLI to control Bose SoundTouch speakers"
  homepage "https://github.com/timvw/bose"
  url "https://github.com/timvw/bose/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "b23bc1cd037a662a4cc4503ab920ede2ede0090337c3395a9a8504f9157b9a1a"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "Usage: bose", shell_output("#{bin}/bose --help")
  end
end
