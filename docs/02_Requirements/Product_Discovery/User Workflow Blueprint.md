User Workflow Blueprint — Nepa (Project Nebula)

Objective
Document the user journey, UI states, edge cases, and conversion points for the core workflow to inform UX and architecture.

Primary user flow (detailed)
1. Landing Page / Landing Tool (search intent satisfied)
   - CTA: "Upload Image" or "Start Optimizing"
   - Minimal copy + examples + privacy snippet
2. Upload / Input
   - Methods: drag & drop, browse, paste, mobile camera
   - Immediate client-side validation (file type, size)
   - Show detected attributes (format, size, dimensions)
3. Auto Analysis
   - Determine: hasTransparency, isPhotograph, fileSize, dimensions, colorProfile, exifPresent
   - Compute suggested goal (web article, social, marketplace) with confidence score
4. Recommendation UI
   - Default suggested preset (e.g., Article — WebP @ 80 quality, resize to 1200px) with explanation
   - Option to change goal (social/store/custom)
5. Processing Pipeline (one click)
   - Convert (format)
   - Compress (quality/preset)
   - Resize (if selected)
   - Strip metadata (default)
   - Generate preview versions (one optimized, one original)
   - If client-side mode chosen: run WASM pipeline locally and skip upload
6. Preview & Compare
   - Side-by-side / slider view
   - Show metrics: original size, optimized size, % savings, dimensions, format
   - Offer HTML snippet for responsive images (if enabled)
7. Download / Delivery
   - Single download (optimized file)
   - Option: Download as ZIP (for multiple images in future)
   - Offer copy-to-clipboard for HTML snippet
8. Engagement & Next Steps
   - Show related tools (remove EXIF, generate responsive, batch optimizer)
   - Soft prompt for return (newsletter, optional sign-up for history in future)

Edge Cases & Error Handling
- Unsupported format: show clear error with suggestions (convert to JPG first)
- Very large files (> configured limit): offer client-side reduction where possible, otherwise inform of server-side queue and time estimate
- Processing failure: preserve original file; show error code and retry option

Telemetry & Metrics to capture
- Time to complete workflow
- Clicks per session (engagement funnel)
- % users choosing client-side vs server-side
- Preset usage distribution (which presets are most used)

Conversion points
- Onboarding (first successful optimization) — primary activation metric
- Use of related tools or generating HTML snippet — secondary engagement metric
- Sign-up prompt (future) after N successful optimizations

Go / No‑Go
GO — the blueprint provides clear UX flows and measurable conversion points to drive design and implementation. It also uncovers key telemetry to capture during MVP to validate assumptions.
