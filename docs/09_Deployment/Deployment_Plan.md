Deployment Plan

Environments
- staging: Vercel preview deployments + worker images in staging Cloud Run
- production: Vercel main deployment + production workers

Steps
1. PR -> CI run (lint/test)
2. Merge -> deploy frontend to Vercel (automatic)
3. Build worker image -> push to registry -> deploy to Cloud Run (or Fargate)
4. Run smoke tests to validate end-to-end flow

Rollback
- Keep previous worker image in registry; deploy previous tag in case of failure

IAM & Secrets
- Store secrets in GitHub Secrets / cloud secrets manager
- Least-privilege service accounts for object store access
