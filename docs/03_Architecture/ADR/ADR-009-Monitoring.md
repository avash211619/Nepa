# ADR-009 — Monitoring & Observability

Status: Accepted

Decision
Adopt an observability stack including Sentry for error tracking, Prometheus/Grafana (or hosted alternative) for metrics, and centralized structured logging. Use GA4 and Search Console for SEO analytics; consider PostHog for product analytics.

Rationale
- Observability is essential from day one to identify performance regressions and user friction.
- Sentry provides error visibility; Prometheus/Grafana enable SLO monitoring.

Consequences
- Instrument backend and workers with tracing metrics (request latency, queue depth, CPU time per job).
- Export key metrics to dashboards and alerting (SLO breach, high error rate, worker failures).
