# MVP Feature List

This list prioritizes features into Must-Have, Should-Have, Could-Have, and Won't-Have for the initial MVP release. Each feature includes a short acceptance criterion.

Must-Have (MVP)
- Upload (single + basic drag & drop)
  - Acceptance: Upload < 30s for 1MB image on common networks
- Convert (JPEG, PNG, HEIC → WebP/AVIF/JPEG/PNG)
  - Acceptance: Correct format conversion preserving transparency when appropriate
- Compress (lossy presets + quality slider)
  - Acceptance: Quality slider updates preview and file size estimate
- Resize (dimensions + aspect presets)
  - Acceptance: User can set px or % and lock aspect
- Crop (basic aspect selection)
- Download (single file or ZIP for batch)
- Mobile-first UI & responsive design
- Client-side processing option for single images (privacy mode)

Should-Have
- Batch processing (queue + progress)
- Side-by-side preview / quality comparison
- Metadata removal default with option to keep
- Target-by-size presets (e.g., "under 100KB")
- Responsive variants generator (srcset + HTML)

Could-Have
- AI recommendations for format/quality (heuristic rules at launch)
- EXIF viewer and selective retention
- Color palette extraction and image insights

Won't Have (Initial Release)
- User accounts (deferred)
- Public API (deferred to post-MVP)
- Enterprise dashboard / billing

Go / No‑Go for MVP Features: GO — This scope is intentionally focused: core workflow + batch to address the highest-value JTBD while deferring accounts/API until we validate demand and traffic.