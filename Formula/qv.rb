# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Qv < Formula
  desc "Quickly view your data"
  homepage "https://github.com/timvw/qv"
  url "https://github.com/timvw/qv/releases/download/0.1.21/qv-0.1.21-x86_64-apple-darwin-generic.tar.gz"
  license "Apache-2.0"

  def install
    bin.install "qv"
  end
end
