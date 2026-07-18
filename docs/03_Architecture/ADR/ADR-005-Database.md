# ADR-005 — Database: PostgreSQL (deferred until needed)

Status: Accepted (deferred)

Decision
PostgreSQL will be the primary relational database when persistence is required. For MVP, persistence is minimal; use ephemeral job records and logs.

Rationale
- Strong transactional guarantees, mature ecosystem, good analytics support.
- Familiar to many engineers and fits future needs (accounts, billing, job history).

Alternatives Considered
- NoSQL (MongoDB): flexible schema but less suited for relational queries and ACID requirements.
- Lightweight embedded DB: useful for local dev but not for production scaling.

Consequences
- MVP avoids running a production DB unless necessary; initial telemetry can be routed to hosted analytics (PostHog, GA) and short-term job state stored in Redis.
- Document migration and schema for later adoption.
