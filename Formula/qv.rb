
class Qv < Formula
  desc "Quickly view your data"
  homepage "https://github.com/timvw/qv"
  url "https://github.com/timvw/qv/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "9ad50c79a90ecab399d861429ff045309c9d7e45012e9dd930e313c61bf4b9fe"
  license "Apache-2.0"
  head "https://github.com/timvw/qv.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    shell_output("#{bin}/qv")
  end
end

