#!/bin/sh
# Publish the pages and fonts/ to Cloudflare Pages (ostreni-nozu.pages.dev).
set -e
out=$(mktemp -d)
cp -r index.html podminky.html fonts "$out"
npx -y wrangler@4.152.0 pages deploy "$out" --project-name ostreni-nozu --branch main --commit-dirty=true
rm -rf "$out"
