# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Qv < Formula
  desc "Quickly view your data"
  homepage "https://github.com/timvw/qv"
  url "https://github.com/timvw/qv/releases/download/0.1.16/qv-0.1.16-x86_64-apple-darwin-generic.tar.gz"
  sha256 "f08c56cbdac3cdb8785df8bcd434d863186dd9975bfbde751999a4d4fe29c60d"
  license "Apache-2.0"

  def install
    bin.install "qv"
  end
end
