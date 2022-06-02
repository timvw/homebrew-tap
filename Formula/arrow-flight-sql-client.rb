# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class ArrowFlightSqlClient < Formula
  desc "Arrow Flight SQL Client"
  homepage "https://github.com/timvw/arrow-flight-sql-client"
  url "https://github.com/timvw/arrow-flight-sql-client/releases/download/v0.1.0/arrow-flight-sql-client-0.1.0-x86_64-apple-darwin-generic.tar.gz"
  sha256 "c8fd2db3f427301ab13f003feaa3d37f302103a5623e7027d555e29cccbd0c89"
  license "Apache-2.0"

  def install
    bin.install "arrow-flight-sql-client"
  end
end
