#!/usr/bin/env bash
set -euo pipefail

# 安装 mise
curl https://mise.run | sh
export PATH="$HOME/.local/bin:$PATH"

# 安装 Go / Hugo / Node 按 .mise.toml
mise install

cd exampleSite
rm -rf resources/_gen public

# 安装 npm 依赖（bootstrap / flag-icons / katex …）
npm install

# 拉 Hugo Module（首次或主题更新）
mise x -- hugo mod get -u || true

# 构建
mise x -- hugo --gc --minify "$VERCEL_URL"
