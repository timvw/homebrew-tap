# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class TimvwHellorsBin < Formula
  desc "test repository to test github actions"
  homepage "https://github.com/timvw/timvw-hello-rs"
  url "https://github.com/timvw/timvw-hello-rs/archive/0.1.32.tar.gz"
  sha256 "99714ee63ee1e2976ba5ee9dc0a50ceebb4c6ad9481360b02dbab187e8b2e3f2"
  license "Apache-2.0"

  def install
    bin.install "timvw-hello-rs"
  end
end
