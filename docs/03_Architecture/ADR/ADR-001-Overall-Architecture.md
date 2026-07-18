# ADR-001 — Overall Architecture (Modular Monolith)

Status: Accepted

Decision
Use a modular monolith architecture for the MVP implementation. Organize the codebase by domain modules, not technical layers, enabling easy extraction of services later.

Context
- Early-stage product; expected traffic does not justify microservices complexity.
- Need for fast iteration, simple CI/CD, and easy local development.

Consequences
- Easier development and testing, single deployable unit for MVP.
- Modules (image-engine, seo, analytics, web) can be extracted to microservices when scale or organizational needs demand.
- Operational simplicity: fewer infra components initially, lower cost.

Alternatives Considered
- Microservices: too heavyweight for MVP; high operational cost.
- Serverless-only: vendor lock-in and cold-start concerns for CPU-bound image workloads.

Migration Path
- Define clear module boundaries and publish module contracts (interfaces). When needed, extract modules as services behind APIs with backward-compatible contracts.

Related ADRs
- ADR-002 Frontend
- ADR-004 Image Processing Engine
- ADR-006 Storage
