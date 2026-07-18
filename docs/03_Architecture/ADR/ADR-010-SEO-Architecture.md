# ADR-010 — SEO Architecture (URL Patterns & IA)

Status: Accepted

Decision
Adopt a hierarchical SEO-friendly architecture under `/image-tools/` with categories and programmatic page patterns for scale.

Rationale
- Topic clusters improve topical authority and internal linking.
- Programmatic patterns make it straightforward to generate hundreds of landing pages with clear canonicalization.

Consequences
- Implement server-rendered pages for tool landing pages; ensure schema markup (FAQ, HowTo, SoftwareApplication) is present.
- Create a sitemap generator for programmatic pages and sample optimized images.
