class AppleAdsMcp < Formula
  desc "Local-first MCP server for Apple Ads Platform API v1"
  homepage "https://github.com/zelentsov-dev/apple-ads-mcp"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zelentsov-dev/apple-ads-mcp/releases/download/v0.3.2/apple-ads-mcp_0.3.2_darwin_arm64.tar.gz"
      sha256 "b36abb75b7cd8234759f133000a141b47253028f2bedc12107113d0fb8e59b7c"
    else
      url "https://github.com/zelentsov-dev/apple-ads-mcp/releases/download/v0.3.2/apple-ads-mcp_0.3.2_darwin_amd64.tar.gz"
      sha256 "41cf2bde200bb0f641adb9a24df8d57ff577ccc317cab705b50de8daf3ae6019"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zelentsov-dev/apple-ads-mcp/releases/download/v0.3.2/apple-ads-mcp_0.3.2_linux_arm64.tar.gz"
      sha256 "d105614c60058030ef178de1194d6accb57dbf7980187639072a1b20b4ddf0ce"
    else
      url "https://github.com/zelentsov-dev/apple-ads-mcp/releases/download/v0.3.2/apple-ads-mcp_0.3.2_linux_amd64.tar.gz"
      sha256 "4a4b84936ebd6d1cfabb0c4f6594b158d3692d88e0dceb2987d5c694f95ba3fb"
    end
  end

  def install
    bin.install "apple-ads-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/apple-ads-mcp version")
  end
end
