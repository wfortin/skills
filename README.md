# skills

Personal agent skills, usable from any repository.

Each skill is a folder under `skills/` with a `SKILL.md` (YAML frontmatter with `name` and `description`, then
instructions), plus any scripts or reference files it needs.

## Install

```bash
./install.sh
```

Symlinks every skill into `~/.claude/skills/` (Claude Code) and `~/.agents/skills/` (Codex and other agents). Edits in
this repo take effect immediately; rerun after adding a new skill.
