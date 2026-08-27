# Mandatory Initiative Tracking & Real-Time Sync Rules

## 1. Single Source of Truth Alignment

1. **Dashboard Consistency:** Whenever an initiative changes state (`In Definition`, `Ready for R&D`, `In Progress`, `On Hold`, `Done`), you MUST update `docs/INITIATIVES.md`.

2. **Execution Plan Checklist Sync:** Individual task progress in an initiative's `PRD.md` or `EXECUTION_PLAN.md` must be checked off (`[x]`) in real-time as subagents or primary agents complete work.

3. **Zero Discrepancy Policy:** Never declare an initiative task complete without updating its corresponding Markdown tracking file and running git commits.
