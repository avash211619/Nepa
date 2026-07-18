Information Architecture (IA) — Nepa (Project Nebula)

Goal
Design a content and page structure that supports both SEO topical authority and a clear product UX for the workflow platform.

Top-level site structure (example)
/
- /image-tools/  (main hub)
  - /image-tools/convert/
    - /image-tools/convert/png-to-webp
    - /image-tools/convert/heic-to-webp
    - /image-tools/convert/jpg-to-webp
  - /image-tools/compress/
    - /image-tools/compress/png
    - /image-tools/compress/jpeg
  - /image-tools/resize/
    - /image-tools/resize/resize-image
  - /image-tools/metadata/
    - /image-tools/metadata/remove-exif
  - /image-tools/responsive/
    - /image-tools/responsive/generate-srcset
- /docs/ (guides & how‑tos)
  - /docs/best-practices/image-optimization-for-seo
  - /docs/format-guides/webp-vs-avif
- /blog/ (long-form content & topical authority)
- /pricing/ (future)
- /about/
- /privacy/

Page type recommendations
- Tool pages (transactional): Minimal learning, direct CTA to open tool UI embedded on the same page. Schema: WebPage + SoftwareApplication (if embedding JS). Include clear title, meta, H1 matching intent.
- Guide pages (informational): Longer form, internal links to tool pages, how-to steps, examples. Schema: Article + FAQ schema where applicable.
- Cluster hubs: /image-tools/ acts as a pillar with links to all conversion/compression/resize pages (improves internal linking & authority).

SEO & UX requirements per page
- Fast LCP (preload hero images, critical CSS) — target <2.5s LCP.  
- Schema: Use FAQ + HowTo for guides; SoftwareApplication/WebTool for tools where applicable.  
- Accessibility: keyboard focus, ARIA labels for upload controls, semantic HTML for tool UI.  
- Structured data for site search + breadcrumbList schema for programmatic pages.  
- Image sitemap: include sample optimized images and canonical references for tool landing pages.

Internal linking strategy
- All tool pages link back to /image-tools/ hub.  
- Guides link to specific tools in-context and include procedural CTAs (e.g., "Optimize this image now") to drive conversions.  
- Blog posts reference guides and tools; use topic cluster link patterns to reinforce authority.

Programmatic URL patterns (for scaling)
- /image-tools/<category>/<source>-to-<target>
  - e.g., /image-tools/convert/heic-to-webp
- /image-tools/<category>/<format>  (for format-level pages)
  - e.g., /image-tools/compress/png

Go / No‑Go
GO — IA supports both SEO programmatic scaling and a usable product structure that feeds the workflow; it balances tool landing pages and pillar content required for topical authority.
