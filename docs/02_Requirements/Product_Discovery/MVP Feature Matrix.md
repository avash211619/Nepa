MVP Feature Matrix — Nepa (Project Nebula)

Purpose
Define exactly what ships in v1.0 (MVP) and what is deferred. This matrix maps features to personas, priority, acceptance criteria, and whether the feature is visible on the initial public landing pages.

Legend
- P: Persona (Student, Blogger, Ecom, Dev, Designer)
- Priority: Must / Should / Could / Won't
- Visible: Will the feature receive its own SEO landing page at launch? (Yes/No)

Matrix (selected rows)
Feature | P | Priority | Acceptance Criteria | Visible
Upload (single) | All | Must | Accept JPG, PNG, HEIC, WebP, AVIF; upload < 30s for 1MB | Yes
Drag & Drop | All | Must | Drag & drop works on desktop & mobile (fallback browse) | Yes
Clipboard paste | Student, Blogger | Should | Paste from clipboard imports as file | No
Format Detection | All | Must | Detect width/height/format/transparency/metadata on upload | No
Recommend Best Format | Blogger, Dev | Must | UI suggests WebP/AVIF/JPEG based on use-case & explains trade-offs | Yes
Convert | All | Must | Conversion preserves transparency when applicable | Yes
Compress (lossy/lossless) | All | Must | Quality slider updates preview & estimated size | Yes
Resize (px/%/presets) | Ecom, Blogger | Must | Resize maintains aspect ratio; presets for social/marketplaces | Yes
Crop (presets) | Designer, Ecom | Should | Common ratios (1:1, 16:9, passport) | No
Metadata removal | Privacy-conscious | Should | Default strip metadata (opt-out to preserve) | Yes
Preview & Comparison slider | All | Must | Visual diff between original & optimized with file-size delta | Yes
Download (single) | All | Must | Download button provides converted/optimized file | Yes
Batch processing | Ecom, Dev | Could | Upload multiple files; queue + processing (deferred) | No
Serverless / Client processing option | Privacy | Should | Single-image client-side processing via WASM | No (feature UI present) 
Responsive variants / srcset generator | Dev, Blogger | Could | Generate several sizes & HTML snippet | No
API & SDK | Dev, Ecom | Won't (MVP) | Deferred to post‑MVP | No
User accounts & history | All | Won't (MVP) | Deferred | No

MVP Acceptance Criteria highlights
- Primary workflow (upload → recommend → convert/compress/resize → preview → download) completes in <30s for typical 1MB images.
- Preview shows accurate file-size and resolution savings.
- Privacy: default metadata removal and clear policy; client-side processing possible for single images.

Go / No‑Go
GO — MVP features are focused on the highest-impact JTBD and map directly to top SEO landing pages; deferred items are explicitly listed to avoid scope creep.
