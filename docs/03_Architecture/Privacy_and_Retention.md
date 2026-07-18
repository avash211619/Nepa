# Privacy & Retention Policy (MVP Draft)

Principles
- Privacy by default: prefer client-side processing for single-image flows.
- Minimal retention: server-side files are stored only when necessary and deleted automatically within 24 hours.
- Transparency: UI shows explicit notice when files are uploaded and retained temporarily.

Implementation
- When user uploads to server: store object with TTL metadata; automated lifecycle job deletes after 24 hours.
- Provide an explicit "Delete now" action to users when a presigned URL or job id is present.
- Strip metadata by default; provide an explicit option to preserve EXIF if user requests.

Legal
- GDPR/CCPA considerations: implement endpoints to export or delete stored user artifacts on request for future account-capable versions.

Go / No-Go
- GO: privacy model feasible for MVP with client-side option and 24h server retention. If enterprise/legal requires different retention, we will add policy layers later.
