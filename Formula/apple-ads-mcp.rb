class AppleAdsMcp < Formula
  desc "Local-first MCP server for Apple Ads Platform API v1"
  homepage "https://github.com/zelentsov-dev/apple-ads-mcp"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zelentsov-dev/apple-ads-mcp/releases/download/v0.3.8/apple-ads-mcp_darwin_arm64_0.3.8.tar.gz"
      sha256 "b8dfbedd7270c6ccefa3d9a4c236d4b4f1dc2bab51297e3739dfe16456c15b8c"
    else
      url "https://github.com/zelentsov-dev/apple-ads-mcp/releases/download/v0.3.8/apple-ads-mcp_darwin_amd64_0.3.8.tar.gz"
      sha256 "aed2c468c1bbb4556ca95def192e7bf7b696b8ac218007bdfc84aab32530789f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zelentsov-dev/apple-ads-mcp/releases/download/v0.3.8/apple-ads-mcp_linux_arm64_0.3.8.tar.gz"
      sha256 "ce1abf2dd9339ac90c1d0e447b0ac53991df50accb3901662e4c1a627c4c8879"
    else
      url "https://github.com/zelentsov-dev/apple-ads-mcp/releases/download/v0.3.8/apple-ads-mcp_linux_amd64_0.3.8.tar.gz"
      sha256 "84ecdeea4e616f8348aae9fe2200f592fe4c75833c9158fea328944ddcc5911e"
    end
  end

  def install
    bin.install "apple-ads-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/apple-ads-mcp version")
  end
end
