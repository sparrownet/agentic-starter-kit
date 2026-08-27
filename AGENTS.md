# Global Agent Instructions & SDLC Guardrails

## 1. Mandatory Communication & Transparency Rule
1. **Always Explain Intent First:** Before calling any tool that modifies files, runs terminal commands, or triggers permission prompts, ALWAYS explain in clear natural language what you intend to do, why you are doing it, and what files will be modified.

---

## 2. Mandatory Dependency & Library Rules
1. **Do NOT Install External Libraries Autonomously:** Never run `npm install`, `pip install`, `yarn add`, `cargo add`, or system package manager installation commands for new packages without asking the user for explicit permission first.
2. **Permission Request Format:** If a library is needed, present a clear description explaining:
   - Why the library is required.
   - What alternatives exist.
   - What the trade-offs are.
3. **Native First Policy:** Always prefer creating custom native zero-dependency solutions in-house whenever technically feasible and the trade-off is reasonable.

---

## 3. Mandatory Session Initialization & Initiative Workflow Rule
1. **Rule Discovery First:** At the beginning of EVERY new session or user task, ALWAYS inspect `.agents/rules/` first (`git_branch_pr_workflow.md`, `initiative_tracking.md`, `subagent_delegation.md`, `db_environment_isolation.md`).
2. **Initiative & Branching Protocol Enforcement:** Before implementing any feature or task:
   - Create/register the initiative in `docs/INITIATIVES.md`.
   - Create BOTH `docs/INITIATIVE-XX-NAME/PRD.md` (Product Requirements & Architecture) AND `docs/INITIATIVE-XX-NAME/EXECUTION_PLAN.md` (Step-by-step Technical Plan & Real-time Task Checklist) directly in the initiative folder before writing code.
   - Any implementation plan generated during planning phases MUST be saved directly to `docs/INITIATIVE-XX-NAME/EXECUTION_PLAN.md`.
   - Create and switch to a dedicated Git branch (e.g., `feature/initiative-xx-name`).
   - Use specialized subagents where applicable.
   - Make small atomic conventional commits with co-located unit tests.
   - Run tests and static builds before opening PRs.
   - Request user approval before merging into `main`.

---

## 4. Mandatory Database Environment & Schema Isolation Rule
1. **Tests Isolation:** Automated tests (`npm test` / Vitest / Jest / Pytest) MUST run against TEST database tables (`DATABASE_URL_TEST`) or mock schemas. NEVER touch production or dev database tables during tests.
2. **Dev Schema Isolation:** When developing database schema changes, changes must be applied ONLY to TEST / DEV tables.
3. **Production Migration Approval:** Production database tables (`DATABASE_URL`) must NEVER be migrated automatically. Schema migrations to production require EXPLICIT USER APPROVAL.
