# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class ArrowFlightSqlClient < Formula
  desc "Arrow Flight SQL Client"
  homepage "https://github.com/timvw/arrow-flight-sql-client"
  url "https://github.com/timvw/arrow-flight-sql-client/releases/download/v0.2.0/arrow-flight-sql-client-0.2.0-x86_64-apple-darwin-generic.tar.gz"
  sha256 "70fc4c2e37da29a37d01f01db2dd46f2ca9d55e440c9af2ddefbeb8aad03355f"
  license "Apache-2.0"

  def install
    bin.install "arrow-flight-sql-client"
  end
end
