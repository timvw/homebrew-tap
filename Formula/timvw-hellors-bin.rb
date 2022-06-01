# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class TimvwHellorsBin < Formula
  desc "test repository to test github actions"
  homepage "https://github.com/timvw/timvw-hello-rs"
  url "https://github.com/timvw/timvw-hello-rs/releases/download/v0.1.91/timvw-hello-rs-0.1.91-x86_64-apple-darwin-generic.tar.gz"
  sha256 "b66aa95be624f43d34ab0dfc135ec0d974970067e460b473eb49961783a380a2"
  license "Apache-2.0"

  def install
    bin.install "timvw-hello-rs"
  end
end
