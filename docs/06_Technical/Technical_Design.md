Technical Design (API, Worker, Pipelines)

API Endpoints (MVP)
- POST /api/jobs
  - Accepts: presigned upload metadata or multipart upload
  - Returns: { jobId }
- GET /api/jobs/:jobId
  - Returns: status, preview URLs, logs
- POST /api/presigned-url
  - Returns: { uploadUrl, objectKey }
- POST /api/analytics/event (telemetry)

Worker Pipeline (stateless)
- Fetch original from object store
- Run transforms per pipeline: convert -> resize -> compress -> strip metadata -> encode
- Upload optimized artifact to object store
- Emit metrics and update job status via API

Presets (example)
- Article: WebP quality 80, max width 1200px
- Social: WebP quality 75, max width 1080px
- Marketplace: JPG baseline, 800x800, quality 85

Error handling
- Workers must be idempotent: use object versioning or atomic writes
- On failure: keep original, mark job failed, surface actionable error

CI/CD
- GitHub Actions pipeline: lint -> unit tests -> build -> deploy frontend to Vercel -> build & push worker Docker image to registry

Security
- Validate all uploads for MIME sniffing and magic bytes
- Rate limit API endpoints by IP
- Signed URLs for object uploads/downloads
