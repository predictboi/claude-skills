#!/bin/sh
# Install every skill in this repository into ~/.claude/skills (personal skills, all projects).
set -e
src="$(cd "$(dirname "$0")" && pwd)/skills"
dest="${HOME}/.claude/skills"
mkdir -p "$dest"
for d in "$src"/*/; do
  name="$(basename "$d")"
  rm -rf "$dest/$name"
  cp -R "$d" "$dest/$name"
done
cp "$src/LICENSE-open-design" "$dest/" 2>/dev/null || true
echo "Installed $(ls -d "$src"/*/ | wc -l | tr -d ' ') skills into $dest"
