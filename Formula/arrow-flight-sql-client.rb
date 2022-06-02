# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class ArrowFlightSqlClient < Formula
  desc "Arrow Flight SQL Client"
  homepage "https://github.com/timvw/arrow-flight-sql-client"
  url "https://github.com/timvw/arrow-flight-sql-client/releases/download/v0.3.0/arrow-flight-sql-client-0.3.0-x86_64-apple-darwin-generic.tar.gz"
  sha256 "1f3039d24ee9989c80e81b1566d93005b8c76d1534236ac4f7a375c88ce35106"
  license "Apache-2.0"

  def install
    bin.install "arrow-flight-sql-client"
  end
end
