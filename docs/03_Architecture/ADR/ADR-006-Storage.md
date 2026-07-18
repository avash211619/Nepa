# ADR-006 — Storage: Browser + Cloudflare R2 (future S3-compatible)

Status: Accepted

Decision
Use in-browser memory and temporary blobs for single-image client-side workflows; for server-side processing and storage, adopt Cloudflare R2 (S3-compatible) as the primary object store.

Rationale
- R2 avoids egress fees to Cloudflare CDN and is cost-effective compared to S3 for high throughput.
- S3-compatible APIs make future portability easy.
- Temporary storage lifecycle policies will ensure files are removed automatically.

Alternatives Considered
- AWS S3: industry standard, global, but potentially higher cost for egress when paired with CDN.
- Other S3-compatible providers (Backblaze, Wasabi): viable alternatives.

Consequences
- Implement signed, time-limited URLs for downloads and preview objects.
- Enforce lifecycle policy (delete objects after 24 hours or on explicit request) to meet privacy guarantees.
