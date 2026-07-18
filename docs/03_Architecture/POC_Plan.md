# POC Plan — Image Engine & WASM Feasibility

Objectives
1. Benchmark server-side image engine (sharp/libvips) across representative images and transforms.
2. Validate quality vs size trade-offs (PSNR/SSIM) to pick default presets.
3. Assess which codecs and transforms can run in-browser via WASM and identify fallbacks.

Artifacts
- scripts/benchmark/run_benchmarks.js (provided as guidance)
- sample-images/ (photographs, UI screenshots, icons)
- results CSV (psnr, ssim, size) per preset

Steps
1. Collect 30 representative images (icons, photos, screenshots).
2. Run server-side transforms using sharp with presets (webp 80, webp 60, avif 50, mozjpeg 75, lossless png) and record sizes and SSIM/PSNR.
3. Run client-side WASM demos (libvips-wasm or subset) to check support and performance.
4. Produce a recommendation table of presets for MVP.

Deliverable
- docs/03_Architecture/POC_results.md with raw CSVs and recommended default presets for the MVP.
