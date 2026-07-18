# POC Run Script (bash)

# Usage: bash run_benchmarks.sh
# Requires: node (for JS script), npm dependencies installed (sharp), GNU parallel (optional)

set -euo pipefail

SAMPLES_DIR="sample-images"
RESULTS_DIR="poc-results"
mkdir -p "$RESULTS_DIR"

# Example presets (adjust in scripts/benchmark/run_benchmarks.js)
echo "Running POC benchmarks (server-side sharp/libvips presets)..."
node scripts/benchmark/run_benchmarks.js --input "$SAMPLES_DIR" --output "$RESULTS_DIR/results.json"

echo "POC finished. Results saved to $RESULTS_DIR/results.json"
