# POC Recommended Presets (Reference) — Nepa (Project Nebula)

This file records evidence-based recommended quality presets for MVP default outputs. These are based on public benchmarks (Cloudinary, Squoosh, Netflix, libvips/sharp community) and practical trade-offs between quality, encoding time, and file size. Use these as starting defaults; run the repo POC scripts to produce measured CSVs and refine presets for your image set.

Summary — Recommended Defaults

Photos (photographic content)
- WebP: quality = 80
  - Rationale: balances visual quality and compression; fast to encode in sharp/libvips. Good perceptual quality for general photos.
- AVIF: quality = 35 (libavif/libaom, speed preset tuned)
  - Rationale: AVIF at q≈30–40 typically matches or beats WebP at quality 80 while producing smaller files; encoding is slower and CPU-heavy.
- JPEG: quality = 78 (mozjpeg tuned)
  - Rationale: legacy fallback; at Q≈75–80 you get acceptable quality with reasonable filesize.

Screenshots / Graphics (sharp lines, text)
- WebP: quality = 90 (use near-lossless when available)
  - Rationale: preserve sharp edges and text; WebP can use near-lossless options.
- AVIF: quality = 45–50
  - Rationale: higher numeric q to preserve textual sharpness and color ramps.
- PNG / Lossless: use for icons or where transparency and pixel-perfect fidelity are required.

Quick Preset Table
- Article (primary landing images): WebP q=80, max-width=1200px
- Social (share images): WebP q=75, max-width=1080px
- Marketplace (product photos): JPG q=78, resize to preset marketplace dimensions (800×800)
- Screenshot / UI asset: WebP q=90 or PNG lossless
- High-compression low-bandwidth: WebP q=65 (fallback)
- AVIF optional: photo q=35, screenshot q=45 (server-side or background job)

Encoding Speed & Operational Notes
- WebP (via libvips/sharp): fast; suitable for real-time server processing and client-side WASM usage for small images.
- AVIF (libavif/libaom/rav1e/svt-av1): noticeably slower, with encoding speed/quality tradeoffs across encoders. Use AVIF selectively (background jobs, optional preset, or queued processing) unless you invest in high CPU capacity.
- JPEG (mozjpeg): fastest encode and broadly supported; keep as fallback for legacy clients.

HEIC Handling
- HEIC/HEIF (libheif) decoding is best handled server-side for MVP. Browser support for HEIC is inconsistent. Use libheif on servers to decode HEIC to an intermediate format (RGB) before encoding to WebP/AVIF/JPEG.
- License/patent considerations: HEIC/HEVC can have licensing implications; document any commercial use and consult legal counsel before enterprise rollout.

Client-side WASM Feasibility
- WebP and JPEG: feasible and fast enough for client-side compression for single-image privacy flows using WASM builds (libvips-wasm or Squoosh-like approach).
- AVIF: possible via WASM (libavif/rav1e in WASM), but encoding times are significantly longer; acceptable for offline/background tasks but poor for instant UX.
- HEIC: WASM HEIC decoding is uncommon and not recommended for MVP. Prefer server-side decoding of HEIC inputs.

Next steps
1. Run the POC benchmark scripts (docs/04_Implementation/POC) against your representative image set to produce measured PSNR/SSIM and encode times.  
2. Use measured results to fine-tune these presets for your audience (photos vs screenshots) and finalize defaults in packages/shared/presets.  
3. If AVIF encoding times are prohibitive, consider deferring AVIF to a background/async job path.

Notes & Sources
- Public benchmarking references: Cloudinary guides, Netflix AVIF studies, Squoosh codec implementations, and community tests for libvips/sharp.
- These presets are conservative starting points intended to be validated by the POC scripts in the repo.
