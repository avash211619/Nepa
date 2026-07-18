# Jobs To Be Done (JTBD)

Framing core customer needs as JTBD clarifies feature design and prioritization. Each job includes context and acceptance criteria.

JTBD 1 — "When I need to submit an image to a form, I want to produce a correctly sized file so that it meets upload limits and is accepted immediately."
- Acceptance: Result < required size and correct dimensions; job done in < 30s.

JTBD 2 — "When publishing an article, I want smaller images so my pages load faster and get better SEO."
- Acceptance: Quality visually acceptable, file size reduced by target %, and HTML snippet produced.

JTBD 3 — "When preparing product photos, I want consistent, optimized images so listings look good and upload reliably."
- Acceptance: Bulk process with consistent presets; CSV manifest processing; output verified dimensions.

JTBD 4 — "When running a CI pipeline, I want deterministic image optimizations so builds are reproducible."
- Acceptance: CLI/SDK with reproducible presets and identical outputs across runs.

JTBD 5 — "When I need to share photos privately, I want to process them locally so no image leaves my device."
- Acceptance: Client-side processing option; no upload for private mode; same UX as online flow.

Go / No‑Go for JTBD: GO — these jobs map clearly to both free and paid features and indicate direct monetization paths (batch/API/enterprise).