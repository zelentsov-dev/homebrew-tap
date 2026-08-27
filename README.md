# Homebrew Tap

Official Homebrew formulas for released `zelentsov-dev` command-line tools.

## Install

```bash
brew install zelentsov-dev/tap/apple-ads-mcp
```

Homebrew automatically adds this tap when the fully qualified formula name is used. Upgrade installed tools with `brew update` followed by `brew upgrade`.

## Formulae

| Formula | Purpose | Platforms |
| --- | --- | --- |
| [`apple-ads-mcp`](https://github.com/zelentsov-dev/apple-ads-mcp) | Local-first MCP server for Apple Ads Platform API v1 | macOS and Linux, arm64 and amd64 |

Each formula installs checksum-pinned archives from the upstream GitHub Release. A project is added here only after it publishes a versioned, self-contained artifact, checksums, and a command that verifies the installed version.

For Apple Ads credentials, MCP client registration, safety controls, and first-use checks, follow the upstream [`apple-ads-mcp` README](https://github.com/zelentsov-dev/apple-ads-mcp#quick-start).
