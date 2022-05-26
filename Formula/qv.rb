# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Qv < Formula
  desc "Quickly view your data"
  homepage "https://github.com/timvw/qv"
  url "https://github.com/timvw/qv/releases/download/0.1.12/qv-0.1.12-x86_64-apple-darwin-generic.tar.gz"
  sha256 "d92922519ffde5543fc2489ce4240971fc93f268d8a0ff8e1d8d1f771fe3effa"
  license "Apache-2.0"

  def install
    bin.install "qv"
  end
end
