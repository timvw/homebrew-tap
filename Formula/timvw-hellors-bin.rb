class TimvwHellorsBin < Formula
  desc "Test repository to test github actions"
  homepage "https://github.com/timvw/timvw-hello-rs"
  url "https://github.com/timvw/timvw-hello-rs/archive/refs/tags/v0.1.91.tar.gz"
  sha256 "eac264c3bc205f0663834496143c0233d4b3d075b810bdbac42a371080160e30"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    shell_output("#{bin}/qv -V")
  end
end
