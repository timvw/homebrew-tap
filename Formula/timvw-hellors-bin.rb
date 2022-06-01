# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class TimvwHellorsBin < Formula
  desc "test repository to test github actions"
  homepage "https://github.com/timvw/timvw-hello-rs"
  url "https://github.com/timvw/timvw-hello-rs/releases/download/v0.1.88/timvw-hello-rs-0.1.88-x86_64-apple-darwin-generic.tar.gz"
  sha256 "10295adf3c28915be27c1114fb4169eafbf965e12fc6c98083039b669f79afd5"
  license "Apache-2.0"

  def install
    bin.install "timvw-hello-rs"
  end
end
