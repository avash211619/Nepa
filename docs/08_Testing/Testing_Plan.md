Testing Plan

Test types
- Unit tests: for small pure functions and presets
- Integration tests: API endpoints and worker integration using local object store (minio) and Redis
- E2E tests: Playwright or Cypress test for upload -> optimize -> preview -> download
- Performance tests: run benchmark scripts with various image sizes to assert processing time
- Accessibility tests: axe-core checks on primary pages

Acceptance Test Matrix
- Map each SRS acceptance criterion to at least one automated test
- Manual exploratory tests for privacy mode and error handling
