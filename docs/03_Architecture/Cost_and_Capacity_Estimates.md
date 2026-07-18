# Cost & Capacity Estimates (Baseline)

Assumptions (monthly)
- 100,000 optimized images/month
- Average input size: 500KB
- Average CPU time per image: 100ms (using libvips on 1 CPU) — conservative

Worker capacity
- A single 1 vCPU Cloud Run instance can process ~8–10 images/second (conservative estimate under libvips). Actual throughput depends on image sizes and transforms.

Estimated compute
- 100k images * 0.1s = 10,000s CPU ≈ 2.8 CPU-hours/day ≈ ~84 CPU-hours/month
- With headroom and concurrency, start with 2–4 worker instances and autoscale.

Storage & Bandwidth
- Storage (temp): 100k * (orig + optimized avg 150KB) ≈ 25GB/month (with lifecycle 24h, actual storage smaller)
- Bandwidth: downloads = 100k * 150KB ≈ 15GB/month outgoing (plus CDN overhead)

Cost rough estimate (cloud provider dependent)
- Workers (Cloud Run): low tens to hundreds USD/month for baseline
- Object store (R2): low $/month for 25GB and requests
- CDN: modest unless global heavy downloads
- Redis/DB: small managed instance for MVP

Note: these are rough estimates and must be validated with real benchmarks. The POC plan will provide more accurate per-image CPU/time cost.
