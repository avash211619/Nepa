# Sequence: Batch Processing (Future)

Planned flow for batch (post-MVP):
1. User uploads a manifest (CSV) or ZIP of images.
2. API accepts manifest and returns job id for batch.
3. Batch orchestration creates sub-jobs for each image and pushes to queue.
4. Workers process images in parallel respecting rate limits and quotas.
5. Aggregator composes results into a ZIP and stores it in Object Store; sends notification or webhook on completion.
6. User downloads ZIP or individual files.

Notes
- Batch processing will include cost controls, quotas, and optional persistent storage.
