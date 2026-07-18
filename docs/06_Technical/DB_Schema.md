Database Schema (MVP minimal)

Tables (initial)
1) jobs
- id (uuid, PK)
- status (enum: queued, processing, success, failed)
- original_key (string)
- result_key (string)
- preset (string)
- created_at, updated_at

2) presets (future)
- id
- name
- json_config

Notes
- For MVP we can keep job state in Redis; jobs table can be added when persistence/history required.
- Telemetry and analytics handled by PostHog/GA4 initially.
