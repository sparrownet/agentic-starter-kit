# Mandatory Git Initiative Branching & Commit Protocol

## Core Directives

1. **Branch per Initiative Scope:**
   A dedicated Git branch is created **per INITIATIVE** (e.g., `feature/initiative-01-initial-architecture` or `feature/initiative-02-user-auth`). 
   - The branch remains **OPEN and active** across all backend implementation, frontend UI building, and testing phases for that entire initiative.
   - Do NOT create micro-branches or merge prematurely to `main`.

2. **Small Atomic Commits to the Initiative Branch:**
   - Make small, focused, incremental commits to the active initiative branch following Conventional Commits (e.g., `feat(auth): add JWT verification middleware`, `feat(ui): build login dashboard`).
   - Avoid massive monolithic dump commits.

3. **Co-Located Automated Tests in Commits:**
   - Every feature commit or bugfix MUST include its corresponding automated tests in the exact same commit wherever applicable.
   - Run test suite before committing to verify 100% clean test execution.

4. **Pull Request (PR) Protocol:**
   - Only when the entire initiative is 100% completed, tested, and verified do we push the branch and issue a Pull Request targeting `main`.
   - Send the PR review link to the user.
   - **ONLY merge to `main` when the user explicitly authorizes the merge.**
