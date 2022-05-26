# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class HellorsBin < Formula
  desc "test repository to test github actions"
  homepage "https://github.com/timvw/hello-rs"
  url "https://github.com/timvw/hello-rs/releases/download/0.1.19/hello-rs-0.1.19-x86_64-apple-darwin-generic.tar.gz"
  sha256 "26416b98d9643a13a3677a817cb33ae1fe7f728b62a1b9eb2c21c706dfc4107c"
  license "Apache-2.0"

  def install
    bin.install "hello-rs"
  end
end
