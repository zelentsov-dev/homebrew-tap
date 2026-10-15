class AppleAdsMcp < Formula
  desc "Local-first MCP server for Apple Ads Platform API v1"
  homepage "https://github.com/zelentsov-dev/apple-ads-mcp"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zelentsov-dev/apple-ads-mcp/releases/download/v0.3.7/apple-ads-mcp_darwin_arm64_0.3.7.tar.gz"
      sha256 "8ec5bff76a810476e869f960b85e5fd195d51438f403ae9905430cce7d9270fa"
    else
      url "https://github.com/zelentsov-dev/apple-ads-mcp/releases/download/v0.3.7/apple-ads-mcp_darwin_amd64_0.3.7.tar.gz"
      sha256 "3b3ed20ff4296a46f44aea81405f864b1fb4c95ded701dd45baaa9c910f904bd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zelentsov-dev/apple-ads-mcp/releases/download/v0.3.7/apple-ads-mcp_linux_arm64_0.3.7.tar.gz"
      sha256 "72bf0444bbf4311eb256602b680f6fb6a1912493db105a696370be664f081052"
    else
      url "https://github.com/zelentsov-dev/apple-ads-mcp/releases/download/v0.3.7/apple-ads-mcp_linux_amd64_0.3.7.tar.gz"
      sha256 "8e89d2889c950635bb9783f40ee0b72e49d1ebb0f4d11323c7f164f764981a46"
    end
  end

  def install
    bin.install "apple-ads-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/apple-ads-mcp version")
  end
end
