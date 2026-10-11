#!/usr/bin/env bash
# Assemble the deployable hunts site from the sources in this folder.
# Keeps the repo free of duplicated audio: site/ is generated, never committed.
#
#   ./build-site.sh            -> site/
#   ./build-site.sh --zip      -> site/ and gronsund-hunts-netlify.zip (Netlify Drop)
set -euo pipefail
cd "$(dirname "$0")"

rm -rf site
mkdir -p site/gronsund

cp hunts-index.html          site/index.html          # the hunts landing page
cp netlify-headers.toml      site/netlify.toml        # publish + cache rules
cp index.html                site/gronsund/index.html # the game
cp gronsund-casket-standalone.html site/gronsund/standalone.html
mkdir -p site/gronsund/audio
cp audio/*.mp3 audio/cues.json site/gronsund/audio/   # narration, no dev README

if [ "${1:-}" = "--zip" ]; then
  rm -f gronsund-hunts-netlify.zip
  ( cd site && zip -qr ../gronsund-hunts-netlify.zip . )
  echo "gronsund-hunts-netlify.zip  $(du -h gronsund-hunts-netlify.zip | cut -f1)"
fi
echo "site/  $(find site -type f | wc -l) files, $(du -sh site | cut -f1)"
