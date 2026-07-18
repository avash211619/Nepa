# ADR-004 — Image Processing Engine: Sharp (libvips)

Status: Accepted

Decision
Use sharp (libvips) as the primary image processing library for server-side image transformations.

Rationale
- libvips is fast, memory-efficient, and designed for high-throughput image processing.
- sharp provides a well-maintained Node.js binding with production usage.
- Good support for WebP/AVIF and common transforms (resize, crop, metadata removal, quality control).

Alternatives Considered
- ImageMagick: mature but slower and heavier memory usage.
- Custom C/C++ encoders: higher performance potential but much greater implementation complexity.

Consequences
- Implement worker containers that run sharp-powered pipelines.
- Benchmark presets (quality vs size) during POC to choose defaults for MVP (scripts included in POC_Plan).

Known Limitations
- HEIC decoding may require additional libs (libheif) and licensing considerations; server-side needed for reliable HEIC handling in MVP.
