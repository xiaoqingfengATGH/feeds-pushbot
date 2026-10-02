# feeds-pushbot

Packaging wrapper feed for [zzsj0928/luci-app-pushbot](https://github.com/zzsj0928/luci-app-pushbot)
(serverchan successor, ucode rewrite), so it can be consumed with `src-git`.

Why a wrapper: upstream keeps its package Makefile at the repo **root**, which the
OpenWrt feed scanner (`include/scan.mk`) cannot index - it requires one
subdirectory per package. This repo wraps the upstream tree verbatim under
`luci-app-pushbot/`.

## Sync from upstream

    ./sync.sh

## Usage (feeds.conf.default)

    src-git pushbot https://github.com/xiaoqingfengATGH/feeds-pushbot.git;master
