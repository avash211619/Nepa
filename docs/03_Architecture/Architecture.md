# Architecture Overview — Nepa (Project Nebula)

This document summarizes the high-level system architecture and maps SRS requirements to components.

Goals
- Meet SRS functional requirements (upload, analyze, convert, compress, resize, crop, strip metadata, preview, download).
- Satisfy NFRs: performance (≤2s page load), processing latency targets, privacy-first behavior, accessibility, and SEO.

High-Level Components
- Browser (Client)
  - Tool UI (React components)
  - Client-side engine (WASM) for privacy-first single-image processing where possible
- Frontend (Next.js)
  - Server-rendered landing pages (SEO)
  - Client app (tools) — handles upload UI, preview, and triggers processing
- API / Route Handlers
  - Orchestration endpoints (submit job, check status, get preview URLs)
- Job Queue & Workers
  - Redis-backed queue (bull or similar)
  - Worker containers running sharp pipelines to perform transformations
- Storage
  - Temporary object store (Cloudflare R2) for uploads, previews, and results
  - Signed URLs for secure download
- Database & Cache
  - Redis for ephemeral state, job queues, rate limiting
  - PostgreSQL deferred for persistent features
- CDN
  - Cloudflare for global cache of previews and download assets
- Observability
  - Sentry (errors), Prometheus/Grafana (metrics), centralized logs

Request Lifecycle (Server-side flow)
1. User uploads image via Next.js frontend (multipart or presigned upload to R2).
2. API submits a job to Redis queue; returns job id.
3. Worker picks job, downloads object, runs pipeline (convert/compress/resize/crop/strip metadata) via sharp.
4. Worker writes optimized object back to R2 and emits completion event.
5. API updates job state and generates signed preview/download URL.
6. Frontend polls job status and displays preview; user downloads result.

Client-side (privacy mode) flow
1. User selects client-side processing option.
2. Browser executes WASM pipeline for supported formats and displays preview.
3. No file leaves the client unless user opts to upload result.

Folder & Repo Layout (monorepo)
- apps/web/ (Next.js app)
- packages/image-engine/ (shared pipeline logic + worker entrypoints)
- packages/wasm-engine/ (WASM builds and bindings)
- packages/shared/ (types, utils, presets)

Security & Privacy
- Default: strip metadata unless user opts-in to preserve.
- Temporary server-side storage with lifecycle policy (24 hours auto-delete).
- All traffic via HTTPS; signed URLs for downloads with short TTL.

Scalability Model
- Horizontal worker autoscaling based on queue depth and CPU utilization.
- Frontend scaled by Vercel; caching via CDN reduces origin load.

Next steps
- Component specs and sequence diagrams (committed separately).
- POC benchmark scripts for image engine and WASM feasibility.
