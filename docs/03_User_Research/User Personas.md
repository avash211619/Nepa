# User Personas

This document defines the primary user personas for Nepa (Project Nebula) to guide product decisions, UX, prioritization, and messaging.

Persona 1 — Student
- Problems:
  - Assignment images too large for LMS uploads or email
  - Passport/ID photo dimension and file-size requirements
  - Unsupported formats (HEIC) from phone
- Needs:
  - Free, mobile-friendly, fast
  - No sign-up
  - Simple presets for common tasks
- Acceptance criteria:
  - Complete the job in <30s on mobile

Persona 2 — Blogger / Content Creator
- Problems:
  - Large images slowing page load and hurting SEO
  - Need responsive images for multiple breakpoints
  - No clear guidance on formats (WebP/AVIF)
- Needs:
  - Batch optimization, responsive variants, SEO guidance
  - Generate srcset and HTML snippets

Persona 3 — E-commerce Seller / Agency
- Problems:
  - Thousands of product images; inconsistent sizes and metadata
  - Marketplace upload constraints (dimensions/file size)
- Needs:
  - Bulk processing, automation, consistent presets, CSV import/export
  - Later: API and integrations (Shopify, WooCommerce)

Persona 4 — Developer / DevOps
- Problems:
  - Need predictable image optimization in CI/CD
  - Tooling to integrate into build pipelines and CDNs
- Needs:
  - API, SDKs, CLI, reproducible presets, deterministic outputs

Persona 5 — Graphic Designer
- Problems:
  - Maintain visual quality while reducing file size
  - Deliver multiple formats to clients
- Needs:
  - High-quality presets, batch exports, fine-grained quality controls

---

Go / No‑Go for Personas: GO — these personas represent frequent, measurable needs and map directly to product features and monetization paths.