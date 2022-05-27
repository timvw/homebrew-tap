# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Qv < Formula
  desc "Quickly view your data"
  homepage "https://github.com/timvw/qv"
  url "https://github.com/timvw/qv/archive/0.1.13.tar.gz"
  sha256 "c77a77b60392e63a73ad8dec4dd86c35f9eb542e198033271c85ab93ac3baf68"
  license "Apache-2.0"

  def install
    bin.install "qv"
  end
end
