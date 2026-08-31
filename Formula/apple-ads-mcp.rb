class AppleAdsMcp < Formula
  desc "Local-first MCP server for Apple Ads Platform API v1"
  homepage "https://github.com/zelentsov-dev/apple-ads-mcp"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zelentsov-dev/apple-ads-mcp/releases/download/v0.3.6/apple-ads-mcp_darwin_arm64_0.3.6.tar.gz"
      sha256 "b60a682f876288936c8fac5e184afab505e13ee1fdba114f42eabdf385128c1c"
    else
      url "https://github.com/zelentsov-dev/apple-ads-mcp/releases/download/v0.3.6/apple-ads-mcp_darwin_amd64_0.3.6.tar.gz"
      sha256 "d48fadaff90acd0cff7552893b101870d5515d2a9dff056c37114040d0d38837"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zelentsov-dev/apple-ads-mcp/releases/download/v0.3.6/apple-ads-mcp_linux_arm64_0.3.6.tar.gz"
      sha256 "cd460973bfdb75d16db2cfc4c8ec101acf2e2738e130000a05ac1cc281f10c87"
    else
      url "https://github.com/zelentsov-dev/apple-ads-mcp/releases/download/v0.3.6/apple-ads-mcp_linux_amd64_0.3.6.tar.gz"
      sha256 "c7e541b04ed138e8042713967ba4a8d1fcc874fb5d2a5324fdb5a792424ccd95"
    end
  end

  def install
    bin.install "apple-ads-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/apple-ads-mcp version")
  end
end
