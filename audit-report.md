# Skill Audit Report
Generated: 2026-11-11T21:28:10Z
Scope: * (project, user, and plugin skills; 95 SKILL.md files, copies at different paths counted separately)

## Executive Summary
- Total SKILL.md files inspected: 95
- With real blockers: 0 (1 residual heuristic hit, see below)
- With warnings only: ~66 (58 are the side-effect keyword heuristic, needs manual review)
- Passing: 26 (+ audit-skills after discarding false positives)
- False positives discarded: audit-skills credential/loop hits (the rule text itself)

---

## Blockers

| Skill | Rule | Details |
| :--- | :--- | :--- |
| plugin-dev/command-development | Unsanitized Dynamic Execution (residual) | Residual: doc example at L492 now quotes the argument (`npm test -- "$1"`) but still interpolates `$1`; the pattern check still matches. Acceptable for a documentation example. |

## Warnings (excluding side-effect heuristic)

| Skill | Details |
| :--- | :--- |
| cache/rodrigobv-agent-skills-fork/agent-skills/0.6.15/skills/interview-me | Open-ended loop L122 |
| discord/skills/access | Non-spec keys: user-invocable |
| discord/skills/configure | Non-spec keys: user-invocable |
| imessage/skills/access | Non-spec keys: user-invocable |
| imessage/skills/configure | Non-spec keys: user-invocable |
| telegram/skills/access | Non-spec keys: user-invocable |
| telegram/skills/configure | Non-spec keys: user-invocable |
| champion-kit/skills/climb | Non-spec keys: argument-hint |
| champion-kit/skills/faq | Non-spec keys: argument-hint |
| champion-kit/skills/hackathon | Non-spec keys: argument-hint |
| champion-kit/skills/maturity | Non-spec keys: argument-hint |
| champion-kit/skills/office-hours | Non-spec keys: argument-hint |
| champion-kit/skills/patterns | Non-spec keys: argument-hint |
| champion-kit/skills/routines | Non-spec keys: argument-hint |
| claude-code-setup/skills/claude-automation-recommender | Unknown key tools |
| claude-md-management/skills/claude-md-improver | Unknown key tools |
| example-plugin/skills/example-command | Non-spec keys: argument-hint |
| example-plugin/skills/example-skill | Non-spec keys: version |
| hookify/skills/writing-rules | Non-spec keys: version |
| math-olympiad/skills/math-olympiad | Non-spec keys: version |
| math-proof/skills/siege | Unknown key disallowed-tools; Non-spec keys: argument-hint,disable-model-invocation; 733 lines (>500) |
| math-proof/skills/solo | Unknown key disallowed-tools; Non-spec keys: argument-hint,disable-model-invocation |
| mcp-server-dev/skills/build-mcp-app | Non-spec keys: version |
| mcp-server-dev/skills/build-mcp-server | Non-spec keys: version |
| mcp-server-dev/skills/build-mcpb | Non-spec keys: version |
| plugin-dev/skills/agent-development | Non-spec keys: version |
| plugin-dev/skills/command-development | Non-spec keys: version; 885 lines (>500) |
| plugin-dev/skills/hook-development | Non-spec keys: version; 713 lines (>500) |
| plugin-dev/skills/mcp-integration | Non-spec keys: version; 555 lines (>500) |
| plugin-dev/skills/plugin-settings | Non-spec keys: version; 545 lines (>500) |
| plugin-dev/skills/plugin-structure | Non-spec keys: version |
| plugin-dev/skills/skill-development | Non-spec keys: version; 638 lines (>500) |
| project-artifact/skills/project-artifact | Non-spec keys: user-invocable |
| skill-creator/skills/skill-creator | Open-ended loop L19 |
| marketplaces/rodrigobv-agent-skills-fork/skills/interview-me | Open-ended loop L122 |

Non-spec but valid Claude Code keys (`version` x13, `argument-hint` x10, `user-invocable` x7, `disable-model-invocation` x2) are flagged as spec deviations across many plugin skills.

## Passing
- audit-skills (.claude/skills): PASS after discarding false positives
