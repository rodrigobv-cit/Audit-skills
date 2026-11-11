# Claude Code Skill Auditor

A specialized tool for Claude Code that automatically audits local `.claude/skills/` directories. It enforces the Agent Skills specification and scans for security vulnerabilities, PII leaks, and context-bloat issues.

## Installation

Run the provided installation script to add the skill to your project:

```bash
chmod +x install.sh
./install.sh
```

## Usage

Start Claude Code in your project repository:

```bash
claude
```

To audit all skills in the project:
```
/audit-skills *
```

To audit a specific skill:
```
/audit-skills <skill-name>
```

## Features
- Validates frontmatter and Agent Skills spec compliance.
- Detects unguarded side effects missing `disable-model-invocation: true`.
- Flags absolute personal paths and unredacted secrets.
- Prevents overprivileged tool requests (like bare `Bash`).
- Interactively walks you through proposed fixes using standard Git diffs.
- Outputs a complete summary report to `audit-report.md`.
