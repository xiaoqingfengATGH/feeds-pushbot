#!/bin/sh
# Re-sync luci-app-pushbot/ from upstream master. Run from the repo root.
set -e
tmp=$(mktemp -d)
trap 'rm -rf "$tmp"' EXIT
git clone -q --depth 1 https://github.com/zzsj0928/luci-app-pushbot "$tmp/up"
rm -rf luci-app-pushbot
mkdir luci-app-pushbot
(cd "$tmp/up" && tar cf - --exclude=.git --exclude=.github .) | tar xf - -C luci-app-pushbot
git add -A
git commit -m "sync upstream $(git -C "$tmp/up" rev-parse --short HEAD)"
