#! /usr/bin/env bash

# REQUIRES TAILSCALE RUNNING

set -euo pipefail

npm install

npm run build

rsync \
  -avzP \
  --delete \
  dist/ \
  fox-den:/srv/sites/live-logger
