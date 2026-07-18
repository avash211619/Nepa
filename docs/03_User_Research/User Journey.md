# User Journey — Core Workflow

Current (typical user flow today):
1. Create or take image on phone or desktop
2. Realize file is too large or wrong format
3. Search Google for "compress image" or "convert heic to webp"
4. Pick an online tool (TinyPNG, iLoveIMG, Squoosh, etc.)
5. Upload a file
6. Apply a single operation (compress/convert/resize)
7. Download result
8. Repeat per image or leave

Problems with current flow:
- Single-purpose steps (convert OR compress), not a guided workflow
- No recommendations (what format/quality to choose)
- Limited batch capabilities or automation
- Often requires multiple tools and more user time

Target (Nepa) — Ideal flow we will design for MVP:
1. Upload (single or batch) — drag & drop or mobile camera
2. Auto-detect file characteristics and use case
3. Recommend best format and size (with rationale)
4. Apply pipeline: Convert → Compress → Resize → Strip metadata
5. Preview and side-by-side quality comparison
6. Generate responsive variants + HTML/snippet
7. Download single file, ZIP, or push to cloud storage / CDN (future)
8. Optionally: save preset or export automation config (future)

Success metrics for journey:
- Time to complete primary task: <30s
- Number of clicks to completion: ≤3 for single image
- Conversion → engagement: % users who generate responsive HTML or use multiple steps

Go / No‑Go for Journey: GO — a single, well‑designed workflow will increase retention and allow upsell to batch/API features.