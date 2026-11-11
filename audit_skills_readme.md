# Claude Code Skill: Audit Skills

A powerful compliance, security, and optimization auditor for your Claude Code skills. This tool evaluates your `.claude/skills` directory against the official Agent Skills specification, enforces strict security boundaries, detects PII leaks, and provides interactive, step-by-step refactoring for any flagged issues.

## Features

- **Spec Compliance**: Ensures your skills adhere to the Agent Skills format (correct frontmatter, description length, allowed keys).
- **Security & Sandboxing**: Detects overprivileged tools (e.g., bare `Bash`), raw network egress (`curl`/`wget`), and unguarded side effects requiring `disable-model-invocation: true`.
- **PII & Secrets Engine**: Flags hardcoded absolute paths, exposed cloud credentials, and non-synthetic data in examples.
- **Cost & Context Optimization**: Warns against unbounded dynamic loops and excessively large `SKILL.md` files.
- **Interactive Refactoring**: Generates a detailed `audit-report.md` and walks you through fixing each flagged skill interactively via unified diffs.

## Installation

You can install this skill locally to your current project using the provided installation script.

1. Make the installer script executable:
   ```bash
   chmod +x install.sh
   ```
2. Run the installer:
   ```bash
   ./install.sh
   ```

## Usage

Start Claude Code in your terminal:
```bash
claude
```

Run the audit across all skills in your repository:
```text
/audit-skills *
```

Or target a specific skill by name:
```text
/audit-skills deploy-staging
```

The auditor will analyze the target(s), write a detailed summary to `audit-report.md`, and prompt you to accept or skip any necessary security and compliance fixes interactively.