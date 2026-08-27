# Rule: Subagent Delegation & Orchestration

## Policy Directive
For all new initiatives, feature additions, or major implementation phases, work should be delegated to specialized subagents using your runtime's native subagent tool (e.g. `invoke_subagent` in Antigravity, subagent tasks in Claude Code):

1. **Backend & Core Logic Tasks:** Delegate to specialized backend/core logic subagents.
2. **Frontend & UI Tasks:** Delegate to specialized frontend/UI subagents.
3. **Architectural Review:** Delegate to architect reviewer subagents.
4. **QA Verification:** Delegate to test/QA subagents.

## Rationale
- Enables parallel development of backend API contracts and frontend components.
- Preserves token efficiency and keeps main conversation context clean.
- Enforces domain-specific system prompt standards across packages.
