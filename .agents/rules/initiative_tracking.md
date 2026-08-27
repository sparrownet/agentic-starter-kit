# Mandatory Initiative Tracking & Real-Time Sync Rules

## 1. Single Source of Truth Alignment

1. **Dashboard Consistency:** Whenever an initiative changes state (`In Definition`, `Ready for R&D`, `In Progress`, `In Review`, `Done`, `On Hold`), you MUST update `docs/INITIATIVES.md`.

2. **Mandatory Documentation Pair:** Every initiative MUST have both `docs/INITIATIVE-XX-NAME/PRD.md` and `docs/INITIATIVE-XX-NAME/EXECUTION_PLAN.md` created in the workspace repository prior to implementation. Any plan created during planning mode must be mirrored directly into `EXECUTION_PLAN.md`.

3. **Execution Plan Checklist Sync:** Individual task progress in an initiative's `EXECUTION_PLAN.md` and `PRD.md` must be checked off (`[x]`) in real-time as subagents or primary agents complete work.

4. **Zero Discrepancy Policy:** Never declare an initiative task complete without updating its corresponding Markdown tracking file and running git commits.
