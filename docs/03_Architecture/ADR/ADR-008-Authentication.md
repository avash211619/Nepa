# ADR-008 — Authentication: Deferred (MVP) / API Keys for Future

Status: Accepted

Decision
No user accounts for MVP. For future API & premium plans, implement token-based API keys and OAuth for user accounts when needed.

Rationale
- MVP focus on guest workflows; minimizing friction improves conversion.
- Token-based API keys are a simple mechanism for developer authentication later.

Alternatives Considered
- Full OAuth and account management for MVP: increases scope and friction.

Consequences
- Ensure the backend is ready to accept authentication headers later and that user resource ownership is modeled in DB schema when introduced.
