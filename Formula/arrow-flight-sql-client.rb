class ArrowFlightSqlClient < Formula
  desc "Arrow Flight SQL Client"
  homepage "https://github.com/timvw/arrow-flight-sql-client"
  url "https://github.com/timvw/arrow-flight-sql-client/releases/download/v0.4.0/arrow-flight-sql-client-0.4.0-x86_64-apple-darwin-generic.tar.gz"
  sha256 "dc57a7ba0e7ca59cd0a393c8e52c88d61d21ae55729e07557845ce86ee1fe706"
  license "Apache-2.0"

  def install
    bin.install "arrow-flight-sql-client"
  end
end
