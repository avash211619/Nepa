# ADR-003 — Backend Architecture: Next.js Route Handlers (Modular Monolith)

Status: Accepted

Decision
Use Next.js Route Handlers / API Routes for backend endpoints for MVP, keeping the server logic in the same repository as the frontend.

Rationale
- Simplifies development and deployment.
- Enables server-side rendering and API endpoints co-located with pages.
- Faster developer feedback loop and easier local testing.

Alternatives Considered
- Separate Node/Express service: more isolation, but higher initial operational cost.
- Serverless functions: appropriate for lightweight endpoints, but processing-heavy tasks will run in dedicated worker containers.

Consequences
- Use route handlers for orchestration and admin endpoints; delegate CPU-heavy image processing to worker processes (separate Node worker containers) to avoid blocking request handlers.
