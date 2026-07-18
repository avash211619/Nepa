# Risks & Mitigations

1) HEIC/HEIF handling
- Risk: HEIC decoding in-browser is unreliable; server-side dependencies required.
- Mitigation: Server-side HEIC decoding via libheif and document fallback to server-side only for HEIC.

2) AVIF encoding cost
- Risk: AVIF encoding can be CPU intensive and slow.
- Mitigation: Offer AVIF as optional preset; favor WebP defaults and do AVIF in low-concurrency background jobs or lower-resolution variants.

3) Large file uploads
- Risk: Users upload very large images exceeding memory or processing limits.
- Mitigation: Enforce per-file size limits; provide client-side reduction; chunked uploads and background jobs for large-batch processing.

4) Privacy concerns
- Risk: Users distrusting upload flows.
- Mitigation: Client-side mode, transparent retention policy, and easy deletion.

5) SEO / SERP competition
- Risk: Dominant competitors outrank our landing pages.
- Mitigation: Focus on long-tail, workflow pages, programmatic clusters, and high-quality how-to guides with internal linking.
