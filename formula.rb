# Ensure `require "formula"` works when run via plain `ruby` in CI.
# Homebrew/actions/setup-homebrew exports HOMEBREW_LIBRARY; fall back to repository/prefix if needed.
homebrew_library =
  ENV["HOMEBREW_LIBRARY"] ||
  File.expand_path("Library/Homebrew", ENV["HOMEBREW_REPOSITORY"] || ENV["HOMEBREW_PREFIX"].to_s)

require File.join(homebrew_library, "formula")
