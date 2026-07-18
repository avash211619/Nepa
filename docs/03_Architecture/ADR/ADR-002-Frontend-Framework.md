# ADR-002 — Frontend Framework: Next.js + React + TypeScript

Status: Accepted

Decision
Adopt Next.js (latest stable) with React and TypeScript for the frontend.

Rationale
- SSR/SSG capabilities support SEO-critical landing pages.
- App Router and Server Components improve rendering performance and developer ergonomics.
- Large ecosystem (Vercel), TypeScript support, and image optimization utilities.

Alternatives Considered
- Nuxt (Vue): good for SSR but smaller ecosystem in our stack.
- SvelteKit: promising but smaller ecosystem and less developer familiarity.

Consequences
- Pages and tool UI implemented in the same codebase for fast iteration.
- Deployment recommended to Vercel for frontend, with API routes handled in the same repo.
