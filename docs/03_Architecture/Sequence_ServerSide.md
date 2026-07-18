# Sequence: Server-side Processing Flow

1. User selects file and clicks "Optimize".
2. Frontend uploads file to presigned URL (Object Store) or sends multipart to API.
3. API validates file and creates job record (Redis queue entry).
4. API returns job id; frontend polls job status.
5. Worker picks job from Redis and downloads the file from Object Store.
6. Worker runs pipeline (convert, compress, resize, crop, strip metadata) using sharp.
7. Worker writes optimized assets to Object Store and updates job status.
8. API retrieves result and provides signed preview/download URL.
9. Frontend displays preview and allows download.

Error handling
- Worker failure: mark job as failed; keep original object; surface error with retry option.
- Large file: if exceeds server-side limits, API returns guidance to use client-side or batch processing route.
