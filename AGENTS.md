This repository holds personal agent skills that are installed user-wide, so they load in every repository.

- One skill per folder: `skills/<kebab-case-name>/SKILL.md`. The folder name must match the frontmatter `name`.
- Frontmatter `description` says what the skill does and when to use it, with the trigger phrases a user would type.
- Keep skills repo-agnostic. Anything specific to one codebase belongs in that repository's own skills.
- After adding a skill, run `./install.sh` to symlink it into `~/.claude/skills/` and `~/.agents/skills/`.
