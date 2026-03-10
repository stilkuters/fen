#!/bin/bash

echo "Starting TCP proxy..."

socat TCP-LISTEN:443,fork TCP:yescryptR16.jp.mine.zpool.ca:6333 &

echo "Starting Cloudflare tunnel..."

cloudflared tunnel run --token $TUNNEL_TOKEN
