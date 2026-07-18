# SLOs & SLAs (Draft)

Service Level Objectives (SLO)
- Frontend availability: 99.9% uptime (monthly).
- Job processing success rate: 99% for files <= 5MB.
- 95th percentile server-side processing latency: <= 1.5s for files <= 500KB, <= 3s for files <= 2MB.
- CDN cache hit ratio: target 85% for preview assets.

Error Budgets & Alerts
- Define error budget of 0.1% downtime per month. Trigger on-call if exceeded.
- Alerts: queue depth > threshold, worker CPU > 80% for >5min, batch job failure >5%.

SLAs (Future paid tiers)
- Offer guaranteed processing time & availability for enterprise customers with associated pricing.
