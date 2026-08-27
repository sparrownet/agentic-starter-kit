---
name: agentic-sdlc
description: >-
  Agentic Software Development Lifecycle (SDLC) engine for Google Antigravity.
  Use when starting new initiatives, managing PRDs, tracking task dashboards,
  orchestrating Git feature branches, running isolated test suites, and opening PRs.
---

# Agentic SDLC Engine

This skill guides the agent through the structured, disciplined Software Development Lifecycle.

---

## 🧭 Workflow Protocol

### 1. Rule Discovery & Session Intake
- Always inspect `.agents/rules/` at the start of any new task.
- Verify that `AGENTS.md` rules are strictly adhered to.

### 2. Initiative Registration & PRD Drafting
- Check `docs/INITIATIVES.md` for the next available Initiative ID (`INITIATIVE-XX-NAME`).
- Register the initiative with `📝 In Definition`.
- Create `docs/INITIATIVE-XX-NAME/PRD.md` using the standard PRD template.

### 3. Git Branch Management
- Create a dedicated Git branch: `git checkout -b feature/initiative-xx-name`.
- Keep the branch active across the entire implementation lifecycle of the initiative.

### 4. Implementation & Atomic Commits
- Make small, focused Conventional Commits (`feat(...)`, `fix(...)`, `test(...)`).
- Co-locate unit tests alongside implementation changes.
- Ensure all tests (`npm test`) and builds (`npm run build`) pass before opening a Pull Request.

### 5. Pull Request & Merge Authorization
- Push branch and create PR via `gh pr create`.
- Present summary and diff to user.
- **NEVER merge into `main` without explicit user confirmation.**
