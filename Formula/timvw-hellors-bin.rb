# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class TimvwHellorsBin < Formula
  desc "test repository to test github actions"
  homepage "https://github.com/timvw/timvw-hello-rs"
  url "https://github.com/timvw/timvw-hello-rs/releases/download/0.1.21/timvw-hello-rs-0.1.21-x86_64-apple-darwin-generic.tar.gz"
  sha256 "34d02e41257526219ee4621055274e36662382e31ae13c2f52a434bde0f11a5f"
  license "Apache-2.0"

  def install
    bin.install "timvw-hello-rs"
  end
end
