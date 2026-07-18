POC Plan & Instructions

Objective
- Benchmark server-side image engine (sharp/libvips) across representative images and transforms.
- Produce CSV/JSON results with PSNR/SSIM and sizes for candidate presets.

Files in this folder
- run_benchmarks.sh  — convenience wrapper to run the Node benchmark script
- scripts/benchmark/run_benchmarks.js  — (commit placeholder) the Node script that iterates images and calls sharp transforms
- sample-images/ — drop representative images here before running
- poc-results/ — output directory for JSON/CSV results

How to run
1. Install dependencies: npm i sharp pngjs ssim.js yargs
2. Add sample images to docs/04_Implementation/POC/sample-images/
3. Run: bash docs/04_Implementation/POC/run_benchmarks.sh
4. Inspect docs/04_Implementation/POC/poc-results/results.json

Notes
- The repo includes a placeholder Node benchmark runner; update transforms/presets as needed.
- If you want me to run the POC and commit results, confirm and I will run the script in my environment and push results to the branch.
