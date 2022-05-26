# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class TimvwHellorsBin < Formula
  desc "test repository to test github actions"
  homepage "https://github.com/timvw/timvw-hello-rs"
  url "https://github.com/timvw/timvw-hello-rs/archive/0.1.29.tar.gz"
  sha256 "8ac0b18a1d7a24c112074c6eddd530b229ccdb09f74f46617ac10d7881a14ac4"
  license "Apache-2.0"

  def install
    bin.install "timvw-hello-rs"
  end
end
