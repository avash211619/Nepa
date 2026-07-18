# Component Specifications — Nepa (Project Nebula)

This document lists primary system components, responsibilities, and interfaces.

1) Frontend (Next.js)
- Responsibilities: landing pages (SEO), tool UI, upload UI, preview UI, client-side WASM integration.
- Interfaces: /api/jobs (submit), /api/jobs/:id (status), presigned upload endpoints.
- Non-functional: SSR for landing pages, accessibility, mobile-first.

2) API / Route Handlers
- Responsibilities: Validate uploads, create jobs, issue presigned URLs, return job status, auth hooks (future).
- Interfaces: REST JSON endpoints; Webhook endpoints for async notifications (future).
- Non-functional: rate limiting, input validation, request size limits.

3) Job Queue (Redis)
- Responsibilities: Store job queue, retry semantics, visibility timeouts.
- Implementation: Bull, Bee-Queue, or similar.

4) Workers (Docker)
- Responsibilities: Execute image pipelines using sharp; write results to Object Store; emit metrics/logs.
- Non-functional: resource isolation, autoscaling, idempotent operations.

5) Object Store (Cloudflare R2)
- Responsibilities: store originals, previews, optimized artifacts; lifecycle rules for deletion.
- Interfaces: S3-compatible API (presigned URLs for upload & download).

6) CDN (Cloudflare)
- Responsibilities: cache previews and final assets globally; deliver via low latency.

7) Redis Cache & Rate Limiter
- Responsibilities: ephemeral job state, rate-limiting per-IP/seed, short-term caching of previews.

8) Postgres (future)
- Responsibilities: user accounts, billing, job history, presets.

9) Observability
- Responsibilities: error tracking (Sentry), metrics (Prometheus), product analytics (PostHog/GA4).

10) WASM Engine
- Responsibilities: run a subset of the pipeline client-side for privacy; fallback to server for unsupported codecs.

Integration patterns
- All components communicate via defined APIs and storage; workers are stateless and fetch data from Object Store.
- Secure all endpoints and use signed URLs for object access.

Operational notes
- Secrets management via cloud secret storage; single place for keys; rotate regularly.
- Logs aggregated to a central logging system; alerts for queue depth, high error rates.
