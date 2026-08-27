# Rule: Database Environment & Schema Isolation

## 1. Environment Topology & Connection Hierarchy
The system enforces strict 3-tier isolation:
- **Production (`DATABASE_URL`):** Live database.
- **Development (`DATABASE_URL_DEV`):** Local development sandbox.
- **Test (`DATABASE_URL_TEST`):** Automated test runs & Vitest fixtures.

---

## 2. Test Execution Isolation Guardrail
- Automated tests (`npm test` / Vitest / Jest / Pytest) MUST connect ONLY to `DATABASE_URL_TEST`.
- Tests must NEVER read from or write to `DATABASE_URL_DEV` or `DATABASE_URL`.
- Test suites must seed and tear down their own mock records or test fixtures cleanly.

---

## 3. Production Migration Protocol
- Production database schemas must NEVER be migrated autonomously.
- Any schema alterations targeting production require **explicit user authorization**.
