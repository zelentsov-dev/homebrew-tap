class AppleAdsMcp < Formula
  desc "Local-first MCP server for Apple Ads Platform API v1"
  homepage "https://github.com/zelentsov-dev/apple-ads-mcp"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zelentsov-dev/apple-ads-mcp/releases/download/v0.3.5/apple-ads-mcp_darwin_arm64_0.3.5.tar.gz"
      sha256 "403cfe7539227c2c31d3f7e28597bbddd436ec7e3feb1f2f1af2ea8be39d0975"
    else
      url "https://github.com/zelentsov-dev/apple-ads-mcp/releases/download/v0.3.5/apple-ads-mcp_darwin_amd64_0.3.5.tar.gz"
      sha256 "001443885e0b296691288e8375716d0b755d03c6c997b2b7ddb84f8605e433ef"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zelentsov-dev/apple-ads-mcp/releases/download/v0.3.5/apple-ads-mcp_linux_arm64_0.3.5.tar.gz"
      sha256 "5a12deaf36155d784cbb76f5c0acacab89798df8295147838dc4bd917ffeb5df"
    else
      url "https://github.com/zelentsov-dev/apple-ads-mcp/releases/download/v0.3.5/apple-ads-mcp_linux_amd64_0.3.5.tar.gz"
      sha256 "d2835dff37366ae1d92075801c71bd8d7ba2fca2ac785e420273edab8009ef4a"
    end
  end

  def install
    bin.install "apple-ads-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/apple-ads-mcp version")
  end
end
