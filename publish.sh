#!/bin/bash
set -e

SITE_DIR=target/site
WORKTREE_DIR=.gh-pages-worktree
GH_PAGES_BRANCH=gh-pages
DOCS_SRC=doc
DOCS_HTML="$SITE_DIR/doc"

if [ -n "$GITHUB_TOKEN" ]; then
  REPO_URL="https://x-access-token:${GITHUB_TOKEN}@github.com/yinglichina8848/GraphRenderRestructured.git"
else
  REPO_URL="git@github.com:yinglichina8848/GraphRenderRestructured.git"
fi

echo "🛠️ 使用 xvfb-run 构建 Maven site 和报告..."
xvfb-run --auto-servernum --server-args="-screen 0 1024x768x16" mvn clean verify site

echo "📁 拷贝 Doxygen（如果存在）..."
DOXYGEN_HTML=docs/html
if [ -d "$DOXYGEN_HTML" ]; then
  mkdir -p "$SITE_DIR/doxygen"
  cp -r "$DOXYGEN_HTML"/* "$SITE_DIR/doxygen/"
fi

echo "📁 拷贝 aider 对话记录（如果存在）到 doc/ 目录..."
if [ -f .aider.chat.history.md ]; then
  cp .aider.chat.history.md doc/aider.chat.record.md
  echo "✅ 已复制 .aider.chat.history.md 到 doc/aider.chat.record.md"
fi

echo "📝 转换 Markdown 为 HTML..."
mkdir -p "$DOCS_HTML"
for mdfile in "$DOCS_SRC"/*.md; do
  [ -f "$mdfile" ] || continue
  name=$(basename "$mdfile" .md)
  pandoc "$mdfile" -s -o "$DOCS_HTML/$name.html" --metadata title="$name"
done

echo "📄 拷贝 PDF 文件..."
if compgen -G "$DOCS_SRC/*.pdf" > /dev/null; then
  cp "$DOCS_SRC"/*.pdf "$DOCS_HTML/"
fi

echo "📋 渲染 index.html..."
python3 scripts/render-index.py

echo "🌿 准备 gh-pages 分支..."
mkdir -p "$(dirname "$WORKTREE_DIR")"
[ -d "$WORKTREE_DIR" ] && git worktree remove "$WORKTREE_DIR" --force || true

git fetch origin "$GH_PAGES_BRANCH"
git worktree add "$WORKTREE_DIR" origin/"$GH_PAGES_BRANCH"

echo "📦 发布静态网站到 gh-pages..."
rm -rf "$WORKTREE_DIR"/*
cp -r "$SITE_DIR"/* "$WORKTREE_DIR"

cd "$WORKTREE_DIR"
git config user.name "GitHub Actions"
git config user.email "actions@github.com"
git add .
git commit -m "📄 Auto-publish site on $(date -u +'%Y-%m-%dT%H:%M:%SZ')" || echo "ℹ️ 无需提交"
git push -f origin HEAD:"$GH_PAGES_BRANCH"
cd -

echo "🧹 清理 worktree..."
git worktree remove "$WORKTREE_DIR" --force || true

echo "🎉 发布完成！访问：https://yinglichina8848.github.io/GraphRenderRestructured/"
