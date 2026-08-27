# 🤖 Agentic SDLC Starter Kit

The complete operating system, guardrails, rules, and initiative tracking environment for pair-programming with Google Antigravity.

---

## 📦 What's Included

```
.
├── AGENTS.md                          # Global operating rules & transparency directives
├── .agents/
│   └── rules/
│       ├── git_branch_pr_workflow.md  # Mandatory Git branching & PR protocol
│       ├── initiative_tracking.md     # Single Source of Truth dashboard sync
│       ├── subagent_delegation.md     # Specialist subagent orchestration
│       └── db_environment_isolation.md# 3-tier database isolation (Prod/Dev/Test)
├── docs/
│   ├── INITIATIVES.md                 # Live initiatives registry dashboard
│   └── templates/
│       └── PRD_TEMPLATE.md            # Standardized PRD blueprint
└── scripts/
    └── init-project.sh                # 1-command installer for new repos
```

---

## 🚀 How to Use

Navigate to your project directory and run:
```bash
/path/to/agentic-starter-kit/scripts/init-project.sh .
```

---

## 🛡️ Core Rules Enforced
1. **Always Explain Intent First:** The agent must explain actions and affected files before modifying code or running commands.
2. **No Autonomous External Installs:** Never runs `npm install` / `pip install` without explicit user permission.
3. **Dedicated Initiative Branches:** Feature development happens on isolated initiative branches with co-located unit tests.
4. **Database Safety:** Automated test suites run strictly against isolated test schemas; production migrations require explicit approval.
