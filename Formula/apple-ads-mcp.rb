class AppleAdsMcp < Formula
  desc "Local-first MCP server for Apple Ads Platform API v1"
  homepage "https://github.com/zelentsov-dev/apple-ads-mcp"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zelentsov-dev/apple-ads-mcp/releases/download/v0.3.1/apple-ads-mcp_0.3.1_darwin_arm64.tar.gz"
      sha256 "5bd64f89fec923b9c2df2c76b15cd8009c74b833389f89fc99493a9ac9fb4c97"
    else
      url "https://github.com/zelentsov-dev/apple-ads-mcp/releases/download/v0.3.1/apple-ads-mcp_0.3.1_darwin_amd64.tar.gz"
      sha256 "9e631c14950074c1644bd25a7d9422295c7f55ac3829250c6c0eebf428e6fd76"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zelentsov-dev/apple-ads-mcp/releases/download/v0.3.1/apple-ads-mcp_0.3.1_linux_arm64.tar.gz"
      sha256 "9438cf52de31111ac4d1752ca8035cea6634e5befae6bd208820ba43b9a46739"
    else
      url "https://github.com/zelentsov-dev/apple-ads-mcp/releases/download/v0.3.1/apple-ads-mcp_0.3.1_linux_amd64.tar.gz"
      sha256 "d41641f0ddda42504dffdb1ad1745f119dd98251c1055da8f065d6cf1124e88d"
    end
  end

  def install
    bin.install "apple-ads-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/apple-ads-mcp version")
  end
end
