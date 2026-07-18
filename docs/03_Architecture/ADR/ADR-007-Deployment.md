# ADR-007 — Deployment: Vercel (Frontend) + Docker Workers (Processing)

Status: Accepted

Decision
Deploy frontend and SSR pages to Vercel. Deploy image-processing workers as Docker containers (Cloud Run, Fargate, or a small Kubernetes cluster) depending on cost and scale.

Rationale
- Vercel provides best-in-class SSR performance and developer experience for Next.js.
- Containerized workers allow controlled CPU/RAM resources and autoscaling to handle bursts.

Consequences
- CI/CD: GitHub Actions to build, test, and deploy frontend (Vercel integration) and to build/push worker images to a container registry.
- Initially use Cloud Run / Fargate for managed autoscaling without full k8s complexity; migrate to k8s if required.
