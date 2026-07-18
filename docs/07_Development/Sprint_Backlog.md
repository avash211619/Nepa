Sprint Backlog (Sprint 0 and Sprint 1)

Sprint 0 — Project setup (1 week)
- Initialize monorepo (pnpm/workspaces) — 3
- Create Next.js app scaffold + Tailwind — 2
- Setup GitHub Actions skeleton — 2
- Create Dockerfile for worker & build pipeline — 2
- Setup Redis & R2 (or local mocks) — 3
- POC: run benchmark scripts and commit results — 5

Sprint 1 — Core MVP (2 weeks)
- Implement upload UI & dropzone (UploadDropzone) — 5
- Implement presigned upload endpoint & job create API — 5
- Worker: basic pipeline (download -> sharp transforms -> upload) — 8
- Preview page + comparison slider — 5
- Download & signed-URL handling — 3
- Telemetry events for primary workflow — 3
- Basic E2E test for single-image flow (Playwright) — 5

Estimates shown as story points (T-shirt/Fibonacci style). Prioritize the smallest vertical delivering the full end-to-end flow first.
