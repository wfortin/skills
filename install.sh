#!/usr/bin/env bash
# Symlinks every skill in ./skills into the user-level skill directories so
# Claude Code, Codex, and other agents pick them up in every repository.
set -euo pipefail

repo_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
targets=("$HOME/.claude/skills" "$HOME/.agents/skills")

for target in "${targets[@]}"; do
  mkdir -p "$target"
  for skill in "$repo_dir"/skills/*/; do
    [ -f "$skill/SKILL.md" ] || continue
    name="$(basename "$skill")"
    link="$target/$name"
    if [ -L "$link" ]; then
      ln -sfn "${skill%/}" "$link"
    elif [ -e "$link" ]; then
      echo "error: $link exists and is not a symlink; move it into $repo_dir/skills/ first" >&2
      exit 1
    else
      ln -s "${skill%/}" "$link"
    fi
    echo "linked $link"
  done
done
